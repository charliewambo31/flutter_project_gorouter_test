import 'package:dio/dio.dart';



class ApiClient {
   final Dio _dio = Dio();

     Future<Response> registerUser(Map<String, dynamic>? userData) async {
        try {
          Response response = await _dio.post(
              'https://api.loginradius.com/identity/v2/auth/register',  //ENDPONT URL
              data: userData, //REQUEST BODY
              queryParameters: {'apikey': 'YOUR_API_KEY'},  //QUERY PARAMETERS
              options: Options(headers: {'X-LoginRadius-Sott': 'YOUR_SOTT_KEY', //HEADERS
          }));
          //returns the successful json object
          return response.data;
        // ignore: deprecated_member_use
        } on DioError catch (e) {
          //returns the error object if there is
          return e.response!.data;
        }
      }
    }

     Future<Response> login(String email, String password) async {
        try {
          // ignore: prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers
          var _dio;
          Response response = await _dio.post(
            'https://api.loginradius.com/identity/v2/auth/login',
            data: {
              'email': email,
              'password': password
            },
            queryParameters: {'apikey': 'YOUR_API_KEY'},
          );
          //returns the successful user data json object
          return response.data;
        // ignore: deprecated_member_use
        } on DioError catch (e) {
          //returns the error object if any
          return e.response!.data;
        }
      }
    
 Future<Response> getUserProfileData(String accesstoken) async {
        try {
          // ignore: no_leading_underscores_for_local_identifiers, prefer_typing_uninitialized_variables
          var _dio;
          // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
          var YOUR_ACCESS_TOKEN;
          Response response = await _dio.get(
            'https://api.loginradius.com/identity/v2/auth/account',
            queryParameters: {'apikey': 'YOUR_API_KEY'},
            options: Options(
              headers: {
                // ignore: unnecessary_brace_in_string_interps
                'Authorization': 'Bearer ${YOUR_ACCESS_TOKEN}',
              },
            ),
          );
          return response.data;
        // ignore: deprecated_member_use
        } on DioError catch (e) {
          return e.response!.data;
        }
    }

   Future<Response> logout(String accessToken) async {
        try {
          // ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
          var ApiSecret;
          // ignore: no_leading_underscores_for_local_identifiers, prefer_typing_uninitialized_variables
          var _dio;
          Response response = await _dio.get(
            'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
            queryParameters: {'apikey': ApiSecret.apiKey},
            options: Options(
              headers: {'Authorization': 'Bearer $accessToken'},
            ),
          );
          return response.data;
        // ignore: deprecated_member_use
        } on DioError catch (e) {
          return e.response!.data;
        }
      }
    