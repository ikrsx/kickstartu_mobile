import 'package:flutter/material.dart';

class ItemSearchBar extends StatefulWidget {
  const ItemSearchBar({super.key});

  @override
  State<ItemSearchBar> createState() => _ItemSearchBarState();
}

class _ItemSearchBarState extends State<ItemSearchBar> {
  TextEditingController? searchValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: searchValue,
      elevation: WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
      autoFocus: true,
      hintText: "Search for accommodations, tiffin services or shops",

      trailing: [
        IconButton(
          onPressed: () => setState(() {
            searchValue!.clear();
          }),
          icon: Icon(Icons.clear_rounded),
        ),
      ],
    );
  }
}
