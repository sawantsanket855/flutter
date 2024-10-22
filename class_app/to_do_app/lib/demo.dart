import "package:flutter/material.dart";
// import "package:google_fonts/google_fonts.dart";
import "./functions.dart";
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});
  @override
  State createState() => _ToDoList();
}

class _ToDoList extends State {
  void openBottomSheet(int index) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 13,
              ),
              Text(
                (index == -1) ? "Create Task" : "Edit Task",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Title"),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        errorText: (isError && titleController.text=='') ? "required" : null,
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Description"),
                    TextField(
                      
                      controller: descriptionController,
                      decoration: InputDecoration(
                        errorText:  (isError && descriptionController.text=='') ? "required" : null,
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Date"),
                    TextField(
                      readOnly: true,
                        controller: dateController,
                        decoration: InputDecoration(
                          errorText:  (isError && dateController.text=='') ? "required" : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () async {
                         DateTime? dateTime = await showDatePicker(
                          initialDate: DateTime(2024,10,17),
                              context: context,
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2026)
                              );
                              if(dateTime!=null){
                                dateTime1=dateTime;
                                dateController.text =DateFormat.yMMMd().format(dateTime1);
                              }
                              
                          
                        }),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  String title = titleController.text.trim();
                  String description = descriptionController.text.trim();
                  String date = dateController.text;
                  if (date != '' && description != '' && title != ''){
                    Map l1 = {
                      "title": title,
                      "description": description,
                      "date": date,
                    };
                    if (index == -1) {
                      myList.add(l1);
                    } else {
                      myList[index] = l1;
                    }
                    // print(dateTime);
                    titleController.clear();
                    descriptionController.clear();
                    dateController.clear();
                    Navigator.pop(context);
                  }
                  else{
                    isError=true;
                    Navigator.pop(context);
                    openBottomSheet(index);
                  }
                  setState(() {});
                },


                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  margin: const EdgeInsets.only(
                      top: 10, left: 30, right: 30, bottom: 25),
                  child: const Row(
                    children: [
                      Spacer(),
                      Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To-Do List",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 167, 177),
      ),
      body: myList.isEmpty ? 
      const Center(child: Text("No task remaining add more tasks...."),) :
       ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? const EdgeInsets.only(
                    bottom: 25, left: 15, right: 15, top: 30)
                : const EdgeInsets.only(bottom: 25, left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                color: giveColor(index),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              width: 330,
              height: 125,
              // color:const Color.fromARGB(255, 250, 232, 232),
              child: Row(
                children: [
                  Column(children: [
                    const SizedBox(
                      height: 23,
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),

                      child: getImage( myList[index]["title"]),
                      // child: const Icon(
                      //  Icons.image_rounded,
                      //   color: Color.fromARGB(255, 199, 199, 199),
                      // ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      myList[index]["date"],
                      style: const TextStyle(fontSize: 10),
                    ),
                  ]),
                  const SizedBox(width: 15),
                  Column(
                    children: [
                      Text(
                        myList[index]["title"],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Quiksand",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 44,
                        width: 243,
                        child: Text(
                          myList[index]["description"],
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Quiksand",
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 210),
                          GestureDetector(
                            onTap: () {
                              titleController.text = myList[index]['title'];
                              descriptionController.text =
                                  myList[index]['description'];
                              dateController.text = myList[index]['date'];
                              openBottomSheet(index);
                            },
                            child: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromARGB(255, 0, 139, 148),
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          GestureDetector(
                            onTap: () {
                              myList.removeAt(index);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromARGB(255, 0, 139, 148),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            titleController.text = "";
            descriptionController.text = "";
            dateController.text = "";
            openBottomSheet(-1);
          },
          shape: const CircleBorder(),
          backgroundColor: const Color.fromARGB(255, 0, 139, 148),
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          )),
    );
  }
}
