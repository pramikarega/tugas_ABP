import 'package:flutter_week10/tutorial_11-1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2022", "nilai": "110"},
    {"tgl": "10/11/2022", "nilai": "180"},
    {"tgl": "09/10/2022", "nilai": "190"},
    {"tgl": "08/09/2022", "nilai": "160"},
    {"tgl": "07/08/2022", "nilai": "155"},
    {"tgl": "06/07/2022", "nilai": "145"},
    {"tgl": "05/06/2022", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome,", style: TextStyle(
                              color: Color(0xFF7367F0),
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.25)
                          ),
                          Text(
                            "1304211010 - Pramika Rega Sefira",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4B4B4B)),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 20,
                        //backgroundImage: AssetImage('asstes/profpic.img')
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                  decoration: BoxDecoration(
                    gradient:
                    const LinearGradient(colors: [Color(0xFF4839EB), Color(0xFF7367F0)]),
                    borderRadius: BorderRadius.circular(8.0), // Perbaikan typo
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Status tes TOEFL Anda:',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      const Text("LULUS", style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25)
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Listening\n      80',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Structure\n      80',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Reading\n       90',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ), // Perbaikan typo
                          ],
                        ),
                      ),
                      const SizedBox (height: 20),
                    ],
                  ),
                ),
                Container(
                  child: const Text('Riwayat Tes', style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25)),
                ),
                Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index){
                        return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Tanggal tes:\nNilai:',
                                    style: TextStyle(color: Colors.blue, fontSize: 20),
                                  ),
                                  Text(
                                    '${data[index]["tgl"]}\n${data[index]["nilai"]}',
                                    style: const TextStyle(color: Colors.blue, fontSize: 20),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10)
                            ]
                        );
                      },
                    )
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    child: InkWell(
                        child: Text('Go to Tutorial 11-1', style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 26)
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const MyApp11_1()
                          ));
                        }
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}
