// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, unused_import, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/youth.dart';
import 'package:flutter_application_1/widgets/youth_widget.dart';

class YouthPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  YouthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youth Care'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("youth").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: [
              ...snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;

                return YouthWidget(
                  youth: Youth.fromMap(data),
                ); // 👈 Your valid data here
              }).toList()
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              TextEditingController nameController = TextEditingController();
              TextEditingController imageController = TextEditingController();
              TextEditingController descriptionController =
                  TextEditingController();
              // TextEditingController timeController = TextEditingController();
              return Dialog(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Name
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nameController.text = value!;
                          },
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(hintText: "Name"),
                        ),
                      ),
                      //Description
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: descriptionController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            descriptionController.text = value!;
                          },
                          keyboardType: TextInputType.text,
                          decoration:
                              const InputDecoration(hintText: "description"),
                        ),
                      ),
                      //Image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: imageController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter url';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            imageController.text = value!;
                          },
                          keyboardType: TextInputType.url,
                          decoration: const InputDecoration(hintText: "image"),
                        ),
                      ),
                      //time
                      /* Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: timeController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter time ';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            timeController.text = value!;
                          },
                          keyboardType: TextInputType.url,
                          decoration: const InputDecoration(hintText: "time"),
                        ),
                      ),*/
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(330, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          //Prees to add
                          onPressed: () async {
                            String name = nameController.text;
                            String image = imageController.text;
                            //  String time = timeController.text;
                            String description = descriptionController.text;
                            nameController.clear();
                            imageController.clear();
                            // timeController.clear();
                            descriptionController.clear();
                            var db = FirebaseFirestore.instance;

                            Map<String, dynamic> youth = {
                              'name': name,
                              'description': description,
                              'image': image,
                              // 'time': time,
                            };
                            await db.collection('youth').doc(name).set(youth);

                            Navigator.pop(context);
                          },
                          child: const Text('Submit'))
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
