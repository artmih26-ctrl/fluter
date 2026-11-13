import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String name = 'Михновец Артур';
  final String age = '20 лет';
  final String city = 'Бишкек';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text('Мой профиль'),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.deepPurple,
                backgroundImage: AssetImage('images/mountains.jpg'),
              ),
              const SizedBox(height: 16),
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Возраст: $age',
                style: const TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Город: $city',
                style: const TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Мои интересы',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Программирование и Flutter',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Пк игры и киберспорт',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Путешествия и прогулки',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.camera_alt),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.alternate_email),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.videocam),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 34,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Подписаться',
                  style: TextStyle(fontFamily: 'Comfortaa', fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
