import 'package:flutter/material.dart';
import 'package:todo_app/Ui/views/home.dart';
import 'package:todo_app/Ui/widgets/snackbarservice.dart';
import 'package:todo_app/backend/storenotes.dart';

class Alertdailogg {
  static alertdailogg(BuildContext context, String titl, Widget content, height,
      width, TextEditingController title, TextEditingController description) {
    return showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(titl),
            content: content,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height * .04,
                    width: width * .3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * .01),
                        color: Colors.white24),
                    child: Center(
                      child: InkWell(
                          onTap: () {
                            Storenotes.addnote(title.text, description.text)
                                .then((value) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
                              Snackbarservice.showSnackBar(
                                  context, "Added Notes Successfully");
                            });
                          },
                          child: const Text("Save")),
                    ),
                  ),
                  SizedBox(width: width * .06, height: 0.0),
                  Container(
                    height: height * .04,
                    width: width * .3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * .01),
                        color: Colors.red),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Center(
                        child: Text("Discard"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
