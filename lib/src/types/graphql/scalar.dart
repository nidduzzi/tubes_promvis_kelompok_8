import 'dart:convert';

DateTime dateTimeFromJson(String data) => DateTime.parse(data);
String dateTimeToJson(DateTime time) => time.toIso8601String();

typedef JSONB = Map<String, dynamic>;

JSONB jsonbFromJson(String data) => const JsonDecoder().convert(data);
String jsonbToJson(JSONB data) => const JsonEncoder().convert(data);

typedef UUID = String;

UUID uuidFromJson(String data) => data;
String uuidToJson(UUID data) => data;

typedef Citext = String;

Citext citextFromJson(String data) => data.toLowerCase();
String citextToJson(Citext data) => data.toLowerCase();
