import 'dart:convert';

import 'package:http/http.dart' as Http;

import 'models/find_business_model/find_business_model.dart';
import 'models/register_new_user_model.dart';
import 'models/tags_model/tags_list.dart';
import 'models/tags_model/tags_model.dart';

const List<String> urls = [
  'https://choicey.us/get_login_register.php',
  'https://choicey.us/get_listings.php',
  'https://choicey.us/get_tags.php',
];
class ApiCalls {
  late RegisterAndLoginUserModel _userModel;

  Future<RegisterAndLoginUserModel> loginRegisterUser (String action, userName, password ) async {
    Http.Response _response;
    late RegisterAndLoginUserModel userModel;
    try {
      _response = await Http.post(Uri.parse(urls[0]),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: <String, String>{
        "action": action,
        "user_name": userName,
        "user_password": password,
        },
      );
      if (_response.statusCode == 200) {
        var decodedResponse = jsonDecode(_response.body);
        String data = decodedResponse['statusCode'];
        var userid = decodedResponse['userid'];
        if (data == 'success' && userid.runtimeType == int) {
          _userModel = RegisterAndLoginUserModel.fromJson(decodedResponse['userid']);
          userModel = _userModel;
        } else {
          throw Exception('Already registered');
        }
      } else {
        throw Exception('An error occured');
      }
    } on Exception catch (e) {
      print(e);
    }
    return userModel;
  }
  Future<FindBusinessModel> findBusiness (String searchKey, address) async {
    Http.Response _response;
    late FindBusinessModel businessModel;
    try {
      _response = await Http.post(Uri.parse(urls[1]),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: <String, String>{
        "what_search": searchKey,
        "address": address,
        "page": '',
        "order_by": '',
        "order": '',
        },
      );
      if (_response.statusCode == 200) {
        var decodedResponse = jsonDecode(_response.body);
        int count = decodedResponse['count'];
        if (count != 0) {
          businessModel = FindBusinessModel.fromJson(decodedResponse);
        } else {
          throw Exception('No listing found!');
        }
      } else {
        throw Exception('An error occured');
      }
    } on Exception catch (e) {
      print(e);
    }
    return businessModel;
  }
  Future<TagsListModel> getTags () async {
    Http.Response _response;
    late TagsListModel _tagsListModel;
    try {
      _response = await Http.post(Uri.parse(urls[2]),
        headers: {
          "Content-Type": "application/x-www-form-urlencoded"
        },
      );
      if (_response.statusCode == 200) {
        var decodedResponse = jsonDecode(_response.body);
          _tagsListModel = TagsListModel.fromJson(decodedResponse);
      } else {
        throw Exception('An error occured');
      }
    } on Exception catch (e) {
      print(e);
    }
    return _tagsListModel;
  }
}

