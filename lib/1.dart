import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GÚT BOY'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TÚ ĐẸP ZAI',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://s.memehay.com/files/posts/20210527/huan-hoa-hong-dua-9-ngon-tay-ruoi-noi-9-5-diem.webp',
                  width: 120,
                ),

                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Gút chóp')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    childreimport 'package:flutter/material.dart';

      void main() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My app', // used by the OS task switcher
        home: MyHomeScreen(),
      ),
    );
  }

  class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // TODO: implement build
  return Scaffold(
  appBar: AppBar(
  title: Text('GÚT BOY'),
  ),
  body: SafeArea(
  child: Container(
  alignment: Alignment.center,
  width: 390,
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  //crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  Text(
  'TÚ ĐẸP ZAI',
  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
  ),
  SizedBox(
  height: 20,
  ),
  buildRowLayout(),
  SizedBox(
  height: 20,
  ),
  Image.network(
  'https://s.memehay.com/files/posts/20210527/huan-hoa-hong-dua-9-ngon-tay-ruoi-noi-9-5-diem.webp',
  width: 120,
  ),

  ElevatedButton(
  onPressed: () {
  ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text('Nut da duoc bam!')));
  },
  child: Text('Gút chóp')),
  ],
  )),
  ),
  );
  }
  }

  Widget buildRowLayout() {
  return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Container(
  color: Colors.blue,
  height: 100,
  width: 100,
  ),
  Container(
  color: Colors.red,
  height: 100,
  width: 100,
  ),
  Container(
  color: Colors.black,
  height: 100,
  width: 100,
  )
  ],
  );
  }
  n: [
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.black,
        height: 100,
        width: 100,
      )
    ],
  );
}
