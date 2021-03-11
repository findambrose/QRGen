import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Type text then press generate button.',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: 17, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Form(
            key: _key,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      fillColor: Colors.green.shade200,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple
                        ),
                        borderRadius: BorderRadius.circular(7)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green
                        ),
                        borderRadius: BorderRadius.circular(7)) ,
                      contentPadding: EdgeInsets.only(top:10, bottom: 140,  left: 10),
                      hintText: 'Enter text to generate QR for.. e.g www.findambrose.ga',
                      labelText: 'Content',
                      labelStyle: TextStyle(fontSize: 17, color: Colors.purple)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.purple,
                  onPressed: () {},
                  child: Text('Generate QR'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
