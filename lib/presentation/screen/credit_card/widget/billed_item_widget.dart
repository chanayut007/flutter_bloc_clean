import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean/common/app_font.dart';
import 'package:flutter_bloc_clean/utils/date_format.dart';
import 'package:flutter_bloc_clean/utils/number_format.dart';

class BilledItemWidget extends StatelessWidget {
  final String description;
  final DateTime statementDate;
  final double amount;
  const BilledItemWidget({Key? key, required this.description, required this.statementDate, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: AppFont.text16W500,
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    DateFormatExtension.dateTimeToString(date: statementDate, format: DateFormatExtension.dd_MMM),
                    style: AppFont.text16W500.copyWith(
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
              Text(
                "${NumberFormatExtension.formatNumber(amount)} THB",
                style: AppFont.text16W500,
              )
            ],
          ),
        ),
        const SizedBox(height: 8,),
        const Divider(height: 1,),
      ],
    );
  }
}
