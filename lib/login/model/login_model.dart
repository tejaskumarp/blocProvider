import 'package:untitled1/login/model/base_model.dart';

class LoginModel extends BaseModel {
  String? password;
  String? userType;
  String? encryptPassword;
  bool? returnFlag;
  bool? passwordChangeFlag;
  bool? existFlag;
  String? currentPassword;
  bool? changePassword;
  String? newPassword;
  String? confirmPassword;
  Object? createdBy;
  Object? createdOn;
  Object? modifiedBy;
  Object? modifiedOn;
  String? flagUpdate;
  String? flagDelete;
  String? flagInsert;
  String? flagSaved;
  Object? localDateFormat;
  Object? locale;
  String? userLoginCode;
  String? applicationId;
  String? tenantId;

  LoginModel(
      {this.password,
      this.userType,
      this.encryptPassword,
      this.returnFlag,
      this.passwordChangeFlag,
      this.existFlag,
      this.currentPassword,
      this.changePassword,
      this.newPassword,
      this.confirmPassword,
      this.createdBy,
      this.modifiedBy,
      this.modifiedOn,
      this.flagUpdate,
      this.flagDelete,
      this.flagInsert,
      this.flagSaved,
      this.localDateFormat,
      this.locale,
      this.userLoginCode,
      this.applicationId,
      this.tenantId});

  factory LoginModel.fromJson(Map<String, dynamic> responseData) {
    return LoginModel(
      password: responseData['password'],
      userType: responseData['userType'],
      encryptPassword: responseData['encryptPassword'],
      returnFlag: responseData['returnFlag'],
      passwordChangeFlag: responseData['passwordChangeFlag'],
      existFlag: responseData['existFlag'],
      currentPassword: responseData['currentPassword'],
      changePassword: responseData['changePassword'],
      confirmPassword: responseData['confirmPassword'],
      newPassword: responseData['newPassword'],
      createdBy: responseData['createdBy'],
      modifiedBy: responseData['modifiedBy'],
      modifiedOn: responseData['modifiedOn'],
      flagUpdate: responseData['flagUpdate'],
      flagDelete: responseData['flagDelete'],
      flagInsert: responseData['flagInsert'],
      flagSaved: responseData['flagSaved'],
      localDateFormat: responseData['localDateFormat'],
      locale: responseData['locale'],
      userLoginCode: responseData['userLoginCode'],
      applicationId: responseData['applicationId'],
      tenantId: responseData['tenantId'],
    );
  }
}
