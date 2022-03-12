import 'package:flutter/material.dart';
import 'package:flutter_application_2/sreen_page/schoolpage.dart';
import 'contact.dart';
import 'detail.dart';
import 'setting.dart';
import 'homepage.dart';
import 'office.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('My Page'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://1j4pyr7d8sp3b7kxd2d9shhe-wpengine.netdna-ssl.com/wp-content/uploads/2018/03/play-indoor-spring-break-kids-activities-dubai-1024x796.jpg'),
              ),
              const Text(
                'En Eangly',
                style: TextStyle(fontSize: 20.0),
              ),
              const Text(
                'Email:Eanglyen82@gmail.com',
                style: TextStyle(fontSize: 15.0),
              ),
              const SizedBox(height: 50.0),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const HomePage(
                        title: "Home Page",
                      );
                    }),
                  );
                  //debugPrint('Home Taped');
                },
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                trailing: const Icon(Icons.arrow_forward_ios),
                
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const OfficePage();
                    }),
                  );
                },
                leading: const Icon(Icons.menu),
                title: const Text('office'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const SchoolPage(
                        title: "School",
                      );
                    }),
                  );
                },
                leading: const Icon(Icons.school_outlined),
                title: const Text('School'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                 Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const SettingPage(
                        title: "Setting",
                      );
                    }),
                  );
                },
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Setting'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const DetailPage(
                        title: "About Us",
                      );
                    }),
                  );
                },
                leading: const Icon(Icons.info_outline),
                title: const Text('About Us'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const ContactPage(
                        title: "Contact",
                      );
                    }),
                  );},
                leading: const Icon(Icons.call_outlined),
                title: const Text('Contact'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
