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
        title: const Text('Moon_04',
          style: TextStyle
          (color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.w800),
        ),
        actions: [Icon
          (Icons.menu , // ชื่อไอคอน
         size: 50, //ขนาด
          color:Colors.black, //สี
        ),
          ],
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           children: [
             ClipOval(
               child: Image.asset("assets/mt.jpg",
                 width: 105,
                 height: 105,
                 fit: BoxFit.cover,
               ),
             ),
             SizedBox(
               width: 45,
               height: 150,
             ),
             Column(children: [
               Text("11"),
               Text("โพสต์")
             ],
             ),
             SizedBox(
               width: 35,
               height: 160,
             ),
             Column(children: [
               Text("279"),
               Text("ผู้ติดตาม")
             ],),
             SizedBox(
               width: 35,
               height: 160,
             ),
             Column(children: [
               Text("625"),
               Text("กำลังติดตาม")
             ],
             ),
           ],
         ),
        SizedBox(
          width: 20,
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Text("พิมพ์สิริ พลเยี่ยม",style: TextStyle(fontSize: 18),),
            Text("คำสั้นๆสำหรับเด็กไอที คือ หนีไป",style: TextStyle(fontSize: 18),),

        ],),
        Row(
          children: [
            Expanded(child: ElevatedButton(
             onPressed: () => {},
              child: Text("ติดตาม"),
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
                child: Text("ข้อความ"),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8)
                )
              ),
            )
            ),
            SizedBox(
              width: 10,
              height: 100,
            ),
          ],
        ),
          Row(
            children: [
              SizedBox(width: 120,height: 20,),
              Icon(Icons.grid_on,size: 35,),
              SizedBox(width: 138,height: 20,),
              Icon(Icons.person_pin,size: 35,)
            ],
          ),
          GridView.count(crossAxisCount: 3,
          shrinkWrap: true,
            children: [Image.network("https://i.pinimg.com/736x/fb/0a/6f/fb0a6f2659dd99c05c02f5199e789e7f.jpg"),
                      Image.network("https://i.pinimg.com/736x/5e/d4/75/5ed47575dbc6e5eccb2bd48b8d797fe5.jpg"),
                       Image.network("https://i.pinimg.com/736x/08/14/57/08145755246c37f6b2ef96e057f31573.jpg")],

          )

        ],
        )
      );
  }
}