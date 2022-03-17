import 'package:flutter/material.dart';
import 'package:uigig/constants/text_constants.dart';
import 'package:uigig/screens/fourth_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          color: Colors.white,
          height: 500,
          child: Column(
            children: [
              Card(
                color: Colors.purple[100],
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 50,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.purple[100],
                      height: 135,
                      child: ListTile(
                        title: Text(
                          Constants.subscriptionCardTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                        subtitle: Text(
                          Constants.subscriptionCardSubtitle,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 250,
                        bottom: 15,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            return Colors
                                .black; // Defer to the widget's default.
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          )),
                        ),
                        child: Text(
                          Constants.subscriptionCardButton,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 18, bottom: 4),
                color: Colors.purple[50],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.white24,
                      height: 84,
                      child: ListTile(
                        title: Text(Constants.paymentHistoryTitle),
                        subtitle: Text(Constants.paymentHistorySubtitle),
                        trailing: const Icon(Icons.navigate_next_sharp),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.teal[100],
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.teal[100],
                      height: 50,
                      child: ListTile(
                        title: Text(Constants.biology),
                        trailing: Text(Constants.biologyTrailingTitle),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 250, bottom: 15),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            return Colors
                                .black; // Defer to the widget's default.
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          )),
                        ),
                        child: Text(
                          Constants.biologyButton,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.teal[100],
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      color: Colors.teal[100],
                      height: 50,
                      child: ListTile(
                        title: Text(Constants.computerScience),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 250, bottom: 15),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            return Colors
                                .black; // Defer to the widget's default.
                          }),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          )),
                        ),
                        child: Text(
                          Constants.computerScienceButton,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PageFour()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
