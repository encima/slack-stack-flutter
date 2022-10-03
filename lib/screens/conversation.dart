import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:slack_stack/components/chat_bubble.dart';
import 'package:uuid/uuid.dart';

import '../src/generated/prisma_client.dart';

class Author {
  String username;

  Author({required this.username});
}

class Message {
  String id;
  String content;
  DateTime created;
  String from;

  Message(
      {required this.id,
      required this.content,
      required this.created,
      required this.from});
}

final PrismaClient prisma = PrismaClient();

class ConvoPage extends StatefulWidget {
  static String tag = 'conversations';
  const ConvoPage({super.key});

  @override
  State<ConvoPage> createState() => _ConvoPageState();
}

class _ConvoPageState extends State<ConvoPage> {
  final List<Message> _messages = [];
  final Author _user = Author(username: "encima");

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: _messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: ChatBubble(
                      text: _messages[index].content,
                      isCurrentUser: _messages[index].from == _user.username)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _addMessage(Message(
                            id: "djkfdhklfh98u83njkdz",
                            content: "hey there",
                            created: DateTime.now(),
                            from: _user.username));
                      },
                      backgroundColor: Colors.blue,
                      elevation: 0,
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  void _addMessage(Message message) {
    setState(() {
      _messages.insert(0, message);
      _messages.sort((a, b) => a.created.compareTo(b.created));
    });
  }

  void _loadMessages() async {
    final msgs = await prisma.message.findMany(
      orderBy: [
        const MessageOrderByWithRelationInput(createdAt: SortOrder.desc)
      ],
    );

    setState(() {
      for (var m in msgs) {
        _messages.add(Message(
            id: m.id, content: m.text, created: m.createdAt, from: m.authorId));
      }
      _messages.sort((a, b) => a.created.compareTo(b.created));
    });
  }
}
