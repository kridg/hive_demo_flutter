import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //reference the box
  final _mybox=Hive.box('mybox');

  //method for writing data
  void writeData(){
    _mybox.put(2, 'Ghale');

  }
  //read data
  void readData(){
    print(_mybox.get(2));
  }
  //delete data
  void deleteData(){
    _mybox.delete(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              child: Text('Write'),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: readData,
              child: Text('Read'),
              color: Colors.blue[200],
            ),
            MaterialButton(
              onPressed: deleteData,
              child: Text('Delete'),
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }
}
