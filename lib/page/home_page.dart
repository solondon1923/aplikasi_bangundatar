import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
          "Home Page"
          ,style: TextStyle(color: Colors.white
      )),
      backgroundColor: Color(0xFF11D24F),
    ),
      body: ListView(
        children: const [
          Row(
            children: [
             Expanded(child: CustomMenu(imageAsset: "assets/segitiga.png",title: "Segitiga" )),
             Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg",title: "Persegi" )),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.png",title: "Lingkaran" )),
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.png",title: "Persegi Panjang" )),
            ],
          ),
        ],
      )
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
     color: Colors.green.shade300,
     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
     child: Column(
       children: [
         Image.asset(imageAsset, height: 100,),
         Text(title, style: TextStyle(color: Colors.white),),
       ],
     ));
  }
}
