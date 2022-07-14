import 'package:flutter/material.dart';
import 'package:petme_v_0_0_1/models/models.dart';

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
        body: Stack(
          children: [
           SizedBox(
            height: MediaQuery.of(context).size.height / 2,
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
          ],
        ),
      ),
    );
  }
}
