import 'package:damny/feature_box.dart';
import 'package:damny/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEKU'),
        leading: const Icon(Icons.menu),
        centerTitle: true ,
      ),
      body: Column(
        children: [
          //virtual assistance picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top:4) ,
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                ),
              )
            ],
          ),


        // chat bubble

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor
              ),
            borderRadius: BorderRadius.circular(20).copyWith(
              topLeft: Radius.zero,
            )
            ),
            child: const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child:
              Text('Good morning , what task can i do for you',
                style: TextStyle(
                  fontFamily: 'Cera-Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 25,
              ),
              ),
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, left:22),
            alignment: Alignment.centerLeft ,
            child: const Text(
                'Here are some few commands',
            style:TextStyle(
              fontFamily: 'Cera-Pro',
              color: Pallete.mainFontColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
          
          //features list

          Column(
            children: [
              FeatureBox(
                  color: Pallete.firstSuggestionBoxColor,
                  headerText: 'Chat-GPT',
                  descriptionText: 'A smarter way to stay organized and informed with Chat-GPT',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dall-E',
                descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Smart Voice Assistant',
                descriptionText: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',
              ),

            ],
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
        child: const Icon(Icons.mic),

      ),
    );
  }
}
