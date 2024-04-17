


import 'package:flutter/material.dart';

import 'package:socket_io_client/socket_io_client.dart'  as IO;
import 'package:socket_io_client/socket_io_client.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  late IO.Socket socket;

  @override
  void initState() {
    socket = IO.io(
        'http://40.220.169.0:3001',
        // Socket socket = io('http://localhost:3001',
        OptionBuilder()
            .setTransports(['websocket']) // for Flutter or Dart VM
            .disableAutoConnect() // disable auto-connection
            .setExtraHeaders({'foo': 'bar'}) //optional
            .build());
    socket.connect();
    socketListener();
    print('called');
    super.initState();
  }

  void socketListener() {
    socket.on('message-receive', (data) {
      print('on message recieve functions');
      print(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      appBar: AppBar(
        title: const Text('Chat Room'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  
                  colors: [
                  Colors.yellow,
                  Colors.transparent
                ]),
                borderRadius: BorderRadius.only(topRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.90),
                    blurRadius: 16.0,
                    spreadRadius: 1.0,
                    offset: Offset(0,1),
                  ),
                ]
              ),
            )
          ],
        ),
      ));
  }
}
