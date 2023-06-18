import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CSMessageTable extends StatelessWidget {
  final List<dynamic>? listMessage;

  const CSMessageTable({Key? key, this.listMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMd(); // Date format for displaying dates

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(
                label: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Text(
                    'Messages',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const DataColumn(label: Text('Date Created')), // Column for "Date Created"
              const DataColumn(label: Text('Date Updated')), // Column for "Date Updated"
            ],
            rows: listMessage?.map<DataRow>((message) {
              return DataRow(
                cells: [
                  DataCell(
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(message.cs_message_content ?? ''),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        dateFormat.format(message.cs_message_date ?? DateTime.now()), // Display the formatted "Date Created"
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        dateFormat.format(message.updated_at ?? DateTime.now()), // Display the formatted "Date Updated"
                      ),
                    ),
                  ),
                ],
              );
            }).toList() ?? [],
          ),
        ),
      ),
    );
  }
}
