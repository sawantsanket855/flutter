import "package:flutter/material.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "QuizApp",
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int curIndex = 0;
  int marks = 0;
  List<Map> allQuestions = [
    {
      "question": "What is 2+4 in dart ?",
      "option": ["5", "6", "3", "3.6"],
      "answer": 1,
      "flag": false,
      "selected": -1,
    },
    {
      "question": "What is 2*4 in dart ?",
      "option": ["8", "12", "5", "6"],
      "answer": 0,
      "flag": false,
      "selected": -1,
    },
    {
      "question": "What is 2/4 in dart ?",
      "option": ["0.4", "2", "0.5", "4"],
      "answer": 2,
      "flag": false,
      "selected": -1,
    },
    {
      "question": "What is 2%4 in dart ?",
      "option": ["1", "2", "3", "4"],
      "answer": 1,
      "flag": false,
      "selected": -1,
    },
    {
      "question": "What is 2~/4 in dart ?",
      "option": ["2", "4", "0.5", "0"],
      "answer": 3,
      "flag": false,
      "selected": -1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
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
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 130,
              ),
              Text(
                "Question : ${curIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            child: Row(children: [
              const SizedBox(
                width: 300,
              ),
              Text(
                "Marks:$marks",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ]),
          ),
          Container(
            height: 60,
            width: 500,
            padding: const EdgeInsets.fromLTRB(100, 10, 0, 0),
            color: Colors.grey,
            child: Text(
              allQuestions[curIndex]["question"],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                if (!allQuestions[curIndex]["flag"]) {
                  allQuestions[curIndex]["flag"] = true;
                  if (allQuestions[curIndex]["answer"] == 0) {
                    marks++;
                  }
                  setState(() {});
                  allQuestions[curIndex]["selected"] = 0;
                }
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[curIndex]["answer"] == 0 &&
                        allQuestions[curIndex]["flag"])
                    ? WidgetStateProperty.all(Colors.green)
                    : (allQuestions[curIndex]["selected"] == 0)
                        ? WidgetStateProperty.all(Colors.red)
                        : WidgetStateProperty.all(Colors.white),
              ),
              child: Text(
                "${allQuestions[curIndex]["option"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                if (!allQuestions[curIndex]["flag"]) {
                  allQuestions[curIndex]["flag"] = true;
                  if (allQuestions[curIndex]["answer"] == 1) {
                    marks++;
                  }
                  allQuestions[curIndex]["selected"] = 1;
                  setState(() {});
                }
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[curIndex]["answer"] == 1 &&
                        allQuestions[curIndex]["flag"])
                    ? WidgetStateProperty.all(Colors.green)
                    : (allQuestions[curIndex]["selected"] == 1)
                        ? WidgetStateProperty.all(Colors.red)
                        : WidgetStateProperty.all(Colors.white),
              ),
              child: Text(
                "${allQuestions[curIndex]["option"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                if (!allQuestions[curIndex]["flag"]) {
                  allQuestions[curIndex]["flag"] = true;
                  if (allQuestions[curIndex]["answer"] == 2) {
                    marks++;
                  }
                  allQuestions[curIndex]["selected"] = 2;
                  setState(() {});
                }
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[curIndex]["answer"] == 2 &&
                        allQuestions[curIndex]["flag"])
                    ? WidgetStateProperty.all(Colors.green)
                    : (allQuestions[curIndex]["selected"] == 2)
                        ? WidgetStateProperty.all(Colors.red)
                        : WidgetStateProperty.all(Colors.white),
              ),
              child: Text(
                "${allQuestions[curIndex]["option"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                if (!allQuestions[curIndex]["flag"]) {
                  allQuestions[curIndex]["flag"] = true;
                  if (allQuestions[curIndex]["answer"] == 3) {
                    marks++;
                  }
                  allQuestions[curIndex]["selected"] = 3;
                  setState(() {});
                }
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[curIndex]["answer"] == 3 &&
                        allQuestions[curIndex]["flag"])
                    ? WidgetStateProperty.all(Colors.green)
                    : (allQuestions[curIndex]["selected"] == 3)
                        ? WidgetStateProperty.all(Colors.red)
                        : WidgetStateProperty.all(Colors.white),
              ),
              child: Text(
                "${allQuestions[curIndex]["option"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          if (curIndex < allQuestions.length - 1) {
            curIndex++;
            setState(() {});
          }
        },
        child:const Icon(Icons.arrow_forward),
      ),
    );
  }
}
