
import 'package:flutter/material.dart';

import '../utilitis/dimensions_.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return BaseWebLayout(body: desktopBody, title: "Web View",);
        }
      },
    );
  }
}


class BaseWebLayout extends StatefulWidget {
  const BaseWebLayout({super.key, required this.title, required this.body});

  final String title;
  final Widget body;

  @override
  State<BaseWebLayout> createState() => _BaseWebLayoutState();
}

class _BaseWebLayoutState extends State<BaseWebLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          // sidebar
          Container(
            padding: const EdgeInsets.all(12.0),
            width: 200,
            // color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text("Home"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.category),
                        title: const Text("Categories"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.store),
                        title: const Text("Products"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text("Customers"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.description),
                        title: const Text("Invoices"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.summarize),
                        title: const Text("Reports"),
                        onTap: (){
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Pressed me")));
                        },
                      ),
                      const Divider(),

                      const Center(
                        child: Text(
                          'v1.0.0',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                TextButton(onPressed: (){}, child: const Text("Logout"))
              ],
            ),
          ),

          const VerticalDivider(),

          // second column body page
          widget.body,
        ],
      ),
    );
  }
}

