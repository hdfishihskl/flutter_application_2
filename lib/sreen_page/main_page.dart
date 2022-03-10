import 'package:flutter/material.dart';
import 'package:flutter_application_2/sreen_page/schoolpage.dart';
import 'homepage.dart';
import 'office.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?size=626&ext=jpg&ga=GA1.2.1579436208.1638835200'),
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
                        title: 'Home Page',
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
                      return const SchoolPage();
                    }),
                  );
                },
                leading: const Icon(Icons.school_outlined),
                title: const Text('School'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              const Divider(),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Setting'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.info_outline),
                title: const Text('About Us'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {},
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
