import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  final int artIndex;  // 接收艺术品的索引
  final List<List<String>> feedbacks = [
    [
      "The colors in 'Sunset Dreams' are stunning, truly capturing the essence of a serene sunset.",
      "This artwork makes me feel peaceful and contemplative. Great use of light and shadow.",
      "I love how the details in the horizon are highlighted. It’s like looking at a real sunset!",
      "The composition is perfect, and the color gradient is mesmerizing.",
      "Absolutely breathtaking. It would be perfect for my living room wall!"
    ],
    [
      "The urban setting in 'Urban Exploration' is depicted with such vibrancy and life.",
      "This piece really speaks to the soul of city life. The motion and energy are palpable.",
      "I appreciate the raw, gritty realistic feel of this artwork. It's like being in the city.",
      "The contrast between the shadows and light captures the dynamic nature of urban life.",
      "Incredible detail in the textures! It feels like I can step right into the scene."
    ],
    [
      "The mystery of 'Whispering Woods' is beautifully captured in this piece.",
      "You can almost hear the silence in the misty forest, very haunting and beautiful.",
      "The soft colors and fog create a surreal experience that's both intriguing and calming.",
      "This artwork transports me directly into the heart of a secluded forest.",
      "Ethereal and captivating, a true masterpiece of nature's beauty."
    ],
    [
      "The vibrant energy of 'City Lights' lights up the canvas with its vivid colors.",
      "Such a lively representation of urban nightlife, it's electric and exciting!",
      "This piece perfectly captures the essence of the city after dark.",
      "The reflections of the lights on water add a magical touch to the urban landscape.",
      "A stunning portrayal of city life that is full of life and color."
    ],
    [
      "The majesty of the mountains in 'Mountain Majesty' is awe-inspiring.",
      "It feels like a fresh morning in the mountains, peaceful and serene.",
      "The light hitting the peaks creates a beautiful contrast with the shadows.",
      "This artwork brings the grandeur of nature into my home.",
      "A breathtaking view that offers a sense of tranquility and awe."
    ],
    [
      "Golden wheat field stretching under a sunset, capturing the essence of harvest.",
      "The warm colors and the horizon blend perfectly, creating a calming view.",
      "This piece evokes a sense of abundance and the beauty of nature.",
      "The simplicity and the vastness of the field are portrayed elegantly.",
      "It’s like feeling the breeze and the sun at the end of a summer day."
    ],
    [
      "A calming seascape, where the ocean meets the sky in a perfect line of blue.",
      "The cool tones and the horizon line have a soothing effect.",
      "This painting captures the vastness and the beauty of the ocean perfectly.",
      "It’s mesmerizing to see how the waves and the sky blend into one.",
      "A serene and peaceful representation of the ocean that's deeply moving."
    ],
    [
      "Spring flowers in bloom, dancing lightly in a gentle breeze.",
      "The colors are vibrant and the painting feels alive with motion.",
      "This piece perfectly captures the essence of spring and renewal.",
      "It’s like a breath of fresh air, cheerful and uplifting.",
      "The delicate details of the flowers are exquisitely captured."
    ],
    [
      "A path winding through ancient ruins, evoking thoughts of history and time.",
      "The perspective draws you into the scene, making it feel like a journey.",
      "This artwork captures the essence of exploration and discovery.",
      "The textures and the composition create a sense of mystery.",
      "It’s like walking through history, each stone telling a story."
    ],
    [
      "A depiction of peace and calm within nature's embrace.",
      "The soft colors and the gentle composition create a tranquil scene.",
      "This painting makes you feel relaxed and at peace.",
      "The harmony between the elements in the artwork is soothing.",
      "It’s a perfect representation of finding serenity in nature."
    ]
  ];

  FeedbackScreen({required this.artIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: ListView.builder(
        itemCount: feedbacks[artIndex].length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Feedback ${index + 1}'),
            subtitle: Text(feedbacks[artIndex][index]),
          );
        },
      ),
    );
  }
}
