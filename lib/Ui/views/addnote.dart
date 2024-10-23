import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Ui/widgets/text.dart';
import 'package:todo_app/strings.dart';

class Addnote extends StatefulWidget {
  const Addnote({super.key});

  @override
  State<Addnote> createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: height * .1,
          title: Container(
              margin: EdgeInsets.only(right: width * .04),
              width: width * .14,
              height: height * .07,
              decoration: const BoxDecoration(
                  color: buttonbgcolor, shape: BoxShape.circle),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(CupertinoIcons.left_chevron),
                ),
              )),
          actions: [
            Container(
                margin: EdgeInsets.only(right: width * .04),
                width: width * .14,
                decoration: const BoxDecoration(
                    color: buttonbgcolor, shape: BoxShape.circle),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(CupertinoIcons.eye),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(right: width * .04),
              width: width * .14,
              decoration: const BoxDecoration(
                  color: buttonbgcolor, shape: BoxShape.circle),
              child: const Center(
                child: Icon(Icons.save),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DisplayText.textfie(TextEditingController(), "Title", 30),
                DisplayText.textfie(
                    TextEditingController(), "Type Something here ...", 16),
              ],
            ),
          ),
        ));
  }
}
