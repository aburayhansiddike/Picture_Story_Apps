import 'package:flutter/material.dart';
import 'package:picture_story_time/story_list.dart';

class HomePage extends StatelessWidget{

  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Story List',
            style: TextStyle(
              color: Colors.white
            ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:  Padding(
        padding: EdgeInsets.all(3),
        child: StoryList(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.add),
      ),
    );
  }

}