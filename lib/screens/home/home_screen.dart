import 'package:enya/Common/card_widget.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/string_constants.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   final List<String> _tags = [
    "Commercial","Date","Address","Online Assessment Completed", "${StringConstant.currency}3,000"
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
                const SocialMediaHandle()
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Hello Austin",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24
                  ),
                ),

                NameWithImage(clientName: "Austin Bethel", imageUrl: ImageConstant.profileImageOne)
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
                  "Active Jobs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Expanded(
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


          ],
          ),
        )
    );
  }
}
