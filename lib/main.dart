import 'package:flutter/material.dart';

void main() {
  runApp(const ViralScriptApp());
}

class ViralScriptApp extends StatelessWidget {
  const ViralScriptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ViralScript AI',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF030712),
        primaryColor: const Color(0xFF10B981),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedPlatform = 'TikTok';
  String selectedNiche = 'تقنية وتطوير';
  String generatedScript = 'اضغط على زر التوليد لجلب السكريبت الفيروسي...';
  bool isLoading = false;

  final List<String> platforms = ['TikTok', 'Instagram Reels', 'YouTube Shorts'];
  final List<String> niches = ['تقنية وتطوير', 'أسرار المال والأعمال', 'قصص وتشويق', 'صحة وتخسيس'];

  void generateViralContent() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
        if (selectedNiche == 'تقنية وتطوير') {
          generatedScript = "🔥 [الخطاف - Hook]: واش عارف باللي تلفونك كيسجل عليك كلشي وأنت ما فخبارتك والو؟\n\n📌 [المحتوى]: 3 إعدادات خطيرة خصك تطفيها دابا فحال الهكرز...\n\n🎯 [الدعوة للتفاعل - CTA]: تابيعني باش تعرف البلاوي اللي مخبأين فجهازك!";
        } else {
          generatedScript = "🔥 [الخطاف - Hook]: هاد السر هو اللي خلا هاد الشخص يجمع ثروة فـ شهر واحد!\n\n📌 [المحتوى]: السر وما فيه هو...\n\n🎯 [الدعوة للتفاعل - CTA]: بارطاجي الفيديو مع صاحبتك اللي كتقلب على الفلوس!";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚡ VIRAL SCRIPT AI VIP', style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF10B981))),
        backgroundColor: const Color(0xFF0B1120),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('اختر منصة النشر:', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF9CA3AF))),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedPlatform,
              dropdownColor: const Color(0xFF111827),
              items: platforms.map((p) => DropdownMenuItem(value: p, child: Text(p))).toList(),
              onChanged: (val) => setState(() => selectedPlatform = val!),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF111827),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            const Text('اختر مجال الفيديو (Niche):', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF9CA3AF))),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedNiche,
              dropdownColor: const Color(0xFF111827),
              items: niches.map((n) => DropdownMenuItem(value: n, child: Text(n))).toList(),
              onChanged: (val) => setState(() => selectedNiche = val!),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF111827),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF10B981),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                ),
                onPressed: isLoading ? null : generateViralContent,
                child: isLoading 
                  ? const CircularProgressIndicator(color: Colors.black)
                  : const Text('🚀 توليد السكريبت الفيروسي الخرافي', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 25),
            const Text('النتيجة (السكريبت الجاهز للتصوير):', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF10B981))),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF0F172A),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF10B981).withOpacity(0.3)),
              ),
              child: SelectableText(
                generatedScript,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 14, color: Color(0xFFF3F4F6)),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF111827),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white10),
              ),
              child: const Center(
                child: Text('📢 [ Google AdMob Banner Ad Space ]', style: TextStyle(color: Color(0xFF6B7280), fontSize: 12)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
