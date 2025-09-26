import 'package:flutter/material.dart';
import 'package:kickstartu_mobile/core/search/views/widgets/item_search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ItemSearchBar(),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(16.0),
          child: Divider(),
        ),
      ),
    );
  }
}
