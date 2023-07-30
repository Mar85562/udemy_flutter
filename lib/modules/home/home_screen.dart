import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  String x ="First App";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
        ),
        actions:  [
           IconButton(
              icon: const Icon(
                Icons.notification_important,
              ),
              onPressed: () {
                print('Notification Pressed!');
              },
          ),
           IconButton(
             icon: const Icon(
              Icons.search,
          ),
             onPressed: () {
               print('Search Pressed!');
             },
           ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      20.0,
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children:  [
                    const Image(
                      image: AssetImage('assets/images/close-up-of-blossoming-rose-flower-royalty-free-image-1580853844.jpg'),
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      width: 300.0,
                      color: Colors.black.withOpacity(.7),
                      child: const Text(
                        'Flower',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}