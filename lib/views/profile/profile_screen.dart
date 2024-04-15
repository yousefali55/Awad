import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:awadproject/spacing/spacing.dart';
import 'package:awadproject/theming/colors_manager.dart';
import 'package:awadproject/views/profile/widgets/row_with_icon_and_text_category.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<String> svgs = [
    'assets/svgs/personal.svg',
    'assets/svgs/about.svg',
    'assets/svgs/favorites.svg',
    'assets/svgs/about.svg',
    'assets/svgs/contact.svg',
    'assets/svgs/settings.svg',
    'assets/svgs/logout.svg'
  ];
  final List<String> categoryName = [
    'Personal details and Adresses',
    ' About Us',
    'Favourites',
    'Help',
    'Contact',
    'Settings',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFF9EB),
        body: Padding(
          padding: EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svgs/narrow_back.svg'),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorsManager.brown,
                      ),
                      child: Transform.scale(
                        scale: 0.3,
                        child: SvgPicture.asset(
                          'assets/svgs/x.svg',
                        
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 137,
                width: 137,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.png'),
                  radius: 364,
                ),
              ),
              heightSpace(20),
              Text(
                'User2020',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.brown,
                ),
              ),
              heightSpace(10),
              Text(
                'user2020.000@gmail.com',
                style: GoogleFonts.montserrat(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: ColorsManager.brown,
                ),
              ),
              const Divider(
                thickness: 1,
                color: ColorsManager.offWhite,
              ),
              heightSpace(15),
              Expanded(
                child: ListView.builder(
                  itemCount: svgs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RowWithIconAndCategoryText(
                        svg: svgs[index], categoryName: categoryName[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
