// import 'package:advance_to_do/main.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import './functions.dart';
// import "package:sqflite/sqflite.dart";
import 'package:intl/intl.dart';

class ToDoLIst extends StatefulWidget {
  const ToDoLIst({super.key});
  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State {
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
                        error:isError ? titleController.text=='' ? const Text(
                          "required",style:TextStyle(
                            color: Colors.red,
                            fontSize:10,),):null :null,
                          // errorText: (isError && titleController.text=='') ? "required" : null,
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
                        error:isError ? descriptionController.text=='' ? const Text("required",style:TextStyle(
                            color: Colors.red,
                            fontSize:10,),):null :null,
                          // errorText:  (isError && descriptionController.text=='') ? "required" : null,
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
                          error:isError ? dateController.text=='' ? const Text("required",style:TextStyle(
                            color: Colors.red,
                            fontSize:10,),):null :null,
                          // suffix:const Icon(Icons.calendar_month),
                          suffixIcon: const Icon(Icons.calendar_month_outlined),
                          // errorText:  (isError && dateController.text=='') ? "required" : null,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onTap: () async {
                          DateTime? dateTime = await showDatePicker(
                              initialDate: DateTime(2024, 10, 17),
                              context: context,
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2026));
                          if (dateTime != null) {
                            DateTime dateTime1 = dateTime;
                            dateController.text =
                                DateFormat('dd MMMM yyyy').format(dateTime1);
                          }
                        }),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if(titleController.text.trim()!='' && descriptionController.text.trim()!='' && dateController.text.trim()!=''){

                  isError=false;
                  Map<String, dynamic> myMap = {
                    "title": titleController.text.trim(),
                    "des": descriptionController.text.trim(),
                    "date": dateController.text.trim(),
                  };
                  Navigator.pop(context);
                  if (index == -1) {
                    await addData(myMap);
                  } else {
                    await editData(myMap, index);
                  }

                  titleController.clear();
                  descriptionController.clear();
                  dateController.clear();
                  }else{
                    isError=true;
                    Navigator.pop(context);
                    openBottomSheet(index);
                    print("error");
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
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 30, bottom: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Pathum",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 18, top: 19),
                  child: Text("CREATE TO DO LIST"),
                ),
                Container(
                  height: 649,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Slidable(
                          endActionPane: ActionPane(
                            extentRatio: 0.18,
                            motion: const ScrollMotion(),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 7, bottom: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        titleController.text=data[index]['title'];
                                        descriptionController.text=data[index]['des'];
                                        dateController.text=data[index]['date'];
                                        openBottomSheet(index);
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        await deleteData(index);
                                        setState(() {});
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            height: 90,
                            // width:100,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 16, right: 20),
                                  height: 52,
                                  width: 52,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                  ),
                                  child: const Icon(
                                    Icons.image,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8, top: 12),
                                        child: Text(
                                          data[index]['title'],
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 270,
                                        height: 33,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            data[index]['des'],
                                            style: const TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        data[index]['date'],
                                        style: const TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 46,
        width: 46,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor:const Color.fromRGBO(89, 57, 241, 1),
          onPressed: () {
          titleController.text='';
          descriptionController.text='';
          dateController.text='';
          openBottomSheet(-1);
          // setState(() {});
        },
        child:const Icon(Icons.add,size: 26,color:Colors.white),
        ),
      ),
    );
  }
}
