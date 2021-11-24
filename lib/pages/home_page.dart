import 'package:flutter/material.dart';
import 'package:xplore/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Profile Picture',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/image-item-1.png',
                  width: 140,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Anne Margaritha',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'UX Designer',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/image-item-2.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/image-item-3.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/image-item-4.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/image-item-5.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/image-item-6.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/image-item-7.png',
                      width: 80,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 290,
                            padding: EdgeInsets.symmetric(vertical: 50),
                            color: kWhiteColor,
                            child: Column(
                              children: [
                                Text(
                                  'Update Photo',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'You are only able to change\nthe picture profile once',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width: 224,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: kOrangeColor,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Continue',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: medium,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: 224,
                    height: 55,
                    margin: EdgeInsets.symmetric(vertical: 70),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kWhiteColor,
                    ),
                    child: Center(
                      child: Text(
                        'Update Profile',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
