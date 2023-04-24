import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/page/ait_namas.dart';
import 'package:flutter_application_1/page/besh_ubak.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/page/nafil_namaz.dart';

import '../constants/colors.dart';

class PageNamaz extends StatefulWidget {
  const PageNamaz({Key? key}) : super(key: key);

  @override
  _PageNamazState createState() => _PageNamazState();
}

class _PageNamazState extends State<PageNamaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 45,
          ),
        ),
        backgroundColor: Appcolors.appBar,
        title: const Text(
          "Намаз",
          style: TextStyle(color: Appcolors.textNz, fontSize: 27),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Appcolors.lineappr,
              height: 1.7,
            )),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BeshUbak()),
                    );
                  },
                  child:
                      CardNamaz(fonCard: Image.asset(Assets.png.namaz.path))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AitNamas()),
                    );
                  },
                  child: CardNamaz(
                      fonCard: Image.asset(Assets.png.aitNamaz.path))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NafilNamaz()),
                    );
                  },
                  child: CardNamaz(
                      fonCard: Image.asset(Assets.png.nafilNamaz.path))),
            ],
          ),
        ],
      ),
    );
  }
}

class CardNamaz extends StatelessWidget {
  const CardNamaz({
    super.key,
    required this.fonCard,
  });
  final Image fonCard;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: fonCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
