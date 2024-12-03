import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('MMMM d');
  final String formatted = formatter.format(date);
  return '$formatted${_getOrdinalSuffix(date.day)}';
}

String formatDateToYearMonth(DateTime date) {
  return DateFormat('yyyy-MM').format(date);
}

String formatDateToMonthName(DateTime date) {
  return DateFormat('MMMM').format(date);
}

String _getOrdinalSuffix(int day) {
  if (day >= 11 && day <= 13) {
    return 'th';
  }
  switch (day % 10) {
    case 1:
      return 'st';
    case 2:
      return 'nd';
    case 3:
      return 'rd';
    default:
      return 'th';
  }
}

DateTime getStartOfDay(DateTime date) {
  return DateTime(date.year, date.month, date.day, 0, 0, 0);
}

DateTime getEndOfDay(DateTime date) {
  return DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
}

String getUniqueId() {
  return const Uuid().v1();
}

int _generateUniqueId() {
  return DateTime.now().millisecondsSinceEpoch;
}

DateTime utcNow({bool includeTime = true}) {
  final dateTime = DateTime.now().toUtc();
  return dateTime.copyWith(
    hour: includeTime ? dateTime.hour : 0,
    minute: includeTime ? dateTime.minute : 0,
    second: includeTime ? dateTime.second : 0,
    millisecond: includeTime ? dateTime.millisecond : 0,
    microsecond: includeTime ? dateTime.microsecond : 0,
    isUtc: true,
  );
}

String? getRequiredValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field is required';
  }
  return null;
}

class Utilities {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);

    if (image != null) {
      return File(image.path);
    }
    return null; // Handle the null case
  }

  Future<File?> pickFile() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result != null && result.files.isNotEmpty) {
      File file = File(result.files.single.path!);
      return file;
    } else {
      return null;
    }
  }


  Future<File?> pickVideo(ImageSource source) async {
    final XFile? video = await _picker.pickVideo(source: source);
    if (video != null) {
      return File(video.path);
    }
    return null; // Handle the null case
  }

  static void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(s),
    ));
  }
}



({double lat, double lng})? getLatLongFromUrl({required String url}) {
  RegExp regExp = RegExp(r'@([\-+]?[0-9]*\.?[0-9]+),([\-+]?[0-9]*\.?[0-9]+)');
  Match? match = regExp.firstMatch(url);

  if (match != null) {
    double latitude = double.parse(match.group(1)!);
    double longitude = double.parse(match.group(2)!);
    return (lat: latitude, lng: longitude);
  } else {
    return null;
  }
}