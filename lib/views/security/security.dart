import 'package:awadproject/multible_widgets/two_buttons_in_two_screens.dart';
import 'package:awadproject/spacing/spacing.dart';
import 'package:awadproject/theming/colors_manager.dart';
import 'package:awadproject/views/help/help_view.dart';
import 'package:awadproject/views/security/widgets/card_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 137,
                      width: 137,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.png'),
                        radius: 364,
                      ),
                    ),
                    widthSpace(20),
                    Column(
                      children: [
                        Text(
                          'Security',
                          style: GoogleFonts.changa(
                            fontSize: 40,
                            color: ColorsManager.darkBrown,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        heightSpace(10),
                        Text(
                          'Change your security settings, \n set up secure authentication \n or delete your account.',
                          style: GoogleFonts.changa(
                            height: 2,
                            color: ColorsManager.navyBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                heightSpace(20),
                CardContainer(
                    maintext: 'Password',
                    desc:
                        'Change your password regularly to keep \n your account secure',
                    textButton: 'Change Password',
                    onPressed: () {
                      showAboutDialog(context: context, children: [
                        Center(
                          child: Text(
                            'Change password',
                            style: GoogleFonts.cairo(
                              color: ColorsManager.darkBrown,
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        heightSpace(20),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: const BorderSide(
                                    color: ColorsManager.darkBrown,
                                  ))),
                        )
                      ]);
                    }),
                heightSpace(8),
                CardContainer(
                    maintext: 'Active Sessions',
                    desc:
                        'Selecting ‘Sign out’ will sign you out from \n all devices except this one.\nThe process can take up to 10 minutes.',
                    textButton: 'Sign out',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HelpView()));
                    }),
                heightSpace(8),
                CardContainer(
                    maintext: 'Delete Account',
                    desc: 'Permanently delete your Egyptour.com \n account',
                    textButton: 'Delete Account',
                    onPressed: () {}),
                heightSpace(15),
                TwoButtonsInTwoScreens(
                  onPressedSaved: () {},
                  onPressedDiscared: () {},
                ),
                heightSpace(10),
                Container(
                    height: 100,
                    width: 200,
                    child: Image.asset(
                      'assets/images/tour.png',
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
