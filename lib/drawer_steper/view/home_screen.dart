import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/stepprovider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  stepprovider? providerF;
  stepprovider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<stepprovider>(context, listen: false);
    providerT = Provider.of<stepprovider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Stepper(onStepContinue: () => providerT!.conti(),
          onStepCancel: () => providerT!.can(),
          currentStep: providerT!.i,
          steps: [

        Step(
          title: Text("Personal informaton"),
          content: Text("Patel"),
        ),
        Step(
          title: Text("Document Iinformatin"),
          content: Text("Patel"),
        ),
        Step(
          title: Text("pay fees "),
          content: Text("Patel"),
        ),
      ]),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                  ),
                  Text("Patel"),
                ],
              ),
            ),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("Contact"),),
          ],
        ),
      ),
    );
  }
}
