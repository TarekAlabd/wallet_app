import 'package:flutter/material.dart';
import 'package:walletapp/data.dart';
import 'package:walletapp/widgets/card_section.dart';
import 'package:walletapp/widgets/expenses_section.dart';
import 'package:walletapp/widgets/wallet_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 6),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: Container(
              child: CardSection(),
            ),
          ),
          Expanded(
            child: Container(
              child: ExpensesSection(),
            ),
          ),
        ],
      ),
    );
  }
}
