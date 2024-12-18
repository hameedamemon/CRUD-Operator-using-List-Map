import 'package:crud_opertator_using_list_map/contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();
  List< contact> contactlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: contactlist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contactlist[index].name),
                Text(contactlist[index].contactNo),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          TextField(
                            controller: namecontroller,
                          ),
                          TextField(
                            controller: contactcontroller,
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                              if (namecontroller.text.isNotEmpty &&
                                  contactcontroller.text.isNotEmpty) {
                                // contactlist.add(
                                //  namecontroller.text.name,
                                // contactcontroller.text,
                                // );
                                contactlist.add(contact(
                                    name: namecontroller.text,
                                    contactNo: contactcontroller.text));
                                namecontroller.clear();
                                contactcontroller.clear();
                              }
                            });
                          },
                          child: Text("Save"))
                    ],
                  );
                });
          }),
    );
  }
}
