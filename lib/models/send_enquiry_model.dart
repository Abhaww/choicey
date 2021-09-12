class SendEnquiryModel {
  String ip;
  String first_name;
  String last_name;
  String subject;
  String email;
  String message;

  SendEnquiryModel(
      {required this.message,
      required this.email,
      required this.first_name,
      required this.ip,
      required this.last_name,
      required this.subject});
}
