import 'package:flutter/material.dart';

class seperate extends StatefulWidget {
  const seperate({super.key});

  @override
  State<seperate> createState() => _customState();
}

class _customState extends State<seperate> {
  @override
  Widget build(BuildContext context) {
    var arrName = ['Anurag', 'Akshay', 'Ashokan', 'Radha', 'Jishna'];

    return Scaffold(
      appBar: AppBar(title: Text("List viewseperate Sample")),
      body: Stack(
        children: [
          ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    arrName[index],
                    style: TextStyle(fontSize: 26),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 100,
                  thickness: 5,
                );
              },
              itemCount: arrName.length)
        ],
      ),
    );
  }
}
