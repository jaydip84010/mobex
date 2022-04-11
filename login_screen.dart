import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../main.dart';
import 'usermodel.dart';
import 'update_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = storeA.name;
    image.text = storeA.image;
    email.text = storeA.email;
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Text(storeA.name),
            Text(storeA.image),
            Text(storeA.email),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UpdateScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      color: Colors.green,
                      child: Center(child: Text('Next')),
                    ),
                  )
            // Container(
            //   height: 400,
            //   width: 300,
            //   child: Form(
            //       child: Column(
            //     children: [
            //       TextFormField(
            //         decoration: InputDecoration(
            //             hintText: "name",
            //             labelText: 'name',
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10))),
            //         controller: name,
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       TextFormField(
            //           controller: image,
            //           decoration: InputDecoration(
            //               hintText: "image",
            //               labelText: 'image',
            //               border: OutlineInputBorder(
            //                   borderRadius: BorderRadius.circular(10)))),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       TextFormField(
            //         decoration: InputDecoration(
            //             hintText: "email",
            //             labelText: 'email',
            //             border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(10))),
            //         controller: email,
            //       ),
            //       SizedBox(height: 10),
            //       InkWell(
            //         onTap: () {
            //           Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => UpdateScreen()));
            //         },
            //         child: Container(
            //           height: 50,
            //           width: 80,
            //           color: Colors.green,
            //           child: Center(child: Text('Next')),
            //         ),
            //       )
            //     ],
            //   )),
            // )
          ],
        )),
      );
    });
  }
}
