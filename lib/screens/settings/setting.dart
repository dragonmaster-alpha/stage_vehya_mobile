import 'package:enya/Common/card_widget.dart';
import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/string_constants.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<String> _tags = [
    "Commercial","Address","Date","Online Assessment Completed", "${StringConstant.currency}3,000"
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
            const SizedBox(height: 10),


            Expanded(
              child:  Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,

                    itemBuilder: (context, index) {
                      return  CustomCard(
                        imageUrl: ImageConstant.profileImageOne,
                        clientName: 'Job Name',
                        jobName: 'Client Name',
                        tags: _tags,
                      )  ;
                    },


                  )

              )
            )



          ],
          ),
        )
    );
  }
}
