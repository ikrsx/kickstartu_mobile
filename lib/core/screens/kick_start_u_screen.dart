import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kickstartu_mobile/features/accomodation/views/widgets/accomodation_list.dart';
import 'package:kickstartu_mobile/core/widgets/account_button.dart';
import 'package:kickstartu_mobile/core/widgets/floating_search_button.dart';
import 'package:kickstartu_mobile/core/widgets/kick_start_u_navigation_bar.dart';

class KickStartUScreen extends StatefulWidget {
  const KickStartUScreen({super.key});

  @override
  State<KickStartUScreen> createState() => _KickStartUScreenState();
}

class _KickStartUScreenState extends State<KickStartUScreen> {
  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _screenAppBar(),
      floatingActionButton: FloatingSearchButton(),
      bottomNavigationBar: KickStartUNavigationBar(
        currentIndex: currentScreenIndex,
        onTap: (index) => setState(() {
          currentScreenIndex = index;
        }),
      ),
      body: AccomodationList(),
    );
  }

  AppBar _screenAppBar() {
    return AppBar(
      title: Text("Welcome, IKRSX"),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      actions: [AccountButton()],
    );
  }
}
