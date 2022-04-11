import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobexproj/store_a.dart';
import 'package:mobexproj/store_a.dart';
import '../main.dart';
import 'usermodel.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Observer(builder: (context) {
        return Scaffold(
            body: Column(
          children: [
            Container(
              height: 400,
              width: 300,
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "name",
                        labelText: 'name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: image,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "email",
                          labelText: 'email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "password",
                        labelText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller: email,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      storeA.changeName(name.text);
                      storeA.changeEmail(email.text);
                      storeA.changeImage(image.text);
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      color: Colors.green,
                      child: Center(child: Text('submit')),
                    ),
                  )
                ],
              )),
            )
          ],
        ));
      }),
    );
  }
}
