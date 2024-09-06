import 'package:dating/data/model/user.dart';
import 'package:dating/data/repository/member_block_respository.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:dating/utils/enums.dart';
import 'package:get/get.dart';

class MemberBlockController extends GetxController {
  final MemberBlockRespository memberBlockRespository;

  MemberBlockController({required this.memberBlockRespository});

  static MemberBlockController get to => Get.find();

  final Rx<List<User>> _blockedUsers = Rx<List<User>>([]);

  List<User> get blockedUsers => _blockedUsers.value;

  final Rx<Status> _isLoading = Rx<Status>(Status.loaded);

  Status get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();
    fetchBlockedUsers();
  }

  Future<void> fetchBlockedUsers() async {
    _isLoading(Status.loading);
    try {
      final response = await memberBlockRespository.getMemberBlockList();
      _blockedUsers.value.addAll(response);
      _blockedUsers.refresh();
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch blocked users: $e');
    } finally {
      _isLoading(Status.loaded);
    }
  }

  Future<void> memberBlock(int id) async {
    try {
      await memberBlockRespository.postMemberBlock(id);
      Get.offAll(() => const HomeScreen());
    } catch (e) {
      Get.snackbar('Error', 'Failed to block user: $e');
    }
  }

  Future<void> memberNonBlock(int id) async {
    try {
      await memberBlockRespository.postMemberNonBlock(id);
      fetchBlockedUsers();
    } catch (e) {
      Get.snackbar('Error', 'Failed to unblock users: $e');
    }
  }
}
