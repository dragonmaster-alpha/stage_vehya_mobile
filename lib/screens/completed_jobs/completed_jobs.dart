import 'package:enya/Common/card_widget.dart';
import 'package:enya/Common/completed_job_card.dart';
import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/string_constants.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:enya/modals/completed_jobs.dart';
import 'package:flutter/material.dart';

class CompletedJobScreen extends StatefulWidget {
  const CompletedJobScreen({Key? key}) : super(key: key);

  @override
  _CompletedJobScreenState createState() => _CompletedJobScreenState();
}

class _CompletedJobScreenState extends State<CompletedJobScreen> {

  final List<CompletedJobs> _activeJobs = [

  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "2,000"),
  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "1,500"),
  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "2,000"),
  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "1,500"),
  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "2,000"),
  CompletedJobs(ImageConstant.profileImageOne, "Client name", "Job Name", "1,500"),

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIDES),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageConstant.appLogo,
                    height: 34,
                    width: 118,
                  ),
                  const NameWithImage(clientName: "Austin Bethel", imageUrl: ImageConstant.profileImageOne)
                ],
              ),

              const SizedBox(height: 20),


              TextField(
                decoration: InputDecoration(
                    hintText: "Search a job or position ",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0)
                    )
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Completed Jobs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),
                  ),
                  Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
          const SizedBox(height: 10,),
              Expanded(
                child: GridView.builder(
                  itemCount: _activeJobs.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                  ), itemBuilder: (BuildContext context, int index) {
                    return CompletedJobsCard(
                        jobName: _activeJobs[index].jobName,
                        clientName: _activeJobs[index].clientName,
                        cost: "${StringConstant.currency} ${_activeJobs[index].cost}",
                      cardBackgroundColor: _cardBackgroundColor(index),);
                },
                ),
              )

            ],
          ),
        )
    );
  }

  Color _cardBackgroundColor(int index){
    if(index % 2 == 0){
      return ColorConstants.lightGrey;
    }else {
      return ColorConstants.yellow;
    }
  }
}
