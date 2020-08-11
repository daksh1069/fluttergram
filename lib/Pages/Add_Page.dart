import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttergram/Forms/Sign_Up_Form.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fluttergram/Components/constants.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  File image;
  final picker = ImagePicker();
  String caption;
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      image = File(pickedFile.path);
    });
  }

  //Map userDatabase = Map<String, UserData>();
  final _captionFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add A Post'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
      body: Column(
        children: [
          Center(
            child:
                image == null ? Text('No image selected.') : Image.file(image),
          ),
          Form(
            key: _captionFormKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      icon: Icon(
                        FontAwesomeIcons.child,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder(),
                      labelText: 'Enter a new Caption',
                      labelStyle: kAppBarTExtStyle,
                      focusedBorder: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Caption Can\'t be Empty';
                      }
                      caption = value;
                      userdata.setUsername(value);
                      return null;
                    },
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    if (_captionFormKey.currentState.validate()) {
                      Future.delayed(const Duration(milliseconds: 500), () {});
                    }
                    userdata.uploadPost(
                        value: Image.file(image), inputCaption: caption);
                  },
                  child: Text('Upload'),
                ),
                SizedBox(height: 50),
                RaisedButton(
                  onPressed: () {
                    if (_captionFormKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Processing Request'),
                        ),
                      );
                      Future.delayed(
                        const Duration(milliseconds: 1500),
                        () {
                          setState(
                            () {
                              Navigator.pop(context);
                            },
                          );
                        },
                      );
                    }
                  },
                  child: Text('Done'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
