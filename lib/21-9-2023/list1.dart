import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
      ),
      body: ListView(
        children: [
          Card(
              child: ListTile(
            title: Text('Sam'),
            subtitle: Row(
              children: [
                Icon(Icons.read_more),
                Text('Hey, hello!'),
              ],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1694435833920-5578d935bc88?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text('2'),
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            title: Text('Emily'),
            subtitle: Text('Please send the doc asap!!'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"),
            ),
            trailing: Column(
              children: [
                Text('12.30'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text('2'),
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            title: Text('Dave'),
            subtitle: Text('Hey bro...'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1497316730643-415fac54a2af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"),
            ),
            trailing: Text('01.15'),
          )),
          Card(
              child: ListTile(
            title: Text('Jacob'),
            subtitle: Text('Lets meet up bro....'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
            ),
            trailing: Column(
              children: [
                Text('02.30'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 10,
                  backgroundColor: Colors.green,
                  child: Text('1'),
                )
              ],
            ),
          )),
          Card(
              child: ListTile(
            title: Text('Lily'),
            subtitle: Text('When is the due date?'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
            ),
            trailing: Text('09.30'),
          )),
        ],
      ),
    );
  }
}
