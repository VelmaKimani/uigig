import 'package:flutter/material.dart';
import 'package:uigig/constants/text_constants.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          ListTile(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
            tileColor: Colors.grey[300],
            title: Text(
              Constants.secondPageGreeting,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              Constants.secondPageInfo,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.read_more_outlined),
              iconSize: 50,
              color: Colors.grey,
              splashColor: Colors.purple,
              onPressed: () {},
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
            color: Colors.purple[100],
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: Colors.purple[100],
                  height: 125,
                  child: ListTile(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    )),
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
                        return Colors.black; // Defer to the widget's default.
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
            color: Colors.purple[100],
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  color: Colors.purple[100],
                  height: 125,
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
                        return Colors.black; // Defer to the widget's default.
                      }),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 4),
            color: Colors.teal[100],
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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(24.0),
            )),
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 24.0,
            ),
            elevation: 1,
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Column(children: [
                    ListTile(
                      title: Text(
                        Constants.firstPageCardTitle,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      subtitle: Text(
                        Constants.firstPageCardSubtitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      trailing: const Icon(
                        Icons.lock_sharp,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
