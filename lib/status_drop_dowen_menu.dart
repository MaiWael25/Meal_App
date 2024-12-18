import 'package:flutter/material.dart';

class StatusDropDowenMenu extends StatelessWidget {
  const StatusDropDowenMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: DropdownMenu(
        width: double.infinity,
        label: Text("Status"),
        hintText: "Single",
        dropdownMenuEntries: [
          DropdownMenuEntry(value: 1, label: "Single"),
          DropdownMenuEntry(value: 2, label: "Married"),
          DropdownMenuEntry(value: 3, label: "Divorced"),
        ],
      ),
    );
  }
}
