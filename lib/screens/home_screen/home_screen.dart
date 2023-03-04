// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/custom_widgets/add_custom_space.dart';
import 'package:instagram_clone/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Widget> navbarIcons = <Widget>[
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appbar
        appBar: AppBar(
          title: Row(children: [
            Image.asset("assets/instagram_logo.png", height: 28),
            IconButton(onPressed: () {}, icon: const Icon(Icons.expand_more))
          ]),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            const AddHorizontalSpace(width: 4),
            IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                    angle: 5.2, child: const Icon(Icons.send))),
            const AddHorizontalSpace(width: 4),
          ],
        ),
        body: Column(children: [
          // Story

          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // return Column(
                //   children: [
                //     ListTile(title: singleStory()),
                //   ],
                // );
                return singleStory();
              },
            ),
          ),
          //posts
          Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Expanded(child: post());
                  })),
          //Bottom navbar
          Row(
            children: [
              bottomNavbarIcon(Icons.home),
              bottomNavbarIcon(Icons.search),
              bottomNavbarIcon(Icons.add_box_rounded),
              bottomNavbarIcon(Icons.smart_display),
              bottomNavbarIcon(Icons.account_circle),
            ],
          )
        ]),
      ),
    );
  }

  Expanded bottomNavbarIcon(IconData iconData) {
    return Expanded(
      child: GestureDetector(
          onTap: () {},
          child: Icon(
            iconData,
            size: 34,
          )),
    );
  }

  Container customCircularAvavtar(double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: greyText, borderRadius: BorderRadius.circular(50)),
    );
  }

  //single story
  Row singleStory() {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [customCircularAvavtar(80, 80), Text("kambo")],
        ),
        AddHorizontalSpace(width: 8)
      ],
    );
  }

  //single post
  post() {
    return Column(
      children: [
        //top part
        Row(children: [
          customCircularAvavtar(48, 48),
          AddHorizontalSpace(width: 12),
          Text("kambo"),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ]),
        // Expanded(child: Container()),
        // posts
        AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(),
        ),

        // interactables
        Row(
          //like, comment, message icons
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: Icon(Icons.maps_ugc)),
                IconButton(
                    onPressed: () {},
                    icon:
                        Transform.rotate(angle: 5.2, child: Icon(Icons.send))),
              ],
            ),
            Spacer(),
            Icon(Icons.more_horiz),
            Spacer(
              flex: 3,
            ),
            Icon(Icons.bookmark)
          ],
        ),
        //like numbers
        Row(
          children: [
            customCircularAvavtar(24, 24),
            Text("liked by hero and 44455 others")
          ],
        ),
        //post description
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //use rich text later
            Text("kambo helloaaaaa")
          ],
        )
      ],
    );
  }
}
