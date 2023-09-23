import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({Key? key}) : super(key: key);

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  TextEditingController controller1 = TextEditingController();
  int? result = 0;

  // مظاعفات اللاقم
  int multip(int n) {
    int i = 1, sum = 0;
    while (i <= 20) {
      sum = sum + n;
      print(sum);
      i++;
    }

    return sum;
  }

  // مظروب الرقم
  int fact(int n) {
    int f = 1, i = 1;
    while (i <= n) {
      f = f * i;

      i++;
    }

    return f;
  }

  // تحويل الرقم سالب او موجب
  int checkNumber(int n) {
    return -1 * n;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWork lamia alawdy level 3 IT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Result :   $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = fact(int.parse(controller1.text));
                      });
                      controller1.clear();
                    },
                    child: Text("factorial")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = multip(int.parse(controller1.text));
                      });
                      controller1.clear();
                    },
                    child: Text("multi")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = checkNumber(int.parse(controller1.text));
                      });
                      controller1.clear();
                    },
                    child: Text("convert")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
