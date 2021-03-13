import 'package:flutter/material.dart';

class MyDatatable extends StatefulWidget {
  @override
  _MyDatatableState createState() => _MyDatatableState();
}

class _MyDatatableState extends State<MyDatatable> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Price',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
        DataColumn(
          label: Text(
            'Catrogry',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
                DataColumn(
          label: Text(
            'Seller',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
       DataColumn(
          label: Text(
            'Buyer',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
         DataColumn(
          label: Text(
            'Time',
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Air pods')),
            DataCell(Text('3.99')),
            DataCell(Text('Plus')),
           DataCell(Text('Hamouda')),
            DataCell(Text('John')),
            DataCell(Text('19:30')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('MacBook')),
            DataCell(Text('9power9999')),
            DataCell(Text('Computers')),
            DataCell(Text('Samir')),
            DataCell(Text('Togomori')),
            DataCell(Text('20:45')),

          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Chair')),
            DataCell(Text('19.99')),
            DataCell(Text('Stuff')),
            DataCell(Text('William')),
            DataCell(Text('Tchichala')),
            DataCell(Text('09:30')),
          ],
        ),
                DataRow(
          cells: <DataCell>[
            DataCell(Text('Air pods')),
            DataCell(Text('3.99')),
            DataCell(Text('Plus')),
           DataCell(Text('Hamouda')),
            DataCell(Text('John')),
            DataCell(Text('19:30')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('MacBook')),
            DataCell(Text('9power9999')),
            DataCell(Text('Computers')),
            DataCell(Text('Samir')),
            DataCell(Text('Togomori')),
            DataCell(Text('20:45')),

          ],
        )
      ],
    );
  }
}