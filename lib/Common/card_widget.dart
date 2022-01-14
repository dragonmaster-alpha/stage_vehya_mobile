import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String imageUrl ;
  final String jobName ;
  final String clientName ;
  final List<String> tags;

  const CustomCard({Key? key, required this.imageUrl,
    required this.jobName, required this.clientName, required this.tags}) : super(key: key);


  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      color: ColorConstants.lightGrey,
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.PROFILE_CARD_RADIUS)
      ),
      child: Container(
        height:158 ,
        width: 327,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              Row(
                children: [
                  CircularImage(imageLocation: widget.imageUrl, height: 45, width: 58.86),
                  Name(jobName: widget.jobName, clientName: widget.clientName)
                ],
              ),

              const SizedBox(height: 5,),

              Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 3,

                    ),
                    shrinkWrap: true,
                    itemCount: widget.tags.length ,
                    itemBuilder: (context, index){
                      return Chip(
                          label: Text(widget.tags[index]),
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
