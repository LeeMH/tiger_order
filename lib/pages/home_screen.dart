import 'package:flutter/material.dart';
import 'package:tiger_order/config.dart';
import 'package:tiger_order/services/state/group_state.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Hero(
            tag: 'logo',
            child: Image(image: AssetImage('assets/images/logo.png'))),
        title: Text(
          '호랑이 피자',
          style: Config.whiteH1(bold: true),
        ),
        backgroundColor: Config.appBarColor,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          print(orientation);
          return orientation == Orientation.portrait
              ? _buildPortraitLayout()
              : _buildLandscapeLayout();
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return const Center(
      child: Text('Please use landscape mode'),
    );
  }

  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: _buildGroup(),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: _buildGroup(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildGroup() {
    return GroupState.to.groups
        .map((e) => Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text(
                  e.name.first.value,
                  style: Config.blackH1(bold: true),
                ),
              ),
            ))
        .toList();
  }
}

class FoodListView extends StatelessWidget {
  final List<FoodItem> foodItems;

  const FoodListView({super.key, required this.foodItems});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: foodItems.map((item) => FoodItemTile(item: item)).toList(),
    );
  }
}

class FoodItemTile extends StatelessWidget {
  final FoodItem item;

  const FoodItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                item.imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              if (item.isBest)
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Best',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem {
  final String name;
  final double price;
  final String imageUrl;
  final bool isBest;

  FoodItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.isBest = false,
  });
}
