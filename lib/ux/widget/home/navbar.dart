import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            margin: const EdgeInsets.only(right: 8),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/image/example.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'GoodMorning',
                style: TextStyle(fontSize: 14),
              ),
              Padding(padding: EdgeInsets.only(bottom: 4)),
              Text(
                'Andrew Ainsley',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                ),
              ),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
