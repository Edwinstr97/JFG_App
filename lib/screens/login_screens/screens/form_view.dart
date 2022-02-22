

// import 'package:csv/csv.dart';
// import 'package:encryption/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:jfg/utils/custom_color.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:csv/csv.dart';
import 'package:flutter/material.dart';

// import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
// import 'package:random_string/random_string.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  List<String> userSearchItems = ["sfgssf", "fgsd", "FDgfd"];
  final textTitleString = TextEditingController();
  final textPriceString = TextEditingController();
  final textDescriptionString = TextEditingController();
  final textQuantityString = TextEditingController();
  final textTaxonomyString = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.dark,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.dark,
        title: Text(
          'Forms',
          style: TextStyle(
            color: CustomColors.blue,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, right: 16.0, bottom: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Form:3219 ',
                    style: TextStyle(
                      color: CustomColors.yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Medical Records',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1.4),
                  ),
                ],
              ),
              Visibility(
                visible: true,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 30.0),
                  child: TextField(
                    enabled: true,
                    controller: textTitleString,
                    // focusNode: _textFocusNodePassphrase,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    cursorColor: CustomColors.blue,
                    autofocus: false,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _passphrase = value;
                    //   });
                    // },
                    onSubmitted: (value) {
                      // setState(() {
                      //   _validateString(value);
                      // });
                      // _textFocusNodePassphrase.unfocus();
                    },
                    style: TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue.withOpacity(0.5),
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      hintText: "Type your Name",
                      fillColor: Colors.white10,
                      errorStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: true,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 30.0),
                  child: TextField(
                    enabled: true,
                    controller: textPriceString,
                    // focusNode: _textFocusNodePassphrase,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    cursorColor: CustomColors.blue,
                    autofocus: false,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _passphrase = value;
                    //   });
                    // },
                    onSubmitted: (value) {
                      // setState(() {
                      //   _validateString(value);
                      // });
                      // _textFocusNodePassphrase.unfocus();
                    },
                    style: TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue.withOpacity(0.5),
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      hintText: "Type your Blood Type",
                      fillColor: Colors.white10,
                      errorStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: true,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 30.0),
                  child: TextField(
                    enabled: true,
                    // controller: _textControllerPassphrase,
                    // focusNode: _textFocusNodePassphrase,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    cursorColor: CustomColors.blue,
                    autofocus: false,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _passphrase = value;
                    //   });
                    // },
                    onSubmitted: (value) {
                      // setState(() {
                      //   _validateString(value);
                      // });
                      // _textFocusNodePassphrase.unfocus();
                    },
                    style: TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue.withOpacity(0.5),
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      hintText: "Type your SSN",
                      fillColor: Colors.white10,
                      errorStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: true,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 30.0),
                  child: TextField(
                    enabled: true,
                    // controller: _textControllerPassphrase,
                    // focusNode: _textFocusNodePassphrase,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    cursorColor: CustomColors.blue,
                    autofocus: false,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _passphrase = value;
                    //   });
                    // },
                    onSubmitted: (value) {
                      // setState(() {
                      //   _validateString(value);
                      // });
                      // _textFocusNodePassphrase.unfocus();
                    },
                    style: TextStyle(color: Colors.white),
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue.withOpacity(0.5),
                          width: 3,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: CustomColors.blue,
                          width: 3,
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.white70,
                      ),
                      hintText: "Type your Address",
                      fillColor: Colors.white10,
                      errorStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: RaisedButton(
                  color: CustomColors.blue,
                  onPressed: () async{
                    userSearchItems.add(textPriceString.text);
                    userSearchItems.add(textTitleString.text);
                    List<List<String>> data = [
                      ["No.", "Name", "Roll No."],
                      ["Nme", textPriceString.text, textTitleString.text],
                      ["2", textPriceString.text, textTitleString.text],
                      ["3", textPriceString.text, textTitleString.text]
                    ];
                    // print(data);
                    // print(userSearchItems);
                    // // String csvData = ListToCsvConverter().convert(data);
                    // // print(csvData);
                    // // final  directory =(await getExternalStorageDirectory())!.absolute.path + "/documents";
                    // // final path = "$directory/csv-${DateTime.now()}.csv";
                    // print(path);
                    // //  File(fileBits, fileName) file = File(result.files.single.path);
                    // final File file = File(path);
                    // await file.writeAsString(csvData);
                    //              Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => UploadPage(),
                    //   ),
                    // );
                    // setState(() {
                    //   _currentUploadProgressPhase = 0;
                    //   _checkIfValidString = true;
                    // });
                    // if (_validateString(
                    //         _textControllerPassphrase.text) ==
                    //     null) {
                    //   blockConnector.initializeClient();
                    //   setState(() {
                    //     _isUploading = true;
                    //     _currentUploadProgressPhase = 2;
                    //   });
                    //   blockConnector.initializeClient();
                    //   await _processTransaction(
                    //       SampleData.sampleMatrix);
                    //   setState(() {
                    //     _isUploading = true;
                    //     _currentUploadProgressPhase = 3;
                    //   });
                    //   String fileURL = await uploadFile(
                    //     File(_selectedFile.files.single.path),
                    //     _selectedFile.files.single.extension,
                    //   );
                    //   setState(() {
                    //     _currentUploadProgressPhase = 4;
                    //     _isUploading = false;
                    //   });
                    //   await _database.addFileData(
                    //     fileNameEncrypted: currentTimeString,
                    //     fileName: _selectedFile.files.single.name,
                    //     fileURL: fileURL,
                    //     txHashes: hashList,
                    //   );
                    // }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: true ? Colors.white54 : Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
