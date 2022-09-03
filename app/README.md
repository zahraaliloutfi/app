# app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
//stack 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(50))),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image(
                    width: 300,
                    height: 200,
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://imgix.bustle.com/uploads/getty/2018/4/10/9100b9e4-eee9-4b8e-87b4-629c2632f6a4-getty-89849244.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg',
                    ),
                  ),
                  Container(
                    width: 300,
                    color: Colors.black.withOpacity(0.6),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: const Text(
                      'cuty cats',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 189, 229, 205),
                          fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
//login
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailControler = TextEditingController();
  var passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailControler,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    hintText: 'Email Adress',
                    labelText: 'Email Adress',
                    //start
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
                onChanged: (String v) {
                  print(v);
                },
              ),
              SizedBox(
                height: 20,
              ),
              //----------password-------------------------------
              TextFormField(
                controller: passwordControler,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    hintText: 'password',
                    labelText: 'password',
                    //start
                    prefixIcon: Icon(Icons.lock),
                    //end
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    border: OutlineInputBorder()),
                onChanged: (String v) {
                  print(v);
                },
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    print(emailControler.text);
                    print(passwordControler.text);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don\'t have an account'),
                  TextButton(onPressed: () {}, child: Text('Register Now..'))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
//
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.jI93dPHH8N2jeA56aOgrQgHaJ7?pid=ImgDet&rs=1'),
            radius: 25.0,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Chats',
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w900),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromARGB(255, 102, 101, 101),
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 40,
                backgroundColor: Color.fromARGB(255, 102, 101, 101),
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )),
        ],
        // title: Text(
        //   'Chats',
        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        // ),
        // leading: Icon(
        //   Icons.supervised_user_circle_sharp,
        //   size: 50,
        // ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.camera_alt),
        //     tooltip: 'Open shopping cart',
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: const Icon(
        //       Icons.ramp_left_outlined,
        //     ),
        //     tooltip: 'Open shopping cart',
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Container(
            padding: EdgeInsetsDirectional.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(17),
              color: Colors.grey[300],
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text('Search')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('kitt cat kitt cat kitt cat',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.af5ea608b957d0e801d536ca283d8600?rik=282fWpPdctPkOA&riu=http%3a%2f%2fimages6.fanpop.com%2fimage%2fphotos%2f41000000%2fKitten-cats-41065198-1600-900.jpg&ehk=0N6UzkcIzmCZ4gNvaby77g11ukiwF4Cx4bCKNwwLXvE%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Coco ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.HD9wE3kRz9FT7rHSq0x2JwHaE8?pid=ImgDet&rs=1'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Ski ', maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.2ddca12b186273d7c80e98db79a92354?rik=ceRyE15K4RMIfA&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Mitton ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.MB6h1CWEjSXRu8DcvT34QgHaEo?pid=ImgDet&rs=1'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('cool cat ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.37bc3146b2372f6339f61b2ec10ac439?rik=63FsG6wcD4tvqQ&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Milly ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.09qYAVXHYiJozSGe_MlUmQHaFr?pid=ImgDet&w=800&h=613&rs=1'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Alexa ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.d1fafdd31f58f69144c1d72bffb5544d?rik=I0viTN0t%2bZtC4Q&riu=http%3a%2f%2fcdn.artwallpaperhi.com%2f2560x1600%2f20200701%2f5efc22038bf91.jpg&ehk=Ei1Rfd1nFDMdZ%2f0ATjBmbL23naea27TK7w5bLzY7wlk%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('till ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('kitty ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('enjo ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('billa',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('pilly',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('lilly ',
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('lona', maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('losy', maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('racy', maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('simon',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('slei', maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('magy', maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('prencess',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('kitt cat kitt cat kitt cat',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('kitt cat kitt cat kitt cat',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 60,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('kitt cat kitt cat kitt cat',
                          maxLines: 1, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.5d5706a96aba122b402b8d6601e77c2e?rik=mOUK6wTwcOSFLg&riu=http%3a%2f%2fblogs.columbian.com%2fcat-tales%2fwp-content%2fuploads%2fsites%2f43%2f2017%2f12%2fOrange-Cat.jpg&ehk=EhnV%2b64zjvgyq2%2bvYFl9e3SwfBuglaCOQoyWmRpH7gA%3d&risl=&pid=ImgRaw&r=0'),
                            radius: 30,
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.white,
                          ),
                          // Padding(
                          // padding: const EdgeInsetsDirectional.only(
                          //     bottom: 3, end: 3),
                          // child:
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kitt Cat mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      'Hi Zuzz ,I invite you to come to my birthday please don\'t forget to come zuzzy ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    width: 6.0,
                                    height: 8.0,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Text('2:00 pm')
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
