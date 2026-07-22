import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ฟังก์ชันสร้างแต่ละหัวข้อ
  Widget buildSection(String title, IconData icon, List<String> items) {
    return Card(
      color: Colors.white,
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.pink.shade400),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade400,
                  ),
                ),
              ],
            ),
            const Divider(),
            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "• $item",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 242, 155, 184),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF0F5),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Resume"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 236, 150, 178),
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                // รูปโปรไฟล์
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.pink.shade300,
                  child: const Icon(
                    Icons.person,
                    size: 70,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  "ชลดา นาลิดลาด",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 208, 126, 159),
                  ),
                ),

                const SizedBox(height: 8),

                const SizedBox(height: 25),

                // ข้อมูลส่วนตัว
                buildSection(
                  "ข้อมูลส่วนตัว",
                  Icons.person,
                  [
                    "ชื่อ : ชลดา นาลิดลาด",
                    "โทรศัพท์ : 09X-XXX-XXXX",
                    "E-mail : example@email.com",
                  ],
                ),

                // ประวัติการศึกษา
                buildSection(
                  "ประวัติการศึกษา",
                  Icons.school,
                  [
                    "มัธยมศึกษาตอนต้น : โรงเรียนหนองไผ่",
                    "มัธยมศึกษาตอนปลาย : โรงเรียนหนองไผ่",
                    "ปัจจุบัน : มหาวิทยาลัยนเรศวร",
                    "คณะวิทยาศาสตร์ สาขาเทคโนโลยีสารสนเทศ",
                  ],
                ),

                // ประสบการณ์ทำงาน
                buildSection(
                  "ประสบการณ์ทำงาน",
                  Icons.work,
                  [
                    "ไม่มีประสบการณ์ทำงาน",
                  ],
                ),

                // โครงงาน
                buildSection(
                  "โครงงานที่เคยทำ",
                  Icons.folder,
                  [
                    "Training Management System",
                    "ระบบร้านไอศกรีมด้วย Flutter",
                    "ระบบจัดการฐานข้อมูล MySQL",
                  ],
                ),

                // ความสามารถพิเศษ
                buildSection(
                  "ความสามารถพิเศษ",
                  Icons.star,
                  [
                    "เขียนโปรแกรม Dart และ Flutter",
                    "เขียนโปรแกรมภาษา Java",
                    "PHP และ MySQL",
                    "HTML, CSS และ JavaScript",
                    "Microsoft Office",
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 254, 168, 196),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("ยินดีต้อนรับสู่ Resume"),
              ),
            );
          },
          child: const Icon(Icons.person),
        ),
      ),
    );
  }
}