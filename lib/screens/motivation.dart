import 'dart:math';

import 'package:flutter/material.dart';
import '../API/apis.dart';
import '../components/constants.dart';

class Motivation extends StatefulWidget {
  const Motivation({Key? key}) : super(key: key);

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: navigationBarAndroid,
        title: Text(
          'Motivation'.toUpperCase(),
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: kMColors,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/$randomImage.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: Card(
                elevation: 10,
                color: const Color.fromARGB(146, 255, 255, 255),
                child: FutureBuilder(
                  future: getQuoteData(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: kMColors,
                      ));
                    } else {
                      return Center(
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Text(
                                snapshot.data.toString(),
                                style: const TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              );
                            }),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            randomImage = Random().nextInt(20) + 1;
            getQuoteData();
            randomQuote = Random().nextInt(1644);
          });
        },
        backgroundColor: kMColors,
        child: const Icon(
          Icons.replay,
          color: Colors.black,
        ),
      ),
    );
  }
}
