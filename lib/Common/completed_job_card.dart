import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/string_constants.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:flutter/material.dart';

class CompletedJobsCard extends StatelessWidget {
  const CompletedJobsCard({
    Key? key,
    required this.jobName,
    required this.clientName,
    required this.cost,
    required this.cardBackgroundColor}) : super(key: key);
  final String jobName;
  final String clientName;
  final String cost;
  final Color cardBackgroundColor;
  //final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardBackgroundColor,
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        height: 175,
        width: 155,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularImage(imageLocation: ImageConstant.profileImageOne,
                  height: 45, width: 45),
                  const SizedBox(height: 10),
                  Name(jobName: jobName, clientName: clientName),
                  const SizedBox(height: 20),
                   Text(
                      cost
                  )
            ],
          ),
        )
      ),
    );
  }
}
