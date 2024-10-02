class Message{

  String? type;
  String? code;
  String? message;
  String? referenceId;
  List<Object>?placeHolder;
  Message({this.code,this.message,this.placeHolder,this.referenceId,this.type});
  factory Message.fromJson(Map<String, dynamic> responseData) {
    return Message(
      type: responseData['type'],
      code: responseData['code'],
      message: responseData['message'],
      placeHolder: responseData['placeHolder'],
      referenceId: responseData['referenceId'],
    );
  }

}