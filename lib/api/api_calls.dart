import 'dart:convert';
import 'dart:io';
import 'api_caller.dart';
import 'api_response.dart';
import 'package:sltbexpress/utils/settings.dart';

class ApiCalls {
  static Future<ApiResponse> signUp({
    required String nic,
    required String passport,
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["name"] = name;
      raw["role"] = "passenger";
      raw['email'] = email;
      raw["nic"] = nic;
      raw['passport'] = passport;

      return ApiCaller.postRequest('/api/register', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw['email'] = email;
      raw["password"] = password;

      return ApiCaller.postRequest('/api/login', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> editProfile({
    required String id,
    required String nic,
    required String passport,
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["id"] = id;
      raw["nic"] = nic;
      raw['passport'] = passport;
      raw["name"] = name;
      raw["role"] = "passenger";
      raw['email'] = email;
      raw['password'] = password;

      return ApiCaller.postRequest('/api/update_user', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> setBusSession({
    required String route,
    required String bus,
    required String driver,
    required String startTime,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["route_id"] = route;
      raw["bus_id"] = bus;
      raw['driver_id'] = driver;
      raw["start_time"] = startTime;

      return ApiCaller.postRequest('/api/start_bus', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> submitComplaint({
    required String id,
    required String journeyId,
    required String title,
    required String description,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["inspector_id"] = id;
      raw["journey_id"] = journeyId;
      raw['title'] = title;
      raw["description"] = description;

      return ApiCaller.postRequest('/api/complaint', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> createTrip({
    required String uid,
    required String jid,
    required String startPlace,
    required String endPlace,
    required String fare,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["user_id"] = uid;
      raw["journey_id"] = jid;
      raw['start_place'] = startPlace;
      raw["end_place"] = endPlace;
      raw["start_time"] = DateTime.now().toString();
      raw["fare"] = fare;

      return ApiCaller.postRequest('/api/start_trip', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> endTrip({
    required String jid,
    required String endTime,
  }) async {
    try {
      var raw = new Map<String, String>();
      raw["id"] = jid;
      raw["end_time"] = DateTime.now().toString();

      return ApiCaller.postRequest('/api/end_trip', data: raw);
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> getBalance() async {
    try {
      return ApiCaller.getRequest('/api/wallet_balance/12');
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> getOngoing() async {
    try {
      return ApiCaller.getRequest('/api/ongoing/12');
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> getPastTrips() async {
    try {
      return ApiCaller.getRequest('/api/ongoing/12');
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> getBuses() async {
    try {
      return ApiCaller.getRequest('/api/buses');
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }

  static Future<ApiResponse> getRoutes() async {
    try {
      return ApiCaller.getRequest('/api/routes');
    } catch (e) {
      ApiResponse response = ApiResponse();
      response.isSuccess = false;
      response.statusMessage = e.toString();
      return response;
    }
  }
}
