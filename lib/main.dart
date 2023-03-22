import 'package:e_cure_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eCure Application',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: SearchPage(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            //thetotal heigh of the container is 45% of hte total height
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(210, 243, 230, 0.984),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/ecureLogo.png"),
              ),
            ),
          ), 
          
          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good Day",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),])))
                      /*
                      TextField(
                        // padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                        style: TextStyle(color: Color.fromRGBO(32, 63, 50, 0.976)),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF8F8F8),
                            border: OutlineInputBorder(
                           //   borderRadius: BorderRadius.circular(29.0),
                            //  borderSide: BorderSide.none,
                            ),
                            hintText: "search",
                            prefixIcon: Icon(Icons.search),
                             prefixIconColor: Color.fromRGBO(164, 199, 185, 0.98),
                            ),
                      ),
                    ],
                  ))),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: const [
              Text(
                "seeeearch",
                style: TextStyle(color: Color.fromARGB(255, 177, 31, 31)),
              )
            ]),
          )*/
        ],
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Container(
                child: Stack(
                children: <Widget>[
          Container( 
            padding: EdgeInsets.all(16),
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(210, 243, 230, 0.984),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/ecureLogo.png"),
              ),
            ),),SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good Day",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),])))
            ]
                )
              ),
              
              SizedBox(
                height: 20.0,
              ),
              TextField(
                style: TextStyle(color: Color.fromRGBO(32, 63, 50, 0.976)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF8F8F8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(29.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "search",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color.fromRGBO(164, 199, 185, 0.98),
                ),
              ),
           
            ],
          )
          ),
    );
  }
}
/*  children: <Widget>[
          Container(
            //thetotal heigh of the container is 45% of hte total height
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(210, 243, 230, 0.984),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/ecureLogo.png"),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Good Day",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),*/