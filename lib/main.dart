import 'package:flutter/material.dart';

void main() => runApp(Page01());


class Page01 extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        //drawerScrimColor: Color.fromARGB(255, 245, 242, 75),
        //backgroundColor: Color.fromARGB(255, 218, 100, 225) ,
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 229, 68, 218),
            title: Text('師虎來了',),
            centerTitle: true,
          ),
          body: _Page01()
      ),
    );
  }
}


class _Page01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
     child: ElevatedButton(
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Page02()));},
      child:  Text('Go to Page02'),),)
      
      );
    
  }
}


class Page02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page02'),
      ),
      body: _Page02(),
    );
  }
}


class _Page02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page02'),
    );
  }
}