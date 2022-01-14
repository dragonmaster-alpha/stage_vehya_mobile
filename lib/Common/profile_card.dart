import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:flutter/material.dart';


class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({Key? key, required this.jobName,
    required this.clientName,
    required this.tags, required this.cost, required this.imageUrl}) : super(key: key);

  final String jobName;
  final String clientName;
  final List<String> tags;
  final String cost;
  final String imageUrl;



  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.lightGrey,
      elevation: 0.0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Dimensions.PROFILE_CARD_RADIUS),
              bottomRight: Radius.circular(Dimensions.PROFILE_CARD_RADIUS)
          )
      ),
      child: Container(
        height: 273,
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularImage(imageLocation: imageUrl,
                height: 70, width: 70,),
              const SizedBox(height: 20),
               Name(jobName: jobName, clientName: clientName),
              const SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3,



                    ),
                    shrinkWrap: true,
                    itemCount: tags.length ,
                    itemBuilder: (context, index){
                      return Chip(
                        label: Text(tags[index]),
                        backgroundColor: ColorConstants.yellow,
                      );
                    }

                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
