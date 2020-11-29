import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

    var n1=0,n2=0,ans=0;

    TextEditingController t1=TextEditingController(text:'');
    
    TextEditingController t2=TextEditingController(text:'');

  void add(){
    setState(() {
      n1=int.parse(t1.text);
      n2=int.parse(t2.text);
      ans=n1+n2;
    });

  }

void sub(){
    setState(() {
      n1=int.parse(t1.text);
      n2=int.parse(t2.text);
      ans=n1-n2;
    });

  }
  void mul(){
    setState(() {
      n1=int.parse(t1.text);
      n2=int.parse(t2.text);
      ans=n1*n2;
    });

  }
  void div(){
    setState(() {
      n1=int.parse(t1.text);
      n2=int.parse(t2.text);
      double a=n1/n2;
      ans=a.toInt();
    });

  }

   void pow(){
    setState(() {
      n1=int.parse(t1.text);
      n2=int.parse(t2.text);
      ans=1;
      while(n2>0){
        ans=ans*n1;
        n2=n2-1;
      }
    });
   }
  
void clear(){

  t1.text='0';
  t2.text='0';
}




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: Text(
            'CALCULATOR'
          ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Center(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width:300,
                          height:100,
                          child:ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Text(
                    'ANS : $ans',
                    style: TextStyle(
                      fontSize: 30.0,
                      color:Colors.red,
                    ),
                    ),
                            ],
                          )

                        )
                      ],
                    )
                  ),
                ),
              ],
            ),


            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "NUM 1"),
              controller: t1,

            ),
            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "NUM 1"),
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.green[100],
                  onPressed: add,
                  child: Text('+'),
                  ),
                  MaterialButton(
                    color: Colors.green[100],
                  onPressed: sub,
                  child: Text('-'),
                  ),
                  MaterialButton(
                    color: Colors.green[100],

                    onPressed:pow,
                    child: Text('^'), 
                    )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.green[100],
                  onPressed: mul,
                  child: Text('*'),
                  ),
                  MaterialButton(
                    color: Colors.green[100],
                  onPressed: div,
                  child: Text('/'),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.green[100],
                  onPressed: clear,
                  child: Icon(Icons.clear,
                  color: Colors.black,
                  
                  )
      
                  )
              ],
            )
          ],
        ),
      )
    );
  }
}