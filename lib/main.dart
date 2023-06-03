import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                backgroundColor: Colors.red,
                body: SafeArea(
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 65.0,
                            backgroundImage: AssetImage('assets/Mihretab.jpg'),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            'Mihretab',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            'SOFTWARE ENGINEER',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                            width: 250.0,
                            child: Divider(color: Colors.white),
                          ),
                          Card(
                            color: Colors.white,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: orientation == Orientation.portrait
                                  ? 25.0
                                  : 100.0,
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.phone,
                                color: Colors.teal,
                              ),
                              title: const Text(
                                '+251 911 33 12 78',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.white,
                            margin: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: orientation == Orientation.portrait
                                  ? 25.0
                                  : 100.0,
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.email,
                                color: Colors.teal,
                              ),
                              title: const Text(
                                'meresenior14232314@gmail.com',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Source Sans Pro',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
