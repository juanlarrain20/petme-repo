import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petme_v_0_0_1/blocs/swipe/swipe_bloc.dart';
import 'package:petme_v_0_0_1/config/app_router.dart';

import 'models/models.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              SwipeBloc()..add(LoadUsersEvent(users: User.users)),
        ),
      ],
      child: MaterialApp(
        title: 'PetMe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
