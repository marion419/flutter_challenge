import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({required this.isReceived, required this.content});

  final bool isReceived;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isReceived ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isReceived ? Colors.purple[200] : Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          content,
          style: TextStyle(
            fontSize: 16,
            color: isReceived ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
