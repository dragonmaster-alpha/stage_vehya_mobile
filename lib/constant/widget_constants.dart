import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/dimen_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:flutter/material.dart';

class SocialMediaHandle extends StatelessWidget {
  const SocialMediaHandle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Image.asset(
          ImageConstant.facebook,
          height: Dimensions.SOCIAL_MEDIA_IMAGE,
          width: Dimensions.SOCIAL_MEDIA_IMAGE),
        const SizedBox(width: 5),
        Image.asset(
            ImageConstant.twitter,
            height: Dimensions.SOCIAL_MEDIA_IMAGE,
            width: Dimensions.SOCIAL_MEDIA_IMAGE),
        const SizedBox(width: 5),
    Image.asset(
    ImageConstant.linkedin,
    height: Dimensions.SOCIAL_MEDIA_IMAGE,
    width: Dimensions.SOCIAL_MEDIA_IMAGE),
        const SizedBox(width: 5),
        Image.asset(
            ImageConstant.google,
            height: Dimensions.SOCIAL_MEDIA_IMAGE,
            width: Dimensions.SOCIAL_MEDIA_IMAGE)

      ],
    );
  }
}


class CircularImage extends StatelessWidget {
   CircularImage({Key? key,  required this.imageLocation,
     required this.height, required this.width}) : super(key: key);
  final String imageLocation;
  final double height ;
  final double width ;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.CIRCULAR_IMAGE_RADIUS),
      child: Image.asset(
          imageLocation,
        height: height,
        width: width
      ),
    );
  }
}

class Name extends StatelessWidget {
   const Name({Key? key, required this.jobName, required this.clientName}) : super(key: key);
  final String jobName;
  final String clientName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            jobName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),

        Text(
          clientName,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
          ),
        )

      ],
    );
  }
}


class NameWithImage extends StatelessWidget {
  const NameWithImage({Key? key,required this.clientName,required this.imageUrl}) : super(key: key);
  final String clientName;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
            clientName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
                fontSize: 12
          ),
        ),
        const SizedBox(width: 5),
        CircularImage(imageLocation: imageUrl, height: 43, width: 43,)
      ],
    );
  }
}



