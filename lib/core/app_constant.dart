import 'package:flutter/material.dart';

mixin AppConstant {
  static const Color titlecolor = Color(0xFFFFFFFF);
  static const Color subtitlecolor = Color.fromRGBO(166, 177, 187, 1);
  static const Color primaryColor = Color.fromRGBO(21, 181, 114, 1);
  static const Color backgroundColor = Color.fromRGBO(7, 17, 26, 1);
  static const Color preBGColor = Color.fromRGBO(69, 77, 83, 1);
}

mixin SocialMediaURLs {
  static const locURL = 'https://goo.gl/maps/zoD7PnpL9tkn3D969';
  static const callURL = 'tel:+918726776286';
  static const mailURL = 'mailto:jaiswal4sudeep@gmail.com';
  static const linkedinURL = 'https://www.linkedin.com/in/jaiswal4sudeep/';
  static const fbURL = 'https://www.facebook.com/JaiswalSudeep/';
  static const igURL = 'https://www.instagram.com/jaiswal4sudeep/';
  static const twitterURL = 'https://twitter.com/Jaiswal4sudeep';
  static const githubURL = 'https://github.com/jaiswal4sudeep';
  static const techDockLabs = 'https://techdocklabs.com/';
  static const resumeURL =
      'https://drive.google.com/file/d/1deRO2SebYBHTLNVOZpOai-hv644EOIdt/view?usp=sharing';
}

mixin ProjectsURL {
  static const sortItOutURL =
      '${SocialMediaURLs.githubURL}/SortItOut-Sorting_Visualizer';
  static const drawingAppURL = '${SocialMediaURLs.githubURL}/DrawingApp';
  static const dartUpUrl = '${SocialMediaURLs.githubURL}/dartup';
  static const spaceWarURL = '${SocialMediaURLs.githubURL}/SpaceWar';
}

mixin MailService {
  static const mailSenderAPIURL = 'https://api.emailjs.com/api/v1.0/email/send';
  static const serviceId = 'service_c8yi8t6';
  static const templateId = 'template_5wxw4vi';
  static const userId = 'XabT7aBZH3rjIyWv0';
}
