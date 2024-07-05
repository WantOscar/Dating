import 'package:dating/Widget/common/warning_window.dart';
import 'package:dating/controller/feed_controller.dart';
import 'package:dating/data/model/feed.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:dating/screen/main/main_screen.dart';
import 'package:dating/screen/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedWriteController extends GetxController {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _content = TextEditingController();

  TextEditingController get title => _title;
  TextEditingController get content => _content;

  /// 피드 작성을 취소할건지 물어보고 뒤로 돌아가는 함수
  void cancel() {
    Get.dialog(WarningWindow(
      titleText: '피드 작성 취소',
      explainText: '현재 입력사항을 모두 취소하고 돌아가시겠습니까?',
      onTap: () {
        Get.offAll(() => const HomeScreen());
      },
      btnText: "작성취소",
    ));
  }

  void writeFeed() {
    final Feed feed = Feed(title: _title.text, content: _content.text);

    Get.dialog(WarningWindow(
      titleText: '피드 작성 완료',
      explainText: '작성을 완료하시겠습니까?',
      onTap: () {
        /// 글쓰기 API
        ///
        ///
        FeedController.to.writeFeed(feed);
        Get.off(() => const HomeScreen());
      },
      btnText: "피드 생성",
    ));
  }
}
