import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      title: "QuizeApp2",
      home: QuizeApp(),
    ));
  }
}

class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});
  @override
  State createState() => _QuizeAppState();
}

class _QuizeAppState extends State {
  int curIndex = 0;
  bool quizFrame = true;
  int marks = 0;
  bool submitted = false;
  List<Map> allQuestion = [
    {
      "question": "Which data type can hold values of both int and double ?",
      "option": ["numeric", "double", "int", "num"],
      "answer": 3,
      "selected": -1
    },
    {
      "question": "Which of the data type can be used to store data: 'core2web' ?",
      "option": ["string", "int", "char", "String"],
      "answer": 3,
      "selected": -1
    },
    {
      "question": "Which of the following is not built in data type in dart ?",
      "option": ["char", "int", "double", "var"],
      "answer": 0,
      "selected": -1
    },
    {
      "question": "Which of the following is correct syntax for declaring a variable in dart ?",
      "option": ["x=10", "var x = 10", "integer n = 10", "variable x = 10"],
      "answer": 1,
      "selected": -1
    },
    {
      "question": "___ data type can be used to store true or false ?",
      "option": ["Boolean", "bool", "flag", "num"],
      "answer": 1,
      "selected": -1
    },
    {
      "question": "Which of the following is not Arithmetic operator ?",
      "option": ["-", "%", "/", "\$"],
      "answer": 3,
      "selected": -1
    },
    {
      "question": "'&' is which type of operator ?",
      "option": ["Logical", "Comparison", "Bitwise", "Arithmetic"],
      "answer": 2,
      "selected": -1
    },
    {
      "question": "How many oprands can unary operator take to perfom operation ?",
      "option": ["1", "2", "0", "3"],
      "answer": 0,
      "selected": -1
    },
    {
      "question": "The output of operators prformed using Relational operator is of type __ .",
      "option": ["int", "double", "bool", "depends on operands"],
      "answer": 2,
      "selected": -1
    },
    {
      "question": "'is' is a __ operator.",
      "option": ["ValueChecking operator", "TypeChecking operator", "DataChecking operator", "it is not a operator"],
      "answer": 1,
      "selected": -1
    },
  ];

  Color? questionColor(int x) {
    if (!submitted) {
      if (allQuestion[x]["selected"] == -1) {
        return const Color.fromARGB(255, 201, 200, 200);
      } else {
        return Colors.green[300];
      }
    } else {
      if (allQuestion[x]["selected"] != -1) {
        if (allQuestion[x]["selected"] == allQuestion[x]["answer"]) {
          return Colors.green;
        } else {
          return Colors.red;
        }
      } else {
        return const Color.fromARGB(255, 201, 200, 200);
      }
    }
  }

  WidgetStateProperty<Color?> optionColor(int x) {
    if (allQuestion[curIndex]["selected"] == x) {
      return WidgetStateProperty.all(Colors.blue);
    } else {
      return WidgetStateProperty.all(null);
    }
  }

  WidgetStateProperty<Color?> optionColorSubmitted(int x) {
    if (allQuestion[curIndex]["selected"] == x) {
      if (allQuestion[curIndex]["answer"] == x) {
        return WidgetStateProperty.all(Colors.green);
      } else {
        return WidgetStateProperty.all(Colors.red);
      }
    } else {
      if (allQuestion[curIndex]["answer"] == x) {
        return WidgetStateProperty.all(Colors.green);
      } else {
        return WidgetStateProperty.all(null);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (quizFrame) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 211, 211),
        appBar: AppBar(
          title: const Text(
            "Quiz",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: Text(
                "Question ${curIndex + 1}/${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              height: 100,
              width: 450,
              color: const Color.fromARGB(255, 191, 199, 199),
              child: Text(
                "Q.${curIndex+1}) ${allQuestion[curIndex]["question"]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(250, 10, 0, 0),
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    if(!submitted){
                    allQuestion[curIndex]["selected"] = -1;
                    setState(() {});}
                  },
                  child: const Text(
                    "clear selection",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (!submitted) {
                    allQuestion[curIndex]["selected"] = 0;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      !submitted ? optionColor(0) : optionColorSubmitted(0),
                ),
                child: Text("A)  ${allQuestion[curIndex]["option"][0]}"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (!submitted) {
                    allQuestion[curIndex]["selected"] = 1;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      !submitted ? optionColor(1) : optionColorSubmitted(1),
                ),
                child: Text("B)  ${allQuestion[curIndex]["option"][1]}"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (!submitted) {
                    allQuestion[curIndex]["selected"] = 2;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      !submitted ? optionColor(2) : optionColorSubmitted(2),
                ),
                child: Text("C)  ${allQuestion[curIndex]["option"][2]}"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (!submitted) {
                    allQuestion[curIndex]["selected"] = 3;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      !submitted ? optionColor(3) : optionColorSubmitted(3),
                ),
                child: Text("D)  ${allQuestion[curIndex]["option"][3]}"),
              ),
            ),
            const SizedBox(height: 45, width: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (curIndex > 0) {
                        curIndex--;
                        setState(() {});
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue),
                    ),
                    child: const Text(
                      "Prev",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 100),
                SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (curIndex < allQuestion.length - 1) {
                        curIndex++;
                        setState(() {});
                      } else {
                        for (int i = 0; i < allQuestion.length; i++) {
                          if (allQuestion[i]["answer"] ==
                              allQuestion[i]["selected"]) {
                            marks++;
                          }
                        }

                        if (submitted) {
                          //reset

                          curIndex = 0;
                          submitted = false;
                          for (int i = 0; i < allQuestion.length; i++) {
                            allQuestion[i]["selected"] = -1;
                          }
                          setState(() {});
                        } else {
                          //submit
                          quizFrame = false;
                          setState(() {});
                        }
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(curIndex == 9? submitted? Colors.green: Colors.red : Colors.blue,
                    ),
                    ),

                    child: Text(
                      curIndex == 9? submitted? "Retest": "Submit" : "Next",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==0 ? 10 : null,
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      backgroundColor: questionColor(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 0;
                      setState(() {});
                    },
                    child: const Text("1"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==1 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 1;
                      setState(() {});
                    },
                    child: const Text("2"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==2 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 2;
                      setState(() {});
                    },
                    child: const Text("3"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==3 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 3;
                      setState(() {});
                    },
                    child: const Text("4"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==4 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 4;
                      setState(() {});
                    },
                    child: const Text("5"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==5 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 5;
                      setState(() {});
                    },
                    child: const Text("6"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==6 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 6;
                      setState(() {});
                    },
                    child: const Text("7"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==7 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 7;
                      setState(() {});
                    },
                    child: const Text("8"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==8 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 8;
                      setState(() {});
                    },
                    child: const Text("9"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: curIndex==9 ? 10 : null,
                      padding: const EdgeInsets.all(0),
                      backgroundColor: questionColor(9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      curIndex = 9;
                      setState(() {});
                    },
                    child: const Text("10"),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return Scaffold(
          body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.network(
                "https://th.bing.com/th/id/OIP.3QBrQwybmRiWTLu7jBFJOAHaMR?pid=ImgDet&w=184&h=305&c=7&dpr=1.3"),
            const SizedBox(height: 20),
            const Text(
              "Congratulation !!!",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "You Got :",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$marks",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "/10 marks",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  quizFrame = true;
                  submitted = true;
                  curIndex=0;
                  marks=0;
                  setState(() {});
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 247, 219, 126))),
                child: const Text("check answers"),
              ),
            ),
          ],
        ),
      ));
    }
  }
}
