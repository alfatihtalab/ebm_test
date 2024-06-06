

import 'package:flutter/material.dart';

import '../responsive_layout.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: WebProductListBody(),
        desktopBody: MobileProductListBody(),
      ),
    );
  }
}

class WebProductListBody extends StatefulWidget {
  const WebProductListBody({super.key});

  @override
  State<WebProductListBody> createState() => _WebProductListBodyState();
}

class _WebProductListBodyState extends State<WebProductListBody> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class MobileProductListBody extends StatefulWidget {
  const MobileProductListBody({super.key});

  @override
  State<MobileProductListBody> createState() => _MobileProductListBodyState();
}

class _MobileProductListBodyState extends State<MobileProductListBody> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


