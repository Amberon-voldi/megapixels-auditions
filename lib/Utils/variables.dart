import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer' as developer;

mystyle(double size, [Color? color, FontWeight fw = FontWeight.w400]) {
  return TextStyle(fontSize: size, color: color, fontWeight: fw);
}

logaction(msg) {
  developer.log('\x1B[32m$msg\x1B[0m]');
}

launchlinks(context, IosLink, AndriodLink) async {
  if (Platform.isIOS) {
    if (await canLaunchUrl(IosLink)) {
      await launchUrl(IosLink, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text('Unable to connect with the app')));
    }
  } else {
    if (await canLaunchUrl(AndriodLink)) {
      await launchUrl(AndriodLink, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: new Text('Unable to connect with the app')));
    }
  }
}
