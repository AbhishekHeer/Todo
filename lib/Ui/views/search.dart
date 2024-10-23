import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/Ui/widgets/text.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

TextEditingController searchController = TextEditingController();

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: height * .05, horizontal: width * .02),
              child: SearchBar(
                controller: searchController,
                hintText: "Search Anything ...",
                hintStyle: WidgetStatePropertyAll(GoogleFonts.nunito()),
                trailing: [
                  const Icon(CupertinoIcons.search),
                  SizedBox(width: width * .04),
                ],
              ),
            ),
            SizedBox(
              height: height * .1,
            ),
            searchController.text.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(CupertinoIcons.chevron_up),
                      DisplayText.text("Search Here ...", 20, FontWeight.w600),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
