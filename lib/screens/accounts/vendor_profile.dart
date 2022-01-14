import 'package:enya/Common/profile_card.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:flutter/material.dart';



class VendorProfile extends StatefulWidget {
   const VendorProfile({Key? key}) : super(key: key);

  @override
  State<VendorProfile> createState() => _VendorProfileState();
}

class _VendorProfileState extends State<VendorProfile> {



  final List<String> _tags = [
    "Email","Phone","Address"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:  [
          CustomProfileCard(
            jobName: 'Vendor Name',
            tags: _tags,
            cost: '',
            clientName: 'Company',
            imageUrl: ImageConstant.profileImageTwo,

          ),

          const SizedBox(height: 10,)










        ],
      ),
    );
  }
}
