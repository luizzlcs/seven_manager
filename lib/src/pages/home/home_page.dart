import 'package:flutter/material.dart';
import '../../core/theme/seven_manager_theme.dart';
import 'widget/avatar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
            color: SevenManagerTheme.whiteColor,
          ),
        ),
        backgroundColor: SevenManagerTheme.tealBlue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 30,
              color: SevenManagerTheme.whiteColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 30,
              color: SevenManagerTheme.whiteColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Olá, Rodrigo',
                    style: TextStyle(
                        color: SevenManagerTheme.whiteColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 110,
                )
              ],
            ),
            Center(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 715,
                      width: double.infinity,
                      decoration: const ShapeDecoration(
                        color: SevenManagerTheme.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                             CustomCircleAvatar(),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
