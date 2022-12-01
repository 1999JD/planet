import 'package:flutter/material.dart';

class SelectBar extends StatefulWidget {
  const SelectBar({super.key});

  @override
  State<SelectBar> createState() => _SelectBarState();
}

class _SelectBarState extends State<SelectBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        initialValue: 'Search',
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.list),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.black54,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          contentPadding: const EdgeInsets.only(left: 24),
        ),
      ),
    );
  }
}
