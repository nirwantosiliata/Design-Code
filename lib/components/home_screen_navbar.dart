import 'package:desain_code_app/components/searchfield_widget.dart';
import 'package:desain_code_app/components/sidebar_button.dart';
import 'package:desain_code_app/constants.dart';
import 'package:desain_code_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenNavBar extends StatelessWidget {
  final Function triggerAnimation;
  const HomeScreenNavBar({super.key, required this.triggerAnimation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          const SearchFieldWidget(),
          const Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(
            width: 16,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              );
            },
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('asset/images/wanto.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
