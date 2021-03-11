import 'package:QRGen/Views/Widgets/Homepage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QRGen'),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 4,
        child: ListView(
          children: [

            Container(child: TabBar(
              tabs: [

                Tab( 
                child: Text('HOME', style: TextStyle(color: Colors.green))),              
                Tab(child: Text('CODES', style: TextStyle(color: Colors.green))),
                Tab(child: Text('SCAN', style: TextStyle(color: Colors.green))),
                Tab(child: Text('ABOUT', style: TextStyle(color: Colors.green)))
              ],
            ),),

             Container(
               height: MediaQuery.of(context).size.height*.8,
               child: 
             TabBarView(children: [
              Homepage(),
              Center(child: Text('All generated codes')),
              Center(child: Text('Scan code')),
              Center(child: Text('About page')),
            ])),
            
          ],
        ),
      ),
    );
  }
}
