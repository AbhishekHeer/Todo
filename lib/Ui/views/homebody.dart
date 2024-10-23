import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/backend/storenotes.dart';

class Homebody extends StatefulWidget {
  const Homebody({super.key});

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Storenotes.notes.isEmpty
        ? Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * .09),
                child: const Center(
                  child: Image(
                    image: AssetImage("Assets/Images/createnote.png"),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Create your first note !",
                  style: GoogleFonts.nunito(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              )
            ],
          )
        : ListView.builder(
            itemCount: Storenotes.notes.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                    vertical: height * .01, horizontal: width * .05),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(height * .02)),
                child: ListTile(
                    leading: Text(
                      "${index + 1}",
                      style: GoogleFonts.nunito(
                          fontSize: width * .04, color: Colors.black),
                    ),
                    title: Text(
                      Storenotes.notes[index].title,
                      style: GoogleFonts.nunito(
                          fontSize: height * .02, color: Colors.black),
                    ),
                    subtitle: Text(
                      Storenotes.notes[index].description,
                      style: GoogleFonts.nunito(
                          fontSize: height * .015, color: Colors.black),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Storenotes.remove(index);
                        setState(() {});
                      },
                      child: const Icon(
                        CupertinoIcons.delete,
                        color: Colors.black,
                      ),
                    )),
              );
            });
  }
}
