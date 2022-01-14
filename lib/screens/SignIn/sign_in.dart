import 'package:enya/constant/color_constants.dart';
import 'package:enya/constant/image_assets.dart';
import 'package:enya/constant/widget_constants.dart';
import 'package:enya/screens/dashboard/dashboard.dart';
import "package:flutter/material.dart";


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children:  [
        const Spacer(),
          Column(
            children: [
              Image.asset(ImageConstant.appLogo),

              const SizedBox(height: 20),

              const Text("Email"),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0)
                      )
                  ),

                ),
              ),

              const SizedBox(height: 20),
              const Text("Password"),

              const SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0)
                      )
                  ),

                ),
              ),

              const SizedBox(height: 14),

              MaterialButton(
                height: 55,
                minWidth: 184,
                color: ColorConstants.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)
                ),
                onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) => const DashBoard()));

                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20

                  ),
                ),

              ),
            ],
          ),
          const Spacer(),
          Column(
          mainAxisAlignment: MainAxisAlignment.center ,
            children:   [

              const SocialMediaHandle(),

              const SizedBox(height: 10),
             Image.asset(ImageConstant.allRightsReserve),
              const SizedBox(height: 10),
            ],

          )

        ],

      ),
    );
  }
}
