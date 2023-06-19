import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/not_found_page.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/bank_card.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investor.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/investment/investment_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/proposal/proposal_table.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class CreateInvestmentMutationWidget extends HookWidget {
  const CreateInvestmentMutationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final getProposal = useQuery$GetAllProposalQuery(
      Options$Query$GetAllProposalQuery(
        variables: Variables$Query$GetAllProposalQuery(),
      ),
    );

    final listProposal = getProposal.result.parsedData?.proposal;

    return ProposalTable(
      listProposal: listProposal ?? [],
      updateList: () async {
        await getProposal.refetch();
      },
    ) // Display the CSMessageTable widget
        ;
  }
}

class CreateProposalInvestmentPage extends HookWidget {
  const CreateProposalInvestmentPage({Key? key, required this.proposalId})
      : super(key: key);
  final int proposalId;
  @override
  Widget build(BuildContext context) {
    final appAuthState = Provider.of<AppAuthState>(context);
    final refetchCountInvestors = useState(0);
    final refetchCountBankCards = useState(0);
    if (!isSignedInAppAuthState(appAuthState)) {
      back(context);
      return const Spinner();
    }
    final user = appAuthState.auth.currentUser;
    if (user == null) {
      throw Exception("user is null in create investment page");
    }

    final proposalGet = useQuery$GetByPkProposalQuery(
        Options$Query$GetByPkProposalQuery(
            variables:
                Variables$Query$GetByPkProposalQuery(proposal_id: proposalId)));
    final bankCardsGet = useQuery$GetAllBankCardQuery(
        Options$Query$GetAllBankCardQuery(
            variables: Variables$Query$GetAllBankCardQuery()));
    final investorsGet = useQuery$GetUserInvestorQuery(
      Options$Query$GetUserInvestorQuery(
        variables: Variables$Query$GetUserInvestorQuery(
          user_id: user.id,
        ),
        onError: (error) {
          Logger.talker.error(error);
        },
      ),
    );
    final isLoading = proposalGet.result.isLoading &&
        bankCardsGet.result.isLoading &&
        investorsGet.result.isLoading;
    final isConcrete = proposalGet.result.isConcrete &&
        bankCardsGet.result.isConcrete &&
        investorsGet.result.isConcrete;
    final hasException = proposalGet.result.hasException ||
        bankCardsGet.result.hasException ||
        investorsGet.result.hasException;

    if (isLoading) {
      return const Spinner();
    }
    if (isConcrete && !hasException) {
      final proposal = proposalGet.result.parsedData?.proposal_by_pk;
      if (proposal == null) {
        if (proposalGet.result.hasException) {
          throw proposalGet.result.exception ??
              Exception('proposalGet has exception in create investment page');
        } else {
          throw Exception("proposal is null in create invesment page");
        }
      }
      final bankCards = bankCardsGet.result.parsedData?.bank_card;
      if (bankCards == null) {
        if (bankCardsGet.result.hasException) {
          throw bankCardsGet.result.exception ??
              Exception('bankCardsGet has exception in create investment page');
        } else {
          throw Exception("bankCards is null in create invesment page");
        }
      }
      if (bankCards.isEmpty) {
        if (refetchCountBankCards.value > 5) {
          throw Exception("investors is empty in create invesment page");
        }
        bankCardsGet.refetch();
        refetchCountBankCards.value += 1;
      }
      final investors = investorsGet.result.parsedData?.investor;
      if (investors == null) {
        if (investorsGet.result.hasException) {
          throw investorsGet.result.exception ??
              Exception('investorsGet has exception in create investment page');
        } else {
          throw Exception("investors is null in create invesment page");
        }
      }
      if (investors.isEmpty) {
        if (refetchCountInvestors.value > 5) {
          throw Exception("investors is empty in create invesment page");
        }
        investorsGet.refetch();
        refetchCountInvestors.value += 1;
      }

      return AppHeader(
        title: "Invest",
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: InvestmentForm(
            investor: investors.first,
            proposal: proposal,
            bankCards: bankCards,
            doneCallback: () {
              back(context);
            },
          ),
        ),
      );
    }

    return NotFoundPage(
      title: 'Failed to get proposal $proposalId',
      exception: proposalGet.result.exception,
    );
  }
}
