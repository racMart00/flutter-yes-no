import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message.dart';

import 'package:yes_no/presentation/providers/chat_provider.dart';
import 'package:yes_no/presentation/widget/chat/her_message_bubble.dart';
import 'package:yes_no/presentation/widget/chat/my_message_bubble.dart';
import 'package:yes_no/presentation/widget/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/disney/images/e/ea/Dove_Cameron.jpg/revision/latest?cb=20240211115618'),
          ),
        ),
        title: const Text('Dove Cameron'),
        centerTitle: false,
      ),
      body: _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatprovider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10 ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: chatprovider.chatScrollController,
                itemCount: chatprovider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatprovider.messageList[index];

                  return ( message.fromWho == FromWho.hers )
                    ? HerMessageBubble( message: message )
                    : MyMessageBubble( message: message );
                },
              )
            ),
            
            MessageFieldBox(
              onValue: chatprovider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}