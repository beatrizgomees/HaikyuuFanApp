import 'package:app_haikyuu/src/layers/components/ListUsers-page.dart';
import 'package:app_haikyuu/src/layers/shared/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class KarasumoView extends StatefulWidget {
  const KarasumoView({super.key});

  @override
  State<KarasumoView> createState() => _KarasumoViewState();
}

class _KarasumoViewState extends State<KarasumoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(50, 50),
        child: AppBarWidget(
          labelAppBar: "Haikyuu App",
        ),
      ),
      body: ListUsersPage(),
    );
  }
}
