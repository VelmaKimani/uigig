import 'package:flutter/material.dart';
import 'package:uigig/constants/text_constants.dart';
import 'package:uigig/screens/second_page.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        Padding(
            padding: const EdgeInsets.only(right: 80, top: 7, bottom: 7),
            child: OutlinedButton.icon(
              label: Text(
                Constants.firstPageAppBar,
                style: const TextStyle(color: Colors.grey),
              ),
              icon: const Icon(Icons.manage_accounts_rounded),
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24))),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageTwo()),
                );
              },
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CircleAvatar(
            minRadius: 10,
            backgroundColor: Colors.black,
            child: IconButton(
                icon: const Icon(
                  Icons.book_online_rounded,
                  color: Colors.green,
                ),
                onPressed: () {}),
          ),
        ),
      ]),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20),
          child: Text(
            Constants.firstPageHeader,
            style: const TextStyle(fontSize: 30, color: Colors.grey),
            textAlign: TextAlign.left,
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          )),
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 12.0,
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
                      style: const TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    subtitle: Text(
                      Constants.firstPageCardSubtitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    trailing: const Icon(
                      Icons.router_rounded,
                      size: 80,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        /* TextButton.icon(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(color: Colors.green),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PageTwo()),
            )
          },
          icon: const Icon(Icons.manage_accounts_rounded),
          label: Text(
            Constants.firstPageAppBar,
          ),
        ), */
      ]),
    );
  }
}
