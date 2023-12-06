import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean/common/app_font.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/presentation/component/dash_line_widget.dart';
import 'package:flutter_bloc_clean/presentation/component/dropdown_widget.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/widget/billed_item_widget.dart';
import 'package:flutter_bloc_clean/utils/date_format.dart';

class BilledWidget extends StatefulWidget {
  final List<CreditCardBilledEntity> billedStatement;
  final DateTime? selectedDate;
  final Function(DateTime)? onChange;
  const BilledWidget({
    Key? key,
    required this.billedStatement,
    this.selectedDate,
    this.onChange
  }) : super(key: key);

  @override
  State<BilledWidget> createState() => _BilledWidgetState();
}

class _BilledWidgetState extends State<BilledWidget> {

  final currentDate = DateFormatExtension.dateTimeToString(date: DateTime.now(), format: DateFormatExtension.MMM_yyyy);
  List<String> items = [];

  @override
  void initState() {
    super.initState();
    final currentDate = DateTime.now();
    final currentYear = currentDate.year;
    final currentMonth = currentDate.month;
    _insertDataDropdown(currentYear, currentMonth, 1);
  }

  void _insertDataDropdown(int currentYear, int currentMonth, int position) {
    if (position < 6) {
      int updateYear = currentMonth - 1 == 0 ? currentYear - 1 : currentYear;
      int updateMonth = currentMonth - 1 == 0 ? DateTime.december : currentMonth - 1;
      _insertDataDropdown(updateYear, updateMonth, position + 1);
    }
    final positionDate = DateTime(currentYear, currentMonth);
    final data = DateFormatExtension.dateTimeToString(date: positionDate, format: DateFormatExtension.MMM_yyyy);
    items.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildHeaderSelectStatementDate(),
          const SizedBox(height: 16,),
          DashLineWidget(height: 3, color: Colors.grey.shade300,),
          (widget.billedStatement.isNotEmpty)
              ? _buildStatementList()
              : const Center(child: Text("ไม่พบข้อมูล"),)
        ],
      ),
    );
  }

  Widget _buildHeaderSelectStatementDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'STATEMENT OF',
          style: AppFont.text16W500,
        ),
        if (widget.selectedDate != null)...[
          DropdownWidget(
            items: items,
            value: DateFormatExtension.dateTimeToString(date: widget.selectedDate!, format: DateFormatExtension.MMM_yyyy),
            onChange: (newValue) {
              if (newValue != null && widget.onChange != null) {
                final selected = DateFormatExtension.stringToDate(dateStr: newValue);
                widget.onChange!(selected);
              }
            },
          ),
        ]

      ],
    );
  }

  Widget _buildStatementList() {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.billedStatement.length,
        itemBuilder: (context, index) {
          final data = widget.billedStatement[index];
          return BilledItemWidget(
            description: data.description,
            statementDate: data.statementDate!,
            amount: data.amount
          );
        },
      )
    );
  }
}
