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
        title: const Text('호랑이 피자'),
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
                    MenuGroupState.to.setSelected(index + 1);
                    MenuState.to.changeSelectedMenu(index + 1);
                  },
                ),
              ),
              SizedBox(
                height: 10,
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
    return MenuState.to.selectedMenu.map((e) => makeCard(e)).toList();
  }

  Widget makeCard(Menu menu) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // 모서리 둥그렇게
        color: Colors.orange[300], // 내부 색상 노란색
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                "assets/images/${menu.imageUrls.first.split("/").reversed.first}", // 음식 이미지 경로
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        menu.name.first.value,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(Util.formatNumber(menu.price)),
                      SizedBox(width: 5)
                    ],
                  ),
                  Text(
                    menu.shortDesc,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(color: Colors.black87, fontSize: 13),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

/*
ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/${menu.imageUrls.first.split("/").reversed.first}",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(menu.name.first.value),
        subtitle: Column(
          children: [
            Text(
              menu.shortDesc,
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        trailing: Text(Util.formatNumber(menu.price)),
        onTap: () {
          //
        },
      ),
      */