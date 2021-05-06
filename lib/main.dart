import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.deepPurple
     ),
     home: HomePage(),
     debugShowCheckedModeBanner: false,
   );
  }
}

 class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("calculator")),
            body: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w200
                        )
                      )
                    )
                  ),
                  Row(
                    children: <Widget>[
                      customOutlineButton("9"),
                      customOutlineButton("8"),
                      customOutlineButton("7"),
                      customOutlineButton("+")
                    ]
                  ),
                  Row(
                      children: <Widget>[
                        customOutlineButton("6"),
                        customOutlineButton("5"),
                        customOutlineButton("4"),
                        customOutlineButton("-"),
                      ]
                  ),
                  Row(
                      children: <Widget>[
                        customOutlineButton("3"),
                        customOutlineButton("2"),
                        customOutlineButton("1"),
                        customOutlineButton("X"),
                      ]
                  ),
                  Row(
                      children: <Widget>[
                        customOutlineButton("C"),
                        customOutlineButton("0"),
                        customOutlineButton("="),
                        customOutlineButton("/"),
                      ]
                  )
                ]
              )
            )
    );
  }

  Widget customOutlineButton(String val) {
    return Expanded(
        child: OutlineButton(
        padding: EdgeInsets.all(30.0),
        onPressed: ()=>btnClicked(val),
        child: Text(
           val,
           style: TextStyle(fontSize: 30.0),
         ),
        ),
      );
  }
  void btnClicked(String btnText)
  {
    print(btnText);
  }
}
 int first, second;
 String res, text= "";
 String opp;
 void btnClicked(String btnText) {
   if (btnText == "C") {
     res = "";
     text = "";
     first = 0;
     second = 0;
   } else if (btnText == "+" ||
       btnText == "-" ||
       btnText == "X" ||
       btnText == "/") {
     first = int.parse(text);
     res = "";
     opp = btnText;
   }
   else if (btnText == "=")
   {
     second = int.parse(text);

     if (opp == "+") {
       res = (first + second).toString();
     }

     if (opp == "-") {
       res = (first - second).toString();
     }

     if (opp == "X") {
       res = (first * second).toString();
     }

     if (opp == "/") {
       res = (first ~/ second).toString();
     }

   } else {
     res = int.parse(text + btnText).toString();
   } 
   setState(() {
     text = res;
   });
 }

void setState(Null Function() param0) {
}



