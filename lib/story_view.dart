
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
FlutterTts flutterTts = FlutterTts();

class StoryView extends StatefulWidget{
  final String image;
  final String title;
  final String content;
  const StoryView({super.key, required this.image, required this.title, required this.content});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    Future _speak() async{
      if (isPlaying) {
        await flutterTts.pause();
      } else {
        await flutterTts.speak(widget.content);
      }
      setState(() {
        isPlaying = !isPlaying;
      });
    }

    flutterTts.setCompletionHandler(() {
      setState(() {
        isPlaying = false;
      });
    });

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(3),
        child:  Column(
          children: [
            Image.asset(
              'assets/images/${widget.image}',
              height: 400,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.content,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _speak,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent
              ),
              child: Icon(isPlaying ? Icons.volume_off : Icons.volume_up),
            )
          ],
        ),
      ),
    );
  }
}

