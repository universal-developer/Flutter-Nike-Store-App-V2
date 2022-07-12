import 'package:flutter/material.dart';

class TabBarComponent extends StatefulWidget {
  const TabBarComponent({Key? key}) : super(key: key);

  @override
  State<TabBarComponent> createState() => _TabBarComponentState();
}

class _TabBarComponentState extends State<TabBarComponent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: const Icon(Icons.person_outline),
            title: const Text(
              'DASHBOARD',
              style: TextStyle(fontSize: 16.0),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30.0),
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text('Tab 1'),
                      ),
                      Tab(
                        child: Text('Investment'),
                      ),
                      Tab(
                        child: Text('Your Earning'),
                      ),
                      Tab(
                        child: Text('Current Balance'),
                      ),
                      Tab(
                        child: Text('Tab 5'),
                      ),
                      Tab(
                        child: Text('Tab 6'),
                      )
                    ])),
            actions: const <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(Icons.add_alert),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: const Center(
                  child: Text('Tab 1'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('Tab 2'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('Tab 4'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('Tab 5'),
                ),
              ),
              Container(
                child: const Center(
                  child: Text('Tab 6'),
                ),
              ),
            ],
          )),
    );
  }
}
