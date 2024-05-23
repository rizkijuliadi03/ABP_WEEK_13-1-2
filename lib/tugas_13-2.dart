import 'package:flutter/material.dart';

class hal2 extends StatefulWidget {
  const hal2({Key? key}) : super(key: key);

  @override
  _Tutorial11_2PageState createState() => _Tutorial11_2PageState();
}

class _Tutorial11_2PageState extends State<hal2> {
  final List<String> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 13-2'),
      ),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_data[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    String newData = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tambahkan data'),
          content: TextField(
            onChanged: (value) {
              newData = value;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan data',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _data.add(newData);
                });
                Navigator.of(context).pop();
              },
              child: Text('Tambah'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
          ],
        );
        },
);
}
}