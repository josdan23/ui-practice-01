import 'package:flutter/material.dart';
import 'package:task_apps/pages/home.dart';
import 'package:task_apps/theme/style.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Padding(
        padding: const EdgeInsets.all(8 * 3),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Maitask",
                      style: titleStyle(),
                    ),
                    const Icon(
                      Icons.star_rate_sharp,
                      color: Colors.white,
                      size: 32,
                    )
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("To simplify the way you work",
                        softWrap: true,
                        textScaleFactor: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.asset(
                  "images/logo_task.png",
                  width: 280,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8 * 3),
                child: Text(
                    "Controlling deliveries in reliable and no-hassle way.",
                    textAlign: TextAlign.center,
                    style: bodyStyle2()),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    primary: Colors.blueGrey.shade900),
                child: Container(
                    alignment: Alignment.center,
                    // height: 56,
                    // width: double.infinity,
                    child: const Text(
                      "Get free trial",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
