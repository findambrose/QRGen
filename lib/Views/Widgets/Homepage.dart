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
                fontStyle: FontStyle.italic, fontSize: 19, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 7,
          ),
          Form(
            key: _key,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    textAlign: TextAlign.justify,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
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

                      contentPadding: EdgeInsets.only(top: 0, bottom: 30,  left: 10),
                      hintText: 'Enter text to generate QR for.. \n \ne.g www.findambrose.ga, 8801324, \n\nambkyusya@gmail.com, 0790679085.\n\n\n\n\n\n\n\n\n\n\n',
                      labelText: 'Content',
                      labelStyle: TextStyle(fontSize: 20, color: Colors.green)
                    ),
                  ),
                ),
                SizedBox(height: 17),
                RaisedButton(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.purple,
                  onPressed: () {},                                
                    child: Text('Generate QR', style: TextStyle(fontSize: 19),),
                  ),
             
              ],
            ),
          )
        ],
      ),
    );
  }
}
