import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  List title = [
    "Web to PDF",
    "Text to PDF",
    "Edit PDF",
    "QR Scanner",
    "Invoice Gen",
    "Excel Sheet",
    "pptx Slider",
    "Notepad"
  ];

  List images = [
    "assets/images/web2pdf.png",
    "assets/images/text2pdf.png",
    "assets/images/edit_pdf.png",
    "assets/images/qr.png",
    "assets/images/invoice.png",
    "assets/images/excel.png",
    "assets/images/powerpoint.png",
    "assets/images/notepad.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set background color to transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueAccent, Colors.lightBlueAccent], // Add your desired gradient colors
            ),
          ),
        ),
        title: Text(
          "Rocket Scanner",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            scale: 1,
          ),
          GlassmorphicContainer(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            borderRadius: 0,
            blur: 20,
            alignment: Alignment.bottomCenter,
            border: 0,
            linearGradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
              const Color(0xFFffffff).withOpacity(0.1),
              const Color(0xFFFFFFFF).withOpacity(0.05),
            ], stops: const [
              0.1,
              1,
            ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.5),
                const Color((0xFFFFFFFF)).withOpacity(0.5),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 20,
                    childAspectRatio: 8/10
                  ),
                  itemCount: title.length, // Replace 'itemCount' with the actual number of items
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blueAccent.withOpacity(0.15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: Image.asset(
                              "${images[index]}",
                              width: 50,
                              height: 45,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Text(
                            "${title[index]}",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),

              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}