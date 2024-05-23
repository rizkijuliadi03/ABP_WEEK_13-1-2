import 'package:flutter/material.dart';

class hal1 extends StatelessWidget {
  const hal1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 13-1'),
        automaticallyImplyLeading: false,
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 90, 105, 149),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Halaman 1',
                      style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 255, 255))),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Kembali ke Home'),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 76, 119, 175),
            child: const Center(
              child: Text('Halaman 2',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 3',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
            ),
          ),
        ],
     ),
);
}
}