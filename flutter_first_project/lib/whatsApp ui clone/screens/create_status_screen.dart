
import 'package:flutter/material.dart';

class CreateStatusScreen extends StatefulWidget {
  const CreateStatusScreen({super.key});

  @override
  State<CreateStatusScreen> createState() =>
      _CreateStatusScreenState();
}

class _CreateStatusScreenState extends State<CreateStatusScreen> {
  final TextEditingController controller = TextEditingController();

  final List<Color> backgrounds = [
    const Color(0xFF008F76),
    const Color(0xFF315B9B),
    const Color(0xFF8B4A9C),
    const Color(0xFFCA6B38),
    const Color(0xFF202C3B),
    const Color(0xFFAF3656),
  ];

  Color selectedColor = const Color(0xFF008F76);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: selectedColor,
        foregroundColor: Colors.white,
        title: const Text('Create text status'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                controller.clear();
              });
            },
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Type a status...',
                    hintStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: backgrounds.map((color) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: selectedColor == color
                            ? Colors.white
                            : Colors.white54,
                        width: selectedColor == color ? 3 : 1,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Emoji UI coming soon'),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF008F76),
                  onPressed: () {
                    if (controller.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please type a status first'),
                        ),
                      );
                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Status preview created successfully!',
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
