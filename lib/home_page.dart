import 'package:flutter/material.dart';

import 'game_button_widget.dart';

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
        title: const Text('Jogo da Velha'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 9,
                itemBuilder: (context, i) => GameButtonWidget(
                      text: '$i',
                      color: Colors.white,
                      onPressed: () => {setState(() {})},
                      id: i,
                    )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          "Reset",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        icon: const Icon(Icons.restart_alt),
        backgroundColor: Colors.redAccent,
        onPressed: () {},
      ),
    );
  }
}
