import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Center(
          child: Text(
            'Bíblia Sagrada',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}
