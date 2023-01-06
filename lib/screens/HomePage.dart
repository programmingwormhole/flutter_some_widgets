import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  inputData() {
    print(_controller.text);
    print(_controller2.text);
    if (_formkey.currentState!.validate()) {}
  }

  @override
  void dispose() {
    _controller.clear();
    _controller2.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print('Menu Clicked');
          },
          tooltip: 'Menu',
          // hoverColor: Colors.white,
          // focusColor: Colors.red,
          icon: Icon(
            Icons.menu_open,
          ),
          color: Colors.white,
          iconSize: 30,
        ),
        elevation: 0,
        leadingWidth: 20,
        shadowColor: Colors.red,
        backgroundColor: Colors.deepPurple,
        title: Text("NNV Coders", style: GoogleFonts.pacifico()),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
        actions: [
          IconButton(
            onPressed: () {
              print('Clicked');
            },
            tooltip: 'My Account',
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            iconSize: 30,
          )
        ],
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.length < 5)
                      return 'Please Provide At Last 5 Digit';
                  },
                  controller: _controller,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.length < 5)
                      return 'Please Provide At Last 5 Digit';
                  },
                  controller: _controller2,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                    onPressed: () {
                      inputData();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15)),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
              ),

              Center(
                child: Tooltip(
                    message: 'Text',
                    waitDuration: Duration(seconds: 1),
                    showDuration: Duration(seconds: 1),
                    padding: EdgeInsets.all(12),
                    height: 35,
                    verticalOffset: 100,
                    preferBelow: true,
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10)),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            offset: new Offset(6.0, 6.0),
                          ),
                        ],
                        color: Colors.greenAccent[400]),
                    child: Center(
                      child: Text(
                        'Tooltip Text, Long Press To Show Button',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,100,0,0),
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      width: 500,
                      color: Colors.red,
                    ),
                    Center(child: Text('Developed By NNV Coders', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              //   child: TextFormField(
              //     minLines: 1,
              //     maxLength: 50,
              //     autofillHints: ['Hello'],
              //     controller: _controller2,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(
              //     backgroundColor: Colors.blueAccent,
              //     elevation: 5,
              //     padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              //     shadowColor: Colors.black,
              //   ),
              //   onPressed: () {},
              //   child: Text(
              //     'Login',
              //     style: TextStyle(color: Colors.white),
              //   ),
              // ),
              // Divider(
              //   height: 20,
              //   thickness: 0.0,
              //   indent: 500,
              //   endIndent: 50,
              //   color: Colors.black,
              // ),
              // Center(
              //   child: Container(
              //     height: 100,
              //     width: 300,
              //     color: Colors.green,
              //     child: Center(
              //       child: Text(
              //         'Hello Coders',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
