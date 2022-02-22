// import 'package:encryption/screens/authorized.dart';
// import 'package:encryption/screens/files_page.dart';
// import 'package:encryption/screens/form_view.dart';
// import 'package:encryption/screens/select_file.dart';
// import 'package:encryption/screens/upload_page.dart';
// import 'package:encryption/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:jfg/screens/login_screens/screens/authorized.dart';
import 'package:jfg/screens/login_screens/screens/files_page.dart';
import 'package:jfg/screens/login_screens/screens/form_view.dart';
import 'package:jfg/screens/login_screens/screens/select_file.dart';
import 'package:jfg/utils/custom_color.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // Database database = Database();

  bool _isGrantingRequest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.dark,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.dark,
        // title: LogoWidget(textSize: 26),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: CustomColors.blue,
              child: IconButton(
                icon: Text(
                  "fdfdsgfd",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.shade,
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => UploadPage(),
          //   ),
          // );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SelectFile(),
            ),
          );
        },
        child: Icon(
          Icons.file_upload,
          color: CustomColors.brown,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0,bottom: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Files',
                        style: TextStyle(
                          color: CustomColors.shade,
                          fontSize: 20.0,
                          letterSpacing: 1.4,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FilesPage(),
                            ),
                          );
                        },
                        color: CustomColors.shade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            'VIEW',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: CustomColors.brown,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    'The files that you have uploaded are present here',
                    style: TextStyle(
                      color: CustomColors.shade,
                      fontSize: 12.0,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                // StreamBuilder(
                //   // stream: database.retrieveGrantedRequests(),
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData) {
                //       if (4 > 0) {
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    // width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightGreen.withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Authorized files',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AuthorizedPage(),
                                ),
                              );
                            },
                            color: Colors.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Text(
                                'SHOW',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: CustomColors.brown,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // }
                //   return Container();
                // }
                // return Container();
                //   },
                // ),
                // StreamBuilder(
                // stream: database.retrieveMyData(),
                // builder: (context, snapshot) {
                //   if (snapshot.hasData) {
                //     int waitingCount = snapshot.data['waiting'];
                //     if (waitingCount > 0) {
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    // width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: CustomColors.yellow.withOpacity(0.8),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Pending request',
                            style: TextStyle(
                              color: CustomColors.yellow,
                              fontSize: 16.0,
                            ),
                          ),
                          CircleAvatar(
                            radius: 16.0,
                            backgroundColor: CustomColors.yellow,
                            child: Text(
                              '4',
                              style: TextStyle(
                                color: CustomColors.brown,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // }
                // return Container();
                // }
        
                // return Container();
                //   },
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                  child: Container(
                    height: 1,
                    width: double.maxFinite,
                    color: Colors.white54,
                  ),
                ),
                // StreamBuilder(
                //   stream: database.retrievePendingRequests(),
                //   builder: (_, snapshot) {
                //     if (snapshot.hasData) {
                //       if (snapshot.data.documents.length > 0) {
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      // Map<String, dynamic> pendingRequestInfo =
                      //     snapshot.data.documents[index].data();
        
                      // String fileName = pendingRequestInfo['name'];
                      // String fileId = pendingRequestInfo['id'];
                      // String docId = pendingRequestInfo['doc_id'];
        
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: CustomColors.blue.withOpacity(0.8),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 0),
                            horizontalTitleGap: 0,
                            // leading: CircleAvatar(
                            //   radius: 20,
                            //   backgroundColor: CustomColors.blue,
                            //   child: IconButton(
                            //     icon: Text(
                            //       'M',
                            //       style: TextStyle(
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //     onPressed: () {},
                            //   ),
                            // ),
                            title: Row(
                              children: [
                                Text(
                                  'file: ',
                                  style: TextStyle(
                                    color: CustomColors.yellow,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'NDHS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            trailing: _isGrantingRequest
                                ? CircularProgressIndicator(
                                    valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.green,
                                    ),
                                  )
                                : RaisedButton(
                                    onPressed: () async {
                                      setState(() {
                                        _isGrantingRequest = true;
                                      });
                                      // await database.grantRequest(
                                      //     docId: docId, fileId: fileId);
                                      setState(() {
                                        _isGrantingRequest = false;
                                      });
                                    },
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 8.0, bottom: 8.0),
                                      child: Text(
                                        'GRANT',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 8),
                  ),
                ),
                //       }
                //       return Container();
                //     }
                //     return Container();
                //   },
                // ),
                Text(
                  'USERS',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14.0,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.0),
                // StreamBuilder(
                //   // stream: database.retrieveUsers(),
                //   builder: (_, snapshot) {
                // if (snapshot.hasData) {
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    // User userData = User.fromJson(
                    //     snapshot.data.documents[index].data());
                    return InkWell(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         OtherUserPage(user: userData),
                          //   ),
                          // );
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3.0,
                                color: CustomColors.blue.withOpacity(0.8),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 0),
                              horizontalTitleGap: 0,
                              // leading: CircleAvatar(
                              //   radius: 20,
                              //   backgroundColor: CustomColors.blue,
                              //   child: IconButton(
                              //     icon: Text(
                              //       'M',
                              //       style: TextStyle(
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //     onPressed: () {},
                              //   ),
                              // ),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Text(
                                  "Edwin",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: '',
                                    fontSize: 26.0,
                                  ),
                                ),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child:
                                    // builder: (context, snapshot) {
                                    // if (snapshot.hasData) {
                                    //   bool isAuthorized = snapshot.data;
                                    Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      true ? 'authorized' : 'not authorized',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: true
                                            ? Colors.lightGreen
                                            : CustomColors.red,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: true
                                          ? Colors.lightGreen
                                          : CustomColors.red,
                                    ),
                                  ],
                                ),
                                // }
                                // return Row(
                                //   mainAxisSize: MainAxisSize.min,
                                //   children: [
                                //     Text(
                                //       'not authorized',
                                //       style: TextStyle(
                                //         fontSize: 12,
                                //         color: CustomColors.red,
                                //         fontWeight: FontWeight.w600,
                                //       ),
                                //     ),
                                //     SizedBox(width: 8),
                                //     Icon(
                                //       Icons.circle,
                                //       size: 10,
                                //       color: CustomColors.red,
                                //     ),
                                //   ],
                                // );
                                // }),
                                //   ),
                                // ),
                              ),
                            )));
                    // },
        
                    // );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 8),
                ),
                SizedBox(height: 8),
                Text(
                  'Forms',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14.0,
                    letterSpacing: 1.4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(children: [
                  
                 
                // 
                //  ListView.separated(
                  // shrinkWrap: true,
                  // itemCount: 2,
                  // itemBuilder: (_, index) {
                  //   return 
                    GestureDetector(
                      onTap: (){
                          Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => FormView(),
                                    ),
                                  );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          // width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: CustomColors.yellow.withOpacity(0.8),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Basic Form',
                                  style: TextStyle(
                                    color: CustomColors.yellow,
                                    fontSize: 16.0,
                                  ),
                                ),
                              
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => FormView(),
                                    ),
                                  );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          // width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: CustomColors.yellow.withOpacity(0.8),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Medical  Form',
                                  style: TextStyle(
                                    color: CustomColors.yellow,
                                    fontSize: 16.0,
                                  ),
                                ),
                              
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => FormView(),
                                    ),
                                  );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                          // width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: CustomColors.yellow.withOpacity(0.8),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Professional Form',
                                  style: TextStyle(
                                    color: CustomColors.yellow,
                                    fontSize: 16.0,
                                  ),
                                ),
                              
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  
                   ],),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}