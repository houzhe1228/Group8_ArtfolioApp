class Artwork {
  final String title;
  final String description;
  final String imageUrl;
  final String author;

  Artwork({required this.title, required this.description, required this.imageUrl, required this.author});
}

List<Artwork> artworks = [
  Artwork(
    title: "Sunset Dreams",
    description: "A vivid portrayal of a sunset over a tranquil sea.",
    imageUrl: "assets/images/art0.jpg",
    author: "Alice Johnson"
  ),
  Artwork(
    title: "Urban Exploration",
    description: "A snapshot of the dynamic street life in a bustling city.",
    imageUrl: "assets/images/art1.jpg",
    author: "Bob Smith"
  ),
  Artwork(
    title: "Whispering Woods",
    description: "An ethereal glimpse into a misty forest at dawn.",
    imageUrl: "assets/images/art2.jpg",
    author: "Carol White"
  ),
  Artwork(
    title: "City Lights",
    description: "Night view of glowing city lights reflecting the vibrant urban life.",
    imageUrl: "assets/images/art3.jpg",
    author: "David Brown"
  ),
  Artwork(
    title: "Mountain Majesty",
    description: "A serene sunrise over snow-capped mountains, symbolizing tranquility and grandeur.",
    imageUrl: "assets/images/art4.jpg",
    author: "Eva Green"
  ),
  Artwork(
    title: "Golden Field",
    description: "Golden wheat field stretching under a sunset, capturing the essence of harvest.",
    imageUrl: "assets/images/art5.jpg",
    author: "Frank Adams"
  ),
  Artwork(
    title: "Ocean Breeze",
    description: "A calming seascape, where the ocean meets the sky in a perfect line of blue.",
    imageUrl: "assets/images/art6.jpg",
    author: "Grace Lee"
  ),
  Artwork(
    title: "Floral Dance",
    description: "Spring flowers in bloom, dancing lightly in a gentle breeze.",
    imageUrl: "assets/images/art7.jpg",
    author: "Henry Miller"
  ),
  Artwork(
    title: "Ancient Pathways",
    description: "A path winding through ancient ruins, evoking thoughts of history and time.",
    imageUrl: "assets/images/art8.jpg",
    author: "Isla White"
  ),
  Artwork(
    title: "Harmony",
    description: "A depiction of peace and calm within nature's embrace.",
    imageUrl: "assets/images/art9.jpg",
    author: "John Doe"
  )
];
