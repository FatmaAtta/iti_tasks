import 'package:flutter/material.dart';

class ImageSwitch extends StatefulWidget {
  const ImageSwitch({super.key});

  @override
  State<ImageSwitch> createState() => _ImageSwitchState();
}

class _ImageSwitchState extends State<ImageSwitch> {
  String img1 = 'assets/pic1.jpg';
  String img2 = 'assets/pic2.jpg';
  String img3 = 'assets/pic3.jpg';
  String img4 = 'assets/banner.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 220, child: (Image.asset(img1))),
              SizedBox(width: 220, child: (Image.asset(img2))),
            ],
          )),
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 220, child: (Image.asset(img3))),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: (Row(
              children: [
                SizedBox(width: 470, child: (Image.asset(img4))),
              ],
            )),
          ),
          SizedBox(
            width: 470,
            height: 50,
            child: ElevatedButton.icon(
                onPressed: () {
                  String temp1 = img1;
                  String temp2 = img3;
                  setState(() {
                    img1 = img2;
                    img2 = temp1;
                    img3 = img4;
                    img4 = temp2;
                  });
                },
                icon: Icon(Icons.restart_alt),
                label: Text('Switch')),
          )
        ],
      ),
    ));
  }
}
