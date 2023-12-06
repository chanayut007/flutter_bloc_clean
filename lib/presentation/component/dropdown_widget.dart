import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean/common/app_font.dart';

class DropdownWidget extends StatefulWidget {

  final List<String> items;
  final String value;
  final Function()? onClick;
  final Function(String?)? onChange;

  const DropdownWidget({Key? key, required this.items, required this.value, this.onChange, this.onClick}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          items: widget.items.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    value,
                    style: AppFont.text12W500,
                  ),
                )
            );
          }).toList(),
          onTap: widget.onClick,
          onChanged: widget.onChange,
          value: widget.value,
        ),
      ),
    );
  }
}
