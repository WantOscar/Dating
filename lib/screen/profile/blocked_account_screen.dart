import 'package:dating/widget/icon_header.dart';
import 'package:dating/widget/main/alart_widget.dart';
import 'package:flutter/material.dart';

class BlockedAccountScreen extends StatelessWidget {
  const BlockedAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconHeader(text: '차단된 계정'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AlertWidget(
              text: const Text('홍길동'),
              text2: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Text(
                    '성북구 20세 178cm',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              text3: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF006B), // 배경색 설정
                      borderRadius: BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                    ),
                    child: const Text(
                      '차단함',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                          ),
                    ),
                  ),
                ],
              ),
            ),
            AlertWidget(
              text: const Text('홍길동'),
              text2: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Text(
                    '성북구 20세 178cm',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              text3: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF006B), // 배경색 설정
                      borderRadius: BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                    ),
                    child: const Text(
                      '차단함',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                          ),
                    ),
                  ),
                ],
              ),
            ),
            AlertWidget(
              text: const Text('홍길동'),
              text2: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Text(
                    '성북구 20세 178cm',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              text3: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF006B), // 배경색 설정
                      borderRadius: BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                    ),
                    child: const Text(
                      '차단함',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                          ),
                    ),
                  ),
                ],
              ),
            ),
            AlertWidget(
              text: const Text('홍길동'),
              text2: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Text(
                    '성북구 20세 178cm',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              text3: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF006B), // 배경색 설정
                      borderRadius: BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                    ),
                    child: const Text(
                      '차단함',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                          ),
                    ),
                  ),
                ],
              ),
            ),
            AlertWidget(
              text: const Text('홍길동'),
              text2: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  Text(
                    '성북구 20세 178cm',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              text3: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0), // 컨테이너 내부에 패딩 추가
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF006B), // 배경색 설정
                      borderRadius: BorderRadius.circular(50), // 컨테이너 모서리를 둥글게
                    ),
                    child: const Text(
                      '차단함',
                      style: TextStyle(
                          color: Colors.white, fontSize: 12 // 텍스트 색상 설정
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
