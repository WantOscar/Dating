import 'package:dating/Widget/common_header.dart';
import 'package:dating/Widget/meet/meeting_room.dart';
import 'package:dating/data/model/meeting_room.dart';
import 'package:dating/data/repository/room_repository.dart';
import 'package:dating/screen/meet/meeting_create1_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingScreen extends StatelessWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonHeader(text: '오늘의 과팅❤️‍🔥'),
      body: FutureBuilder(
        future: RoomRepository().getMeetingRoomData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else {
            List<MeetingRoom> meetingRooms = snapshot.data!;
            const int index = 0;
            final meetingRoom = meetingRooms[index];
            return SingleChildScrollView(
              child: Column(
                children: [
                  // 대학생/일반 방 선택.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '대학생',
                          style: TextStyle(fontSize: 17, color: font2Color),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '일반',
                          style: TextStyle(fontSize: 17, color: font2Color),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 미팅방
                  Meeting(
                    meetingRoom: meetingRoom,
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          Get.to(() => const MeetingCreate1Screen());
        },
        backgroundColor: fontColor,
        child: IconShape.iconAdd,
      ),
    );
  }
}
