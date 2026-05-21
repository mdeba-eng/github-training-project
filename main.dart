import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مشروع تدريب فلاتر',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFFF4F7F6),
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. الـ AppBar (المطلوب في جزء الموبايل)
      appBar: AppBar(
        title: const Text('تطبيق ملفي التعريفي', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color(0xFF2C3E50),
        foregroundColor: Colors.white,
      ),
      
      // 2. الكروت والقائمة (Cards)
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFF2C3E50),
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'أهلاً بك في تطبيقي 👋',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF2C3E50)),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'أنا المهندس مالك ديبه، طالب في الكلية الجامعية للعلوم التطبيقية (UCAS)، تخصص تطوير الموبايل. قمت ببناء هذا التطبيق كجزء من مشروع التدريب على Git & GitHub.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // 3. الـ Footer (المطلوب في الواجب)
      bottomNavigationBar: Container(
        color: const Color(0xFF2C3E50),
        padding: const EdgeInsets.all(15),
        child: const Text(
          هجميع الحقوق محفوظة © 2026 | تطوير المهندس مالك ديبا',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
