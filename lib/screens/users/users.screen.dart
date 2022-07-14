import 'package:flutter/material.dart';
import 'package:petme_v_0_0_1/models/models.dart';
import 'package:petme_v_0_0_1/widgets/widgets.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);
  static const String routeName = '/users';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => UsersScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(User.users[0].imageUrls[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ChoiceButton(
                  color: Colors.redAccent,
                  icon: Icons.clear_rounded,
                ),
                const ChoiceButton(
                  height: 80,
                  width: 80,
                  size: 30,
                  color: Colors.green,
                  icon: Icons.favorite,
                  
                ),
                const ChoiceButton(
                  color: Colors.black,
                  icon: Icons.access_time_filled,
                ),
              ],
            ),
          ),
        )
            ],
          ),
        ),
      ),
    );
  }
}
