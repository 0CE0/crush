
// ignore: avoid_web_libraries_in_flutter


import 'package:flutter/material.dart';
import 'package:test000/medin.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.youtube.com/watch?v=dQw4w9WgXcQ');

void main() => runApp(Page01());


class Page01 extends StatelessWidget{
  

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        //drawerScrimColor: Color.fromARGB(255, 245, 242, 75),
        //backgroundColor: Color.fromARGB(255, 218, 100, 225) ,
          drawer:  Drawer(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                  height: 100,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),

    ),
                  Container(
                  height: 100,
                  color: Colors.amber[500],
                  child: const ElevatedButton(onPressed: _launchUrl,
                  child: Text('SHOW'),
                  )
                  ),
      
  
                  Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry C')),
    ),
    
  ],),
              // child: SizedBox(
              //   width: 51.6,
              //   height: 51.6,
              //   child: CircleAvatar(
              //     child: Text('IU'),
                  
              //   ),
                
              // ),
              
            ),
            
            

          ),
          
          
          
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 229, 68, 218),
            title: const Text('師虎來了',),
            centerTitle: true,  //置中
          ),     //介面額頭
          body: _Page01()
      ),
    );
  }
  

}
            Future<void> _launchUrl() async{
                    if (!await launchUrl(_url)) {
    // ignore: prefer_typing_uninitialized_variables
    var url;
    throw 'Could not launch $url';
                    }
                  }


class _Page01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
      child: Column(
     children: <Widget>[
      ElevatedButton(child: const Text('Go to Page02'),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Page02()));}),
      //跳轉到Page02
      ElevatedButton(child: const Text('data'),
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);}),
      ElevatedButton(child: const Text('call me on my cell phone '),
      // ignore: deprecated_member_use
      onPressed:( () {launch("tel:0925160729");})),
      ]
      )
      )
    );
  }
  
 
}


class Page02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page02'),
      ),
      body: _Page02(),
    );
  }
}


class _Page02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row( 
         
      children: [
      Expanded(
        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsmjin4vUeCBn2DDfeC8j5yBl9ur1rd-3mcw&usqp=CAU'),
      
      ), //圖片以網址開啟
      const Icon(Icons.arrow_forward_ios,
      size: 14,
      color: Color.fromRGBO(58, 137, 248, 1),
      ),
       ],
  
    );
  }
}