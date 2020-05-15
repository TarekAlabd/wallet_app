import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/data.dart';
import 'package:walletapp/widgets/pie_chart.dart';

class ExpensesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Expenses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: pieColors[expenses.indexOf(e)],
                              ),
                              SizedBox(width: 5),
                              Text(
                                e['name'],
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
