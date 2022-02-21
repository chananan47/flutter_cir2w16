import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'contact.dart';
import 'login.dart';
import 'profile.dart';


class HomeScreen extends StatefulWidget {
  static String id = '/home';
  const HomeScreen({Key? key}) : super(key: key); //1.create constructor

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index_= 0 ;
  List pages = [
    //const HomeScreen(),
    const FirstScreen(),
    const ProfileScreen(),
    const ContactScreen(),
    const LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Flutter App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.green,
      // ),
      body: pages[index_],
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text("Mark Zakerberg"),
                accountEmail: Text("mark@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg"),
                ),
              ),
            ),
            ListTile(
              title: const Text("Home",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("Profile",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("Contact",
                  style: TextStyle(color: Colors.indigoAccent, fontSize: 15)),
              leading: const Icon(
                Icons.contact_page,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
            ),
            ListTile(
              title: const Text("First",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.call,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts),label: "Profile",backgroundColor: Colors.amber),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: "Contact",backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login",backgroundColor: Colors.red),
        ],
        onTap: (index){
          setState(() {
            index_ = index;
          });
          print(index);
        },
        currentIndex: index_,
      ),
    );
  }
}
