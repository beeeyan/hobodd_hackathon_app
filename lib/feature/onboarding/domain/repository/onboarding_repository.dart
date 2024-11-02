import '../model/create_user_post_data.dart';
import '../model/join_room_post_data.dart';

abstract class OnboardingRepository {
  Future<void> createUserPost({
    required CreateUserPostData data,
  });

  Future<void> joinRoomPost({
    required JoinRoomPostData data,
  });
}
