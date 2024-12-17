import 'package:apotek_aquarius/home_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> _messages = [];
  final TextEditingController _controllerNamaObat =
      TextEditingController(); // Controller untuk nama obat
  final TextEditingController _controllerDeskripsi =
      TextEditingController(); // Controller untuk deskripsi

  void _sendMessage() async {
    if (_controllerNamaObat.text.isEmpty) return;

    // Mengambil nilai dari controller
    String namaObat = _controllerNamaObat.text;
    String deskripsi = _controllerDeskripsi.text;

    // Clear text field setelah mengirim pesan
    _controllerNamaObat.clear();
    _controllerDeskripsi.clear();

    setState(() {
      _messages.add({"text": namaObat, "sender": "user"});
    });

    // Kirim data ke API Flask
    final response = await http.post(
      Uri.parse('http://10.0.2.2:5000/chatbot'),            // http://10.0.2.2:5000/chatbot untuk di emulator
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"nama_obat": namaObat, "deskripsi": deskripsi}),      //"deskripsi": deskripsi
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _messages.add({"text": data["message"], "sender": "bot"});
      });
    } else {
      setState(() {
        _messages.add({
          "text": "Terjadi kesalahan: ${response.statusCode}",
          "sender": "bot"
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatbot Apotek Aquarius'),
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _messages[index]['text']!,
                    style: TextStyle(
                    color: _messages[index]['sender'] == 'user' ? Colors.blue : Colors.black,
                  ),
                ),
                subtitle: _messages[index]['sender'] == 'user' 
                  ? Text(_messages[index]['sender'] == 'user' ? 'Anda' : 'Bot')
                  : RichText(
                    text: const TextSpan(
                      children: [
                        // Menambahkan "notes:" dengan warna merah hanya untuk bot
                      TextSpan(
                        text: 'Notes:\n', 
                        style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold), // Warna merah untuk "notes:"
                      ),
                        // Menambahkan 'Bot' untuk pesan dari bot
                      TextSpan(
                        text:'Hanya rekomendasi obat, konsultasi dengan dokter terlebih dahulu sebelum menggunakannya',
                        style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold), // Warna hitam untuk 'Bot'
                      ),
                    ],
                  ),
                ),
              );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controllerNamaObat,
                    decoration: const InputDecoration(
                      hintText: 'Ketik pesan mengenai obat...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
