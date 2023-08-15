class emailVerifyStor {
  static final emailVerifyStor _singleton = emailVerifyStor._internal();
  factory emailVerifyStor() {
    return _singleton;
  }
  emailVerifyStor._internal();
  String? storemail;
  String? otp;
  String? type;
  String? usercode;
}
