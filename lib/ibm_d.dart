import 'package:flutter/material.dart';

//The variable name 'background_color' isn't a lowerCamelCase identifier.  => backgroundcolor
Color backgroundcolor = Colors.white;

int gender = 1;

int height = 170;
double weight = 50;

Color fontcolor = Colors.black;
double bmi = weight / (height * height) * 10000;

class HomeScreenD extends StatefulWidget {
  const HomeScreenD({super.key});

  @override
  State<HomeScreenD> createState() => _HomeScreenDState();
}

class _HomeScreenDState extends State<HomeScreenD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: fontcolor),
          ),
        ),
        backgroundColor: backgroundcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  genderBox(0),
                  Text(
                    gender == 0 ? "Male" : "Female",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: fontcolor),
                  ),
                  genderBox(1),
                ],
              ),
            ),
            Text(
              'BMI : ${bmi.toStringAsFixed(2)}',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: fontcolor),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  selectorHigContainer(),
                  selecetWContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container selecetWContainer() {
    return Container(
      width: 150,
      height: 150,
      child: Column(
        children: [
          Text(
            "${weight}kg",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: fontcolor),
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
                    weight = weight - (.5);
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(fontcolor),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    creat_imb();
                    weight = weight + (.5);
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(fontcolor),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container selectorHigContainer() {
    return Container(
      width: 150,
      height: 150,
      child: Column(
        children: [
          Text(
            "${height}cm",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: fontcolor),
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
                    height--;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(fontcolor),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    creat_imb();
                    height++;
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(fontcolor),
                  fixedSize: MaterialStatePropertyAll<Size>(Size(50, 60)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container genderBox(int genType) {
    return Container(
        width: gender != genType ? 120 : 140,
        height: gender != genType ? 120 : 140,
        decoration: BoxDecoration(
            color: genType == 0 ? Colors.lightBlue : Colors.pink,
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
            onPressed: () {
              setState(() {
                gender = genType == 1 ? 1 : 0;
              });
            },
            icon: Icon(
              genType == 1 ? Icons.male : Icons.female,
              size: 60,
              color: Colors.white,
            )));
  }
}

void creat_imb() {
  bmi = weight / (height * height) * 10000;
}
