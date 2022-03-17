import 'package:flutter/material.dart';
import 'package:uigig/constants/text_constants.dart';
import 'package:uigig/screens/third_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal[100],
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(children: [
          Container(
            color: Colors.teal[100],
            height: 40,
            width: 400,
            child: Text(
              Constants.secondPageGreeting,
              style: const TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            Constants.secondPageInfo,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return Colors.black; // Defer to the widget's default.
                }),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                )),
              ),
              child: Text(
                Constants.secondPageTotal,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              color: Colors.teal[100],
              height: 500,
              width: 400,
              //color: Colors.amber,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(Constants.firstOption),
                  ),
                  Divider(
                    color: Colors.grey[600],
                    endIndent: 4,
                  ),
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(Constants.secondOption),
                  ),
                  Divider(
                    color: Colors.grey[600],
                    endIndent: 4,
                  ),
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(Constants.thirdOption),
                  ),
                  Divider(
                    color: Colors.grey[600],
                    endIndent: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.album),
                    title: Text(Constants.fourthOption),
                  ),
                  Divider(
                    color: Colors.grey[600],
                    endIndent: 5,
                  ),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 120, right: 120, top: 15, bottom: 15),
                      textStyle: const TextStyle(color: Colors.blue),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageThree()),
                      )
                    },
                    icon: const Icon(Icons.navigate_next_sharp),
                    label: Text(
                      Constants.nextPage,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* TextButton.icon(
            style: TextButton.styleFrom(
              //textStyle: const TextStyle(color: Colors.black),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageThree()),
              )
            },
            icon: const Icon(
              Icons.send_rounded,
            ),
            label: Text(Constants.secondPageTotal),
          ), */
        ]),
      ),

      // ),
    );
  }
}
