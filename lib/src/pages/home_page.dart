import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get auth information
    final auth = NhostAuthProvider.of(context)!;
    final userRoles = auth.currentUser?.roles; // Get the roles of the current user

    var route = "";
    var buttonText = "";

    if (userRoles != null) { // Check if userRoles is not null
      if ((auth.currentUser?.roles.contains('cs') ?? true)) {
        route = '/customer_message'; // Set the route to '/customer_message' if the user has the 'cs' role
        buttonText = 'Customer Messages'; // Set the button text to 'Customer Messages'
      } else if ((auth.currentUser?.roles.contains('user') ?? true)) {
        route = '/customer_service'; // Set the route to '/customer_service' if the user has the 'user' role
        buttonText = 'Customer Service'; // Set the button text to 'Customer Service'
      } else if ((auth.currentUser?.roles.contains('umkm') ?? true)) {
        route = '/submit_proposal'; // Set the route to '/submit_proposal' if the user has the 'user' role
        buttonText = 'Submit Proposal'; // Set the button text to 'Submit Proposal'
      } else if ((auth.currentUser?.roles.contains('investor') ?? true)) {
        route = '/view_proposal'; // Set the route to '/view_proposal' if the user has the 'user' role
        buttonText = 'View Proposal'; // Set the button text to 'View Proposam'
      }
    }

    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          const Text("Home Page"),
          if (userRoles != null)
            ElevatedButton(
              onPressed: () {
                goTo(context, route); // Navigate to the specified route when the button is pressed
              },
              child: Text(buttonText), // Display the button text
            ),
        ],
      ),
    );
  }
}
