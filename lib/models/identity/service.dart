abstract class IdentityService {
  String get username;
  String get serviceName;
  String get proofUrl;
  String get display => '$username@$serviceName';
  bool get isProoved => username != null;
}
