import 'package:flutter/material.dart';
import 'package:module_5/Call_screen.dart';
import 'package:module_5/Chat_screen.dart';
import 'package:module_5/Status_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  MySnackbar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(MySnackbar(Text(msg), context));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.teal.shade600,

        ///AppBar
        appBar: AppBar(
          elevation: 8.0,
          centerTitle: true,
          title: Text(
            'Module 5 Assignment',
            style: TextStyle(letterSpacing: 2.0, fontSize: 20),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Chat'),
              Tab(text: 'Status'),
              Tab(text: 'Call'),
            ],
          ),
        ),

        /// Left Drawer
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  accountName: Text('Flutter'),
                  accountEmail: Text('admin@flutter.dart'),
                  currentAccountPicture: Image.network('https://mdevelopers.com/storage/0_flutterheader_0c3ac92d.png',),

                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('This is Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('This is Person'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('This is mail'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('This is Contact'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('This is phone'),
                onTap: () {},
              ),
            ],
          ),
        ),

        ///Floting action Button
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.teal.shade500,
        //   onPressed: () {
        //
        //   },
        //   elevation: 5,
        //   child: Icon(Icons.home),
        // ),

        /// Bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_rounded), label: 'Subscriptions'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_rounded), label: 'Library',),
          ],

        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen()
          ],
        ),
      ),
    );
  }
}
