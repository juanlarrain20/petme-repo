import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petme_v_0_0_1/blocs/swipe/swipe_bloc.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class MeetMeScreen extends StatelessWidget {
  const MeetMeScreen({Key? key}) : super(key: key);
  static const String routeName = '/meetme';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MeetMeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      context.read<SwipeBloc>()
                        ..add(SwipeLeftEvent(user: state.users[0]));
                      print('Swiped left');
                    } else {
                      context.read<SwipeBloc>()
                        ..add(SwipeRightEvent(user: state.users[0]));
                      print('Swiped Right');
                    }
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 7.0,
                    horizontal: 60.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<SwipeBloc>()
                          ..add(SwipeLeftEvent(user: state.users[0]));
                        print('Swiped left');
                      },
                      child: ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 25,
                        color: Colors.lightGreen,
                        icon: Icons.clear_rounded,
                      ),
                    ),
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 30,
                      color: Colors.lightGreen,
                      icon: Icons.star,
                    ),
                    
                    InkWell(
                      onTap: () {
                        context.read<SwipeBloc>()
                          ..add(SwipeRightEvent(user: state.users[0]));
                        print('Swiped right');
                      },
                      child: ChoiceButton(
                        width: 75,
                        height: 75,
                        size: 25,
                        color: Colors.redAccent,
                        icon: Icons.favorite,
                      ),
                    ),
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 30,
                      color: Colors.lightGreen,
                      icon: Icons.segment_rounded,
                    ),
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 30,
                      color: Colors.lightGreen,
                      icon: Icons.watch_later,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Text('Something Went Wrong');
          }
          return Column(
            children: [],
          );
        },
      ),
    );
  }
}
