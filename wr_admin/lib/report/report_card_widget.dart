import 'package:flutter/material.dart';
import 'package:wr_admin/report/report_card_model.dart';
import 'package:wr_admin/theme/app_theme.dart';

class ReportCardWidget extends StatelessWidget {
  final ReportCardModel data;
  const ReportCardWidget({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Icon(data.icon),
            Divider(),
            Text(data.mainText!),
            Text(data.description!),
            SizedBox(
              width: w,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: AppTheme.primaryCardBgColor,
                    backgroundColor: AppTheme.lightTheme.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Text(
                  "View Report",
                  style: TextStyle(
                    color: AppTheme.secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
