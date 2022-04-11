import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobexproj/screens/login_screen.dart';
import 'store_a.dart';

StoreA storeA = StoreA();

void main() {
  runApp(MaterialApp(
    home: LogInScreen(),
  ));
}

class MobexProj extends StatefulWidget {
  const MobexProj({
    Key? key,
  }) : super(key: key);

  @override
  State<MobexProj> createState() => _MobexProjState();
}

class _MobexProjState extends State<MobexProj> {
  // ImagePicker pick = ImagePicker();
  // var image;
  StoreA _storeA = StoreA();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // camera() async {
  //   var picked = await pick.pickImage(source: ImageSource.camera);
  //   var _image = picked?.path;
  //   setState(() {
  //     image = _image;
  //   });
  // }
  //
  // gallery() async {
  //   var picked = await pick.pickImage(source: ImageSource.gallery);
  //   var _image = picked?.path;
  //   setState(() {
  //     image = _image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // InkWell(
              //     child: Container(
              //         height: 50,
              //         width: 50,
              //         decoration: BoxDecoration(
              //             color: Colors.green,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: Center(child: ClipRect(child: Image.file(image)))),
              //     onTap: () {
              //       camera();
              //     }),
              const SizedBox(
                height: 10,
              ),
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
                      controller: email,
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
                      controller: password,
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
