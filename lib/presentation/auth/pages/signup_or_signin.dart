import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kayden_music/common/widgets/button/basic_app_button.dart';
import 'package:kayden_music/core/configs/assets/app_images.dart';
import 'package:kayden_music/core/configs/assets/app_vectors.dart';
import 'package:kayden_music/core/configs/theme/app_colors.dart';
import 'package:kayden_music/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.mango)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(
                      height: 55,
                    ),
                    const Text(
                      'Where words fail, music speaks.',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    const Text(
                      'Music expresses that which cannot be said and on which it is impossible to be silent.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.darkGrey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child:
                              BasicAppButton(onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context)=> const SignupPage()
                                  )
                                );
                              }, 
                              title: 'Register'
                            ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: (){}, 
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                            ),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
