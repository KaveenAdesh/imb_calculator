import 'package:flutter/material.dart';

//The variable name 'background_color' isn't a lowerCamelCase identifier.  => backgroundcolor
Color backgroundcolor = Colors.white;
double male = 120;
double female = 120;
var malefemale = '';
int height = 170;
double weight = 50;
Color theme = Colors.black;
double bmi = weight / (height * height) * 10000;

class HomeScreenAdhi extends StatefulWidget {
  const HomeScreenAdhi({super.key});

  @override
  State<HomeScreenAdhi> createState() => _HomeScreenAdhiState();
}

class _HomeScreenAdhiState extends State<HomeScreenAdhi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: theme),
          ),
        ),
        backgroundColor: backgroundcolor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                    width: male,
                    height: male,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            male = 140;
                            female = 120;
                            malefemale = "Male";
                            backgroundcolor =
                                const Color.fromARGB(255, 144, 214, 247);
                            theme = Colors.lightBlue;
                          });
                        },
                        icon: const Icon(
                          Icons.male,
                          size: 60,
                          color: Colors.white,
                        ))),
                const Spacer(),
                Text(
                  '$malefemale',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: theme),
                ),
                const Spacer(),
                Container(
                    width: female,
                    height: female,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            male = 120;
                            malefemale = "Female";
                            female = 140;
                            theme = Colors.pinkAccent;
                            backgroundcolor =
                                const Color.fromARGB(255, 245, 169, 194);
                          });
                        },
                        icon: const Icon(
                          Icons.female,
                          size: 60,
                          color: Colors.white,
                        ))),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Text(
                        "${height}cm",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: theme),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                creat_imb();
                                height++;
                              });
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(theme),
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(50, 60)),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                creat_imb();
                                height--;
                              });
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(theme),
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(50, 60)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    children: [
                      Text(
                        "${weight}kg",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: theme),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                creat_imb();
                                weight = weight + (.5);
                              });
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(theme),
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(50, 60)),
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                creat_imb();
                                weight = weight - (.5);
                              });
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(theme),
                              fixedSize:
                                  MaterialStatePropertyAll<Size>(Size(50, 60)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            'BMI : ${bmi.toStringAsFixed(2)}',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: theme),
          ),
        ],
      ),
    );
  }
}

void creat_imb() {
  bmi = weight / (height * height) * 10000;
}
