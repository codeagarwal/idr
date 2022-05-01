import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  maxRadius: 130,
                  backgroundImage: AssetImage("assets/photos/logo.png"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              "Is your Drone Ready to Connect ?".text.center.bold.xl4.make(),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Connecting...'),
                    content: const Text('Wait while your Drone is Connecting.'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                    ],
                  ),
                ),
                child: const Text("Connect"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Mission Planner"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Airspace"),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                  primary: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
