import 'package:ai_app/core/constants/color_constants.dart';
import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kartal/kartal.dart';

import '../../core/widgets/chat_list_widget.dart';
import 'widgets/chat_message_widget.dart';
import 'widgets/threedots_widget.dart';

@RoutePage()
class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessageWidget> _messages = [];
  late OpenAI? chatGPT;
  bool isImageSearch = false;
  bool isTyping = false;

  @override
  void initState() {
    chatGPT = OpenAI.instance.build(
        token: dotenv.env["API_KEY"],
        isLog: true,
        baseOption: HttpSetup(receiveTimeout: context.durationSlow));
    super.initState();
  }

  @override
  void dispose() {
    chatGPT?.cancelAIGenerate();
    super.dispose();
  }

  void _sendMessage() async {
    if (_controller.text.isEmpty) return;
    ChatMessageWidget message = ChatMessageWidget(
      text: _controller.text,
      sender: "user",
    );

    setState(() {
      _messages.insert(0, message);
      isTyping = true;
    });

    _controller.clear();

    if (isImageSearch) {
      final request = GenerateImage(message.text, 1, size: ImageSize.size256);

      final response = await chatGPT!.generateImage(request);
      debugPrint(response!.data!.last!.url!);
      insertNewData(response.data!.last!.url!, isImage: true);
    } else {
      final request =
          CompleteText(prompt: message.text, model: Model.textDavinci3);

      final response = await chatGPT!.onCompletion(request: request);
      debugPrint(response!.choices[0].text);
      insertNewData(response.choices[0].text, isImage: false);
    }
  }

  void insertNewData(String response, {bool isImage = false}) {
    ChatMessageWidget botMessage = ChatMessageWidget(
      text: response,
      sender: "bot",
      isImage: isImage,
    );
    setState(() {
      isTyping = false;
      _messages.insert(0, botMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Flexible(child: ChatListWidget(messages: _messages)),
          if (isTyping) const ThreeDots(),
          _buildTextComposer()
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return SlideInUp(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextField(
                maxLines: 4,
                minLines: 1,
                controller: _controller,
                onSubmitted: (value) => _sendMessage(),
                decoration: const InputDecoration(
                  hintText: "Question/description",
                ),
              ),
            ),
          ),
          ButtonBar(
            children: [
              IconButton(
                iconSize: 18,
                icon: const Icon(
                  Icons.send,
                  color: ColorConstants.myGreen,
                ),
                onPressed: () {
                  isImageSearch = false;
                  _sendMessage();
                },
              ),
              IconButton(
                iconSize: 18,
                icon: const Icon(
                  Icons.image_rounded,
                  color: ColorConstants.myGreen,
                ),
                onPressed: () {
                  isImageSearch = true;
                  _sendMessage();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
