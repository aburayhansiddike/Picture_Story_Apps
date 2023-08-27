import 'package:flutter/material.dart';
import 'package:picture_story_time/single_story.dart';


class StoryList extends StatelessWidget{
    StoryList({super.key});

   List<SingleStory> storyList = [
     const SingleStory(
         image: 'monkey_and_seller_story.png',
         title: 'Cap-seller and Monkey',
         content: "Tui ekta bokachoda upon a time in a quaint village, lived a cap seller who traveled from town to town, selling colorful caps. One hot day, he walked through a dense forest on his way to a distant village. The journey tired him, so he decided to rest under a tall shady tree. As the cap seller dozed off, a mischievous monkey residing in the tree watched closely. The monkey had a fondness for playing pranks. Seizing the opportunity, the monkey climbed down from the tree, snatched the caps from the seller's bag, and scampered back up to the branches.When the cap seller woke up and saw his caps missing, he was puzzled and alarmed. He scanned the ground, searching for his caps, but to his surprise, he noticed the monkey wearing one of the caps atop its head. An idea struck the cap seller's mind."

     ),
     const SingleStory(
         image: 'fox_lost_his_tail.jpg',
         title: "The Fox Who Had Lost His Tail",
         content: "World by world, the fox ventured, encountering wonders and challenges. In the twenty-third world, it narrowly escaped an enchanted forest; in the thirty-seventh, it outwitted a tricky riddle-guardian. With each world conquered, the fox's confidence grew."

     ),
     const SingleStory(
         image: 'thisty_crow.jpg',
         title: 'Thisty Crow',
         content: "A thirsty crow gazed into a narrow jug, its beak barely reaching the water. Undeterred, the clever crow dropped pebble after pebble into the jug, raising the water level. Soon, the water reached its beak, quenching its thirst. Adaptation triumphed over adversity."
     ),
     const SingleStory(
         image: 'monkey_and_seller_story.png',
         title: 'Cap-seller and Monkey',
         content: "Once upon a time in a quaint village, lived a cap seller who traveled from town to town, selling colorful caps. One hot day, he walked through a dense forest on his way to a distant village. The journey tired him, so he decided to rest under a tall shady tree. As the cap seller dozed off, a mischievous monkey residing in the tree watched closely. The monkey had a fondness for playing pranks. Seizing the opportunity, the monkey climbed down from the tree, snatched the caps from the seller's bag, and scampered back up to the branches.When the cap seller woke up and saw his caps missing, he was puzzled and alarmed. He scanned the ground, searching for his caps, but to his surprise, he noticed the monkey wearing one of the caps atop its head. An idea struck the cap seller's mind."

     ),
     const SingleStory(
         image: 'monkey_and_seller_story.png',
         title: 'Cap-seller and Monkey',
         content: "Once upon a time in a quaint village, lived a cap seller who traveled from town to town, selling colorful caps. One hot day, he walked through a dense forest on his way to a distant village. The journey tired him, so he decided to rest under a tall shady tree. As the cap seller dozed off, a mischievous monkey residing in the tree watched closely. The monkey had a fondness for playing pranks. Seizing the opportunity, the monkey climbed down from the tree, snatched the caps from the seller's bag, and scampered back up to the branches.When the cap seller woke up and saw his caps missing, he was puzzled and alarmed. He scanned the ground, searching for his caps, but to his surprise, he noticed the monkey wearing one of the caps atop its head. An idea struck the cap seller's mind."

     ),
     const SingleStory(
         image: 'monkey_and_seller_story.png',
         title: 'Cap-seller and Monkey',
         content: "Once upon a time in a quaint village, lived a cap seller who traveled from town to town, selling colorful caps. One hot day, he walked through a dense forest on his way to a distant village. The journey tired him, so he decided to rest under a tall shady tree. As the cap seller dozed off, a mischievous monkey residing in the tree watched closely. The monkey had a fondness for playing pranks. Seizing the opportunity, the monkey climbed down from the tree, snatched the caps from the seller's bag, and scampered back up to the branches.When the cap seller woke up and saw his caps missing, he was puzzled and alarmed. He scanned the ground, searching for his caps, but to his surprise, he noticed the monkey wearing one of the caps atop its head. An idea struck the cap seller's mind."

     ),
   ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: storyList.length,
      itemBuilder: (contex, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: storyList[index],
        ) ;
      },
    );
  }

}