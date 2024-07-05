import 'package:flutter/material.dart';

class SpecificSubjectPage extends StatefulWidget {
  const SpecificSubjectPage({super.key});

  @override
  _SpecificSubjectPageState createState() => _SpecificSubjectPageState();
}

class _SpecificSubjectPageState extends State<SpecificSubjectPage> {
  List<bool> initialState = [false, false, false, false];
  Map<int, List> topic = {
    1: ['Algebra'],
    2: ['Complex Numbers and Quadratic Equations'],
    3: ['Trigonometry'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Mathematics'),
      ),
      // make a expansion tile of each topic of the subject
      body: ListView.builder(
        itemCount: topic.length,
        itemBuilder: (context, index) {
          topic.values.toList()[index].addAll(initialState);
          return createExpansionTile(index, topic.values.toList()[index]);
        },
      ),
    );
  }

  Widget createExpansionTile(int index, List topic) {
    return ExpansionTile(
      title: Wrap(
        children: [
          Text(
            "${index + 1}. ${topic[0]}",
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      children: <Widget>[
        ListTile(
          title: const Text(
            'Lectures',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              topic[1] = !topic[1];
            });
          },
          trailing: Switch(
              value: topic[1],
              onChanged: (value) {
                setState(() {
                  topic[1] = value;
                });
              }),
        ),
        ListTile(
          title: const Text(
            'Notes',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              topic[2] = !topic[2];
            });
          },
          trailing: Switch(
              value: topic[2],
              onChanged: (value) {
                setState(() {
                  topic[2] = value;
                });
              }),
        ),
        ListTile(
          title: const Text(
            'Questions',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              topic[3] = !topic[3];
            });
          },
          trailing: Switch(
              value: topic[3],
              onChanged: (value) {
                setState(() {
                  topic[3] = value;
                });
              }),
        ),
        ListTile(
          title: const Text(
            'Test',
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {
            setState(() {
              topic[4] = !topic[4];
            });
          },
          trailing: Switch(
              value: topic[4],
              onChanged: (value) {
                setState(() {
                  topic[4] = value;
                });
              }),
        ),
      ],
    );
  }
}
