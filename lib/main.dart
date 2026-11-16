import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าแรก',style: TextStyle
          (color: Colors.deepPurple ,
          backgroundColor: Colors.amberAccent,
          fontSize: 30,
          fontWeight: FontWeight.w800),
        ),
        leading: Text("Leading"),
        actions: [Icon(Icons.menu)
          ,Icon(Icons.abc)],
        ),
      body: Column(
        children: [
          Text("HELLO"),
          Text("HELLO"),
         Row(
           children: [
             Image.network(
                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCwimQ7SliMYi_FHx-D6ewhJ9BTfTdvrisLdF2g69x8Q&s=10"
                     ,width: 200,
                      height: 200,
               fit: BoxFit.cover,
             ),
             ClipOval(
               child: Image.asset("assets/images.jpeg",
                 width: 200,
                 height: 100,
                 fit: BoxFit.cover,
               ),
             )
           ],
         ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
             onPressed: () => {},
              child: Text("ปุ่ม 1"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              )
              ),
            )
            ),
            SizedBox(
              width: 20,
              height: 100,

            ),
            Expanded(child: OutlinedButton(
                onPressed: () => {},
                child: Text("ปุ่ม 2"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amberAccent
              ),
            )
            )
          ],
        )
        ],
        )
      );
  }
}