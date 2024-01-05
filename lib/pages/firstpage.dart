

import 'package:flutter/material.dart';
import 'package:lab6_642021148/hobby.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Hobby> hobbies = [];
  List _selectedItem = [];
  bool box = false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    hobbies = Hobby.getHobby();
    print(hobbies);
  }

  List<Widget> createCheckbox() {
    List<Widget> widget = [];
    
    for (var hb in hobbies) {
      widget.add(CheckboxListTile(
      value: hb.value, 
      onChanged: (value) {
        setState(() {
          hb.value = value!;
          if(value) {
            _selectedItem.add(hb.name);
          }else {
            _selectedItem.remove(hb.name);
          }
        });
      },
      title: Text(hb.name),
      ));
      
    }

   
      return widget;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab6"),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 224, 102, 31),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: createCheckbox()
          ),
          Text(
           _selectedItem.toString(),
            style: const TextStyle(fontSize: 10, color: Colors.black),
          ),


          
        ],
      ),
    );
  }
}
