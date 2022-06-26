import 'package:flutter/material.dart';
import 'package:musichomepage/neubox.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Musichomepage extends StatefulWidget {
  const Musichomepage({Key? key}) : super(key: key);

  @override
  State<Musichomepage> createState() => _MusichomepageState();
}

class _MusichomepageState extends State<Musichomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Neubox(
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                        ),
                        Text("P L A Y L I S T"),
                        const Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Neubox(
                              child: Icon(Icons.menu),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  //menu and back button

                  //photo details and name
                  Neubox(
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('images/godawari.PNG')),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Music",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              Text(
                                "Khadka ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //time played button and scroll
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("0:00"),
                      Icon(Icons.shuffle),
                      Icon(Icons.repeat),
                      Text('4:23'),
                    ],
                  ),
                  //progress bar
                  SizedBox(
                    height: 25,
                  ), //play pause button

                  Neubox(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.4,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  SizedBox(
                    height: 70,
                    child: Row(
                      children: const [
                        Expanded(
                            child: Neubox(
                                child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ))),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Neubox(
                                  child: Icon(Icons.play_arrow, size: 32)),
                            )),
                        Expanded(
                            child:
                                Neubox(child: Icon(Icons.skip_next, size: 32))),
                      ],
                    ),
                  ) //play pause button
                ],
              ),
            ),
          ),
        ));
  }
}
