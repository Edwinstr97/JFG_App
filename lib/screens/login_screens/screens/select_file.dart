
import 'package:flutter/material.dart';
import 'package:jfg/screens/login_screens/screens/upload_page.dart';
import 'package:jfg/utils/custom_color.dart';
class SelectFile extends StatefulWidget {
  const SelectFile({ Key? key }) : super(key: key);

  @override
  _SelectFileState createState() => _SelectFileState();
}

class _SelectFileState extends State<SelectFile> {
  @override
  Widget build(BuildContext context) {
  
  
    return GestureDetector(
      onTap: () {
        
        // setState(() {
        //   _validateString(_textControllerPassphrase.text);
        // });
        // _textFocusNodePassphrase.unfocus();
      },
      child: Scaffold(
        backgroundColor: CustomColors.dark,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.dark,
          title: Text(
            'Upload',
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
                      'uploader: ',
                      style: TextStyle(
                        color: CustomColors.yellow,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Edwin',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 1.4),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: 
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Container(
//                                 width: double.maxFinite,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20.0),
//                                   border: Border.all(
//                                       color:
//                                           CustomColors.shade.withOpacity(0.8),
//                                       width: 3),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Row(
//                                     children: [
//                                       Icon(
//                                         Icons.insert_drive_file_outlined,
//                                         size: 60,
//                                         color: CustomColors.blue,
//                                       ),
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(left: 8.0),
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               children: [
//                                                 Text(
// "dfgfdsg",
//                                                   style: TextStyle(
//                                                     color: CustomColors.yellow,
//                                                     fontSize: 18.0,
//                                                     fontWeight: FontWeight.w600,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(height: 5.0),
//                                             Row(
//                                               children: [
//                                                 Text(
//                                                   'size: ',
//                                                   style: TextStyle(
//                                                       color: CustomColors.shade,
//                                                       fontSize: 14.0),
//                                                 ),
//                                                 Text(
//                                                   ':FDG',
//                                                   style: TextStyle(
//                                                     color: CustomColors.yellow,
//                                                     fontSize: 14.0,
//                                                     fontWeight: FontWeight.w600,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           )
//                         : InkWell(
                           
                   Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                    color: CustomColors.shade, width: 3),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Click here\nto select a document',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 32.0,
                                        color:
                                            CustomColors.shade.withOpacity(0.8),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 30.0),
                                    Icon(
                                      Icons.add_circle,
                                      color: CustomColors.shade,
                                      size: 80,
                                    )
                                  ],
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
                        hintText: "Type your passphase",
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
                      top: 0.0,
                      bottom: 30.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LinearProgressIndicator(
                          backgroundColor: Colors.white12,
                          // the value of the progress (b/t: 0.0 - 1.0),
                          // setting to null turns to infinite
                          value:
                              2,
                          valueColor: new AlwaysStoppedAnimation<Color>(
                            CustomColors.blue,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          ' 0 ? 0 : processedTx / totalTx)) / 2) * 100).toStringAsFixed(0)}%) . . .',
                          style: TextStyle(
                            color: CustomColors.blue,
                            letterSpacing: 2,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: RaisedButton(
                    color: CustomColors.blue,
                    onPressed: () {
                       Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => UploadPage(),
            ),
          );
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
                        'UPLOAD',
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
      ),
    );
  }
}