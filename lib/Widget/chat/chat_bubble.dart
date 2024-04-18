import 'package:dating/style/constant.dart';
import 'package:flutter/material.dart';

import '../../data/model/message_model.dart';

/// 사용자의 메시지를 보여주는
/// 메시지 버블 위젯
/// 채팅방에서 사용되는 버블위젯.
class ChatBubble extends StatefulWidget {
  final MessageModel message;
  const ChatBubble({
    super.key,
    required this.message,
  });

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  late bool isMe;

  @override
  void initState() {
    isMe = widget.message.id == 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return _myBubble();
    } else {
      return _notMyBubble();
    }
  }

  /// 채팅을 보내는 사용자의 프로필 사진을
  /// 보여주는 프로필 위젯
  Widget _profile() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Color(0xffededed),
      ),
    );
  }

  /// 내가 보낸 메시지를 보여주는 메시지 버블
  /// 내가 보낸 메시지는 말풍선의 꼬리가
  /// 왼쪽임.
  Widget _myBubble() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _bubble(),
      ],
    );
  }

  /// 상대방이 보낸 메시지를 보여주는
  /// 메시지 버블 위젯 상대방이 보낸 메시지는
  /// 말풍선의 꼬리가 오른쪽임.
  Widget _notMyBubble() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _profile(),
        _bubble(),
      ],
    );
  }

  /// 기본 버블 위젯
  /// 메시지 정보에 담겨온 사용자의 아이디 값을 이용해서
  /// 말풍선 꼬리의 방향을 정할 수 있음.
  Widget _bubble() {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.055,
      decoration: BoxDecoration(
        color: (isMe) ? ThemeColor.fontColor : const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.only(
          topLeft: (isMe) ? const Radius.circular(24) : Radius.zero,
          topRight: (isMe) ? Radius.zero : const Radius.circular(24),
          bottomLeft: const Radius.circular(24),
          bottomRight: const Radius.circular(24),
        ),
      ),
      child: Text(
        widget.message.message!,
        style: TextStyle(color: (isMe) ? Colors.white : Colors.black),
      ),
    );
  }
}
