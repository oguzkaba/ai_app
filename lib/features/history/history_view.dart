import 'package:ai_app/core/widgets/chat_list_widget.dart';
import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../chat/widgets/chat_message_widget.dart';

@RoutePage()
class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  final List<ChatMessageWidget> chatHistoryList = [
    const ChatMessageWidget(
        text:
            'Flutter, Google tarafından oluşturulan açık kaynaklı bir UI yazılım geliştirme kitidir. Android, iOS, Windows, Mac, Linux ve web için uygulamalar geliştirmek için kullanılıyor. Flutter\'ın ilk sürümü \\"Sky" olarak biliniyordu ve Android işletim sisteminde çalışıyordu.',
        sender: 'bot'),
    const ChatMessageWidget(text: 'Flutter nedir?', sender: 'user'),
    const ChatMessageWidget(
        text:
            'ChatGPT, openAI tarafından geliştirilen ve Kasım 2022\'de piyasaya sürülen bir yapay zeka sohbet robotudur.openAI\'nin GPT-3.5 ve GPT-4 temel büyük dil modelleri üzerine inşa edilmiştir ve hem denetimli hem de pekiştirmeli öğrenme teknikleri kullanılarak ince ayarı yapılmıştır.',
        sender: 'bot'),
    const ChatMessageWidget(text: 'ChatGPT nedir?', sender: 'user'),
    const ChatMessageWidget(
        text:
            'Kapalı işletim sistemlerinden olan iOS (iPhone Operating System), Apple markasının iPhone, iPod Touch ve iPad modeli teknolojik ürünlerinde kullanılmaktadır. Adından da anlaşılacağı üzere iOS, iPhone modeli mobil cihazlar için geliştirilmiştir; fakat ilerleyen zamanlarda iPod ve iPad\'lerde de kullanılmıştır.',
        sender: 'bot'),
    const ChatMessageWidget(text: 'iOS nedir?', sender: 'user'),
  ];

  @override
  Widget build(BuildContext context) {
    return chatHistoryList.isNotEmpty
        ? ChatListWidget(messages: chatHistoryList)
        : SlideInUp(
            duration: context.durationNormal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.access_time_outlined,
                  size: 150,
                ),
                Text(
                  'HistoryView',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          );
  }
}
