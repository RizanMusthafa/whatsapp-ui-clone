import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui/data/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: info.length,
      itemBuilder: (BuildContext context, int index) {
        final chat = info[index];
        return ListTile(
          onTap: () {},
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chat['profilePic'] ?? ""),
            radius: 30,
          ),
          title: Text(
            chat['name'].toString(),
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              chat['message'].toString(),
              style: TextStyle(fontSize: 15),
            ),
          ),
          trailing: Text(
            chat['time'].toString(),
            style: TextStyle(color: Colors.grey),
          ),
        );
      },
    );
  }
}
