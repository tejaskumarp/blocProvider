import 'package:untitled1/login/model/message.dart';

class BaseModel {
  String? authorizationId;
  String? loggedInUser;
  int? noCacheId;
  String? userId;
  String? terminal;

  // Flag to indicate Create (C), Update (U), Delete (D), Read /Feached (R)
  String? flagCRUD;
  List<Message>? messageList;
  String? tenent;
  bool? rampFlag;
  BaseModel({this.authorizationId,this.loggedInUser,this.noCacheId,this.userId,this.terminal,this.flagCRUD,this.messageList,this.rampFlag,this.tenent});

  factory BaseModel.fromJson(Map<String, dynamic> responseData) {
    return BaseModel(
        authorizationId: responseData['authorizationId'],
        loggedInUser: responseData['loggedInUser'],
        messageList: responseData['messageList'],
        noCacheId: responseData['noCacheId'],
        userId: responseData['userId'],
        terminal: responseData['terminal'],
        flagCRUD: responseData['flagCRUD'],
        tenent: responseData['tenent'],
        rampFlag: responseData['rampFlag'],
    );
  }
}
