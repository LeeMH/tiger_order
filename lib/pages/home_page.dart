import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiger_order/services/state/menu_group_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Hero(
            tag: 'logo',
            child: Image(image: AssetImage('assets/images/logo.png'))),
        title: const Text('TigerOrder'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: buildGroupMenu(),
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildGroupMenu() {
    return MenuGroupState.to.menuGroup
        .map(
          (e) => Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    e.name.first.value,
                    style:
                        const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Image.network(
                  e.imageUrl,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        )
        .toList();
  }
}
