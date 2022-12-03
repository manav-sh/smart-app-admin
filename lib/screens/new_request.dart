import 'package:admin_app/cards/pending.dart';
import 'package:admin_app/constants/colors.dart';
import 'package:admin_app/constants/lists.dart';
import 'package:admin_app/constants/textstyles.dart';
import 'package:flutter/material.dart';

class NewRequest extends StatefulWidget {
  const NewRequest({super.key});

  @override
  State<NewRequest> createState() => _NewRequestState();
}

class _NewRequestState extends State<NewRequest> {
  var choosen = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('New Request Page'),
        backgroundColor: bgDark,
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Navigation between pending, approved and rejected
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navItem('Pending', 1),
              navItem('Approved', 2),
              navItem('Rejected', 3),
            ],
          ),
          menuDisplay(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  InkWell navItem(String itemText, int id) {
    return InkWell(
      onTap: () {
        setState(() {
          choosen = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: navBorder(id)
            ? const BoxDecoration(
                border: Border(bottom: BorderSide(color: bgDark, width: 3)),
              )
            : const BoxDecoration(),
        child: Text(
          itemText,
          style: navstyle,
        ),
      ),
    );
  }

  final postList = [
    const Pending(category: 'food', name: 'name'),
    const Pending(category: 'cloth', name: 'name2'),
  ];

  Widget menuDisplay() {
    if (choosen == 1) {
      // ignore: prefer_const_constructors
      return Expanded(
        child: ListView.builder(
          itemCount: pendinglist.length,
          itemBuilder: (context, index) =>
              const Pending(category: 'cloth', name: 'name2'),
        ),
      );
    } else if (choosen == 2) {
      return const Pending(category: 'food', name: 'name');
    } else if (choosen == 3) {
      return const Pending(category: 'food', name: 'name');
    } else {
      return const Text('Nothing chosen');
    }
  }

  bool navBorder(int id) {
    if (choosen == id) {
      return true;
    } else {
      return false;
    }
  }
}
