import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/Ui/views/addnote.dart';
import 'package:todo_app/Ui/views/homebody.dart';
import 'package:todo_app/Ui/views/search.dart';
import 'package:todo_app/strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: height * .1,
        title: Text(
          'Notes',
          style: GoogleFonts.nunito(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: width * .04),
              width: width * .14,
              decoration: const BoxDecoration(
                  color: buttonbgcolor, shape: BoxShape.circle),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  child: const Icon(CupertinoIcons.search),
                ),
              )),
          Container(
            margin: EdgeInsets.only(right: width * .04),
            width: width * .14,
            decoration: const BoxDecoration(
                color: buttonbgcolor, shape: BoxShape.circle),
            child: const Center(
              child: Icon(CupertinoIcons.info),
            ),
          ),
        ],
      ),
      body: const Homebody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: height * .02),
          height: height * .08,
          width: width * .2,
          decoration:
              const BoxDecoration(color: buttonbgcolor, shape: BoxShape.circle),
          child: Center(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Addnote()),
                  );
                },
                child: const Icon(CupertinoIcons.add)),
          )),
    );
  }
}
