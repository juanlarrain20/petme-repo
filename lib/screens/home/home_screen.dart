import 'package:flutter/material.dart';
import 'package:petme_v_0_0_1/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          CarouselWidget(),
          Divider(),
          Center(
            child: Container(
              child: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, '/users'),),
            ),
          ),
        ],
      ),
    );
  }
}