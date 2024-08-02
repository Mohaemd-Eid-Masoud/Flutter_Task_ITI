import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedPage(),
    );
  }
}

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Feed',
                style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600
                ),
              ),
              centerTitle: true,
              leading: TextButton(
                onPressed: () {},
                child: Text('Back', style: TextStyle(color: Colors.green)),
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text('Filter', style: TextStyle(color: Colors.green)),
                ),
              ],
              floating: true,
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: 'Search' ,
                      hintStyle: TextStyle(
                      color: Color.fromRGBO(189, 189, 189, 1),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(246, 246, 246, 1),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: const Color.fromRGBO(246, 246, 246, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: const Color.fromRGBO(246, 246, 246, 1)),
                    ),
                  
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Header',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '8m ago',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          "He'll want to use your yacht, and I don't want this thing smelling like fish.",
                          style: TextStyle(color: Colors.black87),
                        ),
                        isThreeLine: true,
                      ),
                      Divider(),
                    ],
                  );
                },
                childCount: 4,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ClipRRect(
                     borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.grey[300],
                      height: 162.0,
                      width: 343,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(5, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: _selectedIndex == index ? Colors.green : Colors.grey[300],
                  radius: 15,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
