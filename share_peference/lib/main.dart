import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp( MaterialApp(
      home: HomePage(),
  )

  );

}

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter=0;
initPreference() async{
  SharedPreferences sharedPreferencesVar=await SharedPreferences.getInstance();
  int storeValue= (sharedPreferencesVar.getInt("counter")??0);
  setState( (){
    this.counter=storeValue;
  });
}

  @override
  void initState(){
  this.initPreference();
    super.initState();
  }

  increment()async {
  SharedPreferences sharedPreferencesIncrement= await SharedPreferences.getInstance();
    setState((){
      this.counter++;
      sharedPreferencesIncrement.setInt("counter", this.counter);
    });
  }
 decrement()async{
   SharedPreferences sharedPreferencesDecrement= await SharedPreferences.getInstance();
    setState((){
      this.counter--;
      sharedPreferencesDecrement.setInt("counter", this.counter);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Share Peference"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter",style: TextStyle(fontSize: 33.0),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                RaisedButton(
                  child: Text("+"),
                    onPressed: (){
                    this.increment();
                    }
                ), RaisedButton(
                  child: Text("-"),
                    onPressed: (){
                    this.decrement();
                    }
                ),
              ],
            )
          ],

        ),

    );
  }
}

