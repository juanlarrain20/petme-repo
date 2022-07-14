import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'PETME',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.message, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.person, color: Colors.black),
          onPressed: () {},
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
  }