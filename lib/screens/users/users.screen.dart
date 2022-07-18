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
    final User user = User.users[0];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
                child: Stack(
                  children: [
                    //Imagen de usuario
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
                    //Botones
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.name}, ${user.age}',
                      style: Theme.of(context).textTheme.headline5, 
                    ),
                    Text(
                      '${user.bio}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'about',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${user.interest}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Interests',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${User.users[0].atributes[0]}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
