import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean/domain/entity/card/card_billed/card_billed_entity.dart';
import 'package:flutter_bloc_clean/presentation/screen/credit_card/widget/billed_item_widget.dart';

class UnBilledWidget extends StatelessWidget {
  final List<CreditCardBilledEntity> unBilledEntity;
  const UnBilledWidget({
    Key? key,
    required this.unBilledEntity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 32,),
          (unBilledEntity.isNotEmpty)
              ? _buildUnBilledStatementList()
              : const Center(child: Text("ไม่พบข้อมูล"),)
        ],
      ),
    );
  }

  Widget _buildUnBilledStatementList() {
    return Expanded(
      child: ListView.builder(
          itemCount: unBilledEntity.length,
          itemBuilder: (context, index) {
            final data = unBilledEntity[index];

            return BilledItemWidget(
              description: data.description,
              statementDate: data.statementDate!,
              amount: data.amount
            );
          }
      ),
    );
  }
}
