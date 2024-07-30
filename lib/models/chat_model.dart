class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Max Black",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl:
          "https://images.pexels.com/photos/1310522/pexels-photo-1310522.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  new ChatModel(
      name: "Harvey Piper",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl:
          "https://images.pexels.com/photos/1819483/pexels-photo-1819483.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  new ChatModel(
      name: "Diana Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl:
          "https://images.pexels.com/photos/1821095/pexels-photo-1821095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  new ChatModel(
      name: "Rachel Langmore",
      message: "I'm good!",
      time: "10:30",
      avatarUrl:
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  new ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl:
          "https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  new ChatModel(
      name: "Mike West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      avatarUrl:
          "https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
];
