import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tiger_order/models/menu.dart';
import 'package:tiger_order/models/menu_group.dart';
import 'package:tiger_order/services/state/menu_group_state.dart';
import 'package:tiger_order/services/state/menu_state.dart';
import 'package:tiger_order/util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        leading: const Hero(
            tag: 'logo',
            child: Image(image: AssetImage('assets/images/logo.png'))),
        title: const Text('TigerOrder'),
      ),
      backgroundColor: Colors.orange[100],
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(
          () => Column(
            children: [
              CarouselSlider(
                items: buildGroupMenu(),
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    print("그룹 변경됨. ${MenuState.to.menu.length}");
                    MenuGroupState.to.setSelected(index + 1);
                    MenuState.to.changeSelectedMenu(index + 1);
                  },
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: buildMenuCards(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildGroupMenu() {
    return MenuGroupState.to.menuGroup
        .map(
          (e) => Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.hardEdge,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  "assets/images/${e.imageUrl.split("/").reversed.first}",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  e.name.first.value,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        )
        .toList();
  }

  List<Widget> buildMenuCards() {
    print("들어옴..");
    MenuState.to.selectedMenu.forEach((element) {
      print(element.name.first.value);
    });
    return MenuState.to.selectedMenu.map((e) => makeCard(e)).toList();
  }

  Widget makeCard(Menu menu) {
    print(menu);
    return Card(
      child: ListTile(
        leading: Image.asset(
          "assets/images/${menu.imageUrls.first.split("/").reversed.first}",
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(menu.name.first.value),
        trailing: Text(Util.formatNumber(menu.price)),
        onTap: () {
          //
        },
      ),
    );
  }
}
