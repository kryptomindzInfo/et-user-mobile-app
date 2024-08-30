import 'package:get/get.dart';

class TransferSecurityAndPrivacyController extends GetxController {
  RxBool messagingWithFriends = false.obs;
  RxBool allowtoaddmeGroups = true.obs;
  RxBool personalisedEmails = true.obs;
  RxBool personalisedPushes = false.obs;

  void setmessagingWithFriends() {
    messagingWithFriends.value = !messagingWithFriends.value;
  }

  void setallowtoaddmeGroups() {
    allowtoaddmeGroups.value = !allowtoaddmeGroups.value;
  }

  void setpersonalisedEmails() {
    personalisedEmails.value = !personalisedEmails.value;
  }

  void setpersonalisedPushes() {
    personalisedPushes.value = !personalisedPushes.value;
  }
}
