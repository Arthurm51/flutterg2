import 'package:get/get.dart';
import '../model/repo_unique.dart';
import '../rest/rest_client.dart';

class UniqueController extends GetxController with StateMixin <RepoUnique> {
  final RestClient _apiProvider = Get.find<RestClient>();

  void getRepoUnique(String user, String repo) {
    change(null, status: RxStatus.loading());
    _apiProvider.getRepoUnique(user, repo).then((response) {
      change(response, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}