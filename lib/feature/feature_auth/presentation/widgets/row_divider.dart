import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowDivider extends StatelessWidget {
  const RowDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [divide(), const Text('   OR   '), divide()],
      ),
    );
  }

  divide() {
    return const Expanded(
        child: Divider(
      thickness: 1.5,
    ));
  }
}
