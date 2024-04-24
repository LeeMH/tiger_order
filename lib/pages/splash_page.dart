import 'package:flutter/material.dart';
import 'package:tiger_order/services/menu_group_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  MenuGroupService menuGroupService = MenuGroupService();

  @override
  void initState() {
    super.initState();
    loadState(context);
  }

  Future<void> loadState(BuildContext context) async {
    await menuGroupService.loadMenuGroups(1, 1);
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'logo',
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
