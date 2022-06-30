import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:strapiapptest/model/post.model.dart';

class ServicesApi {
  getdata() async {
    var url = Uri.parse("http://localhost:1337/api/products");

    var res = await http.get(url);
    log(res.body.toString());
  }

  postData() async {
    var url = Uri.parse("http://localhost:1337/api/products");
    await http.post(url, body: {
      "data": {"name": "asd", "email": "santa@globizs.com"}
    });
  }
}
