import 'package:dating/controller/user_controller.dart';
import 'package:dating/data/model/feed.dart';
import 'package:dating/screen/profile/someone_profile_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class FeedWidget extends StatefulWidget {
  final Feed? feed;
  final void Function() onTap;
  const FeedWidget({super.key, required this.feed, required this.onTap});

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24.0),
      highlightColor: const Color(0xffffe6f0),
      onTap: () {
        _showApply();
      },
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          children: [
            _profile(),
            _title(),
          ],
        ),
      ),
    );
  }

  /// 상대방의 피드를 누르면 팝업창이 뜸
  /// 세부 글 내용을 볼 수 있고,
  /// 참여 신청버튼을 통해 신청 가능.
  Future<dynamic> _showApply() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: _profile(),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _title(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.feed!.content.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          (widget.feed?.user != UserController.to.myInfo!)
              ? _join()
              : Container(),
        ],
      ),
    );
  }

  /// 글쓴이의 프로필을 보여줌
  /// 우측 아이콘은 글쓴이를 차단/취소 가능.
  Widget _profile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// 글쓴이 프로필
          Container(
            width: Get.size.width * 0.13,
            height: Get.size.width * 0.13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  () => SomeoneProfileScreen(
                    user: widget.feed!.user!,
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:
                    Image.network(widget.feed!.user!.image!, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(width: 10),

          /// 글쓴이 정보
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.feed!.user!.nickName!,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${widget.feed!.user!.age}세',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on,
                        size: 20, color: Colors.black),
                    Text(
                      widget.feed!.user!.address!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// 차단 or 수정,취소 여부 버튼
          IconButton(
            onPressed: widget.onTap,
            icon: IconShape.iconMore,
          ),
        ],
      ),
    );
  }

  /// 피드 타이틀을 보여줌
  /// ex) 3:3 과팅 구해요
  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Flexible(
            child: Text(
              widget.feed!.title.toString(),
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 참여 신청 버튼
  Widget _join() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SizedBox(
            height: 50,
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ThemeColor.fontColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    joinToast();
                  },
                  child: const Text(
                    '참여하기',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// 참여 신청을 알려주는 알림 함수
  void joinToast() {
    Fluttertoast.showToast(
      msg: '참여 신청하였습니다.',
      backgroundColor: Colors.white,
      gravity: ToastGravity.CENTER,
      fontSize: 17,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
    );
  }
}
