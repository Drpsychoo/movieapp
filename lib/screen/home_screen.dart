import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/style/theme.dart' as Style;
import 'package:moviesapp/widget/now_playing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Style.Colors.maincolor,
        centerTitle: true,
        leading: const Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: const Text("Movies"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                EvaIcons.searchOutline,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: const [
          Text(
            "now playing",
            style: TextStyle(color: Colors.white),
          ),
          NowPlaying(),
        ],
      ),
    );
  }
}
