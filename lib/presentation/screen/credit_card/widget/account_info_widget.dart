import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean/common/app_font.dart';
import 'package:flutter_bloc_clean/common/enum.dart';
import 'package:flutter_bloc_clean/utils/date_format.dart';
import 'package:flutter_bloc_clean/utils/number_format.dart';

class AccountInfoWidget extends StatelessWidget {

  final double available;
  final double creditLimit;
  final double minPay;
  final double fullPay;
  final DateTime statementDate;
  final DateTime dueDate;

  const AccountInfoWidget({
    Key? key,
    required this.available,
    required this.creditLimit,
    required this.minPay,
    required this.fullPay,
    required this.statementDate,
    required this.dueDate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAvailableAndLimit("AVAILABLE CREDIT", NumberFormatExtension.formatNumber(available), AccountInfoAlignment.front),
              _buildAvailableAndLimit("CREDIT LIMIT", NumberFormatExtension.formatNumber(creditLimit), AccountInfoAlignment.back)
            ],
          ),

          const SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAvailableAndLimit("MIN PAY", NumberFormatExtension.formatNumber(minPay), AccountInfoAlignment.front),
              _buildAvailableAndLimit("FULL PAY", NumberFormatExtension.formatNumber(fullPay), AccountInfoAlignment.back)
            ],
          ),
          const SizedBox(height: 8,),
          const Divider(height: 1,),
          const SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAvailableAndLimit("STATEMENT DATE", DateFormatExtension.dateTimeToString(date: statementDate), AccountInfoAlignment.front),
              _buildAvailableAndLimit("DUE DATE", DateFormatExtension.dateTimeToString(date: dueDate), AccountInfoAlignment.back)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvailableAndLimit(String title, String value, AccountInfoAlignment alignment) => Column(
    crossAxisAlignment: (alignment == AccountInfoAlignment.front) ? CrossAxisAlignment.start : CrossAxisAlignment.end,
    children: [
      Text(
        title,
        style: AppFont.text12W500,
      ),
      const SizedBox(height: 8,),
      Text(
        value,
        style: AppFont.text18w700,
      )
    ],
  );
}
