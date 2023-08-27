
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picture_story_time/story_view.dart';

class SingleStory extends StatelessWidget{
  final String image;
  final String title;
  final String content;
  const SingleStory({super.key, required this.image, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Row(
      children: [
        Image.asset(
          'assets/images/$image',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10,
        ),
         Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StoryView(image: image, title: title, content: content)
              )
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
          child: const Text(
            'Read More'
          ),
        )
      ],
    );
  }

}

