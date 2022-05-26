import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/app_constant.dart';
import '../../_dashboard/application/url_provider.dart';
import '../../_dashboard/widgets/social_media_widget.dart';

class ContactSection extends HookConsumerWidget {
  const ContactSection({
    Key? key,
    required this.formkey,
    required this.width,
    required this.name,
    required this.email,
    required this.message,
    required this.isMobile,
  }) : super(key: key);

  final GlobalKey<FormState> formkey;
  final double width;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController message;
  final bool isMobile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formkey,
      child: Center(
        child: Column(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                color: AppConstant.backgroundColor,
                border: Border.all(
                  color: AppConstant.preBGColor.withOpacity(0.5),
                  width: 1.sp,
                ),
              ),
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contact Form',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: name,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name cannot be empty";
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: email,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "E-Mail cannot be empty";
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-zA-Z0-9+_.-]+.[a-z]")
                                .hasMatch(value)) {
                              return "Please enter a valid E-Mail";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: TextFormField(
                          controller: message,
                          autofocus: false,
                          cursorColor: AppConstant.primaryColor,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.newline,
                          minLines: 5,
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 12.sp,
                                    ),
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.primaryColor,
                                width: 1,
                              ),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstant.preBGColor,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Message cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        child: SizedBox(
                          child: TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                final snackBar = SnackBar(
                                  content: SizedBox(
                                      child: Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.solidCircleCheck,
                                      ),
                                      SizedBox(
                                        width: 5.sp,
                                      ),
                                      const Text(
                                        'Mail Sent Successfully!',
                                      ),
                                    ],
                                  )),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  backgroundColor: AppConstant.primaryColor,
                                  duration: const Duration(
                                    milliseconds: 1500,
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    AppConstant.primaryColor.withOpacity(0.2),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                  side: BorderSide(
                                    color: AppConstant.primaryColor,
                                    width: 1.sp,
                                  ),
                                ),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Send Message',
                                style: TextStyle(
                                  color: AppConstant.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            isMobile
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialMediaWidget(FontAwesomeIcons.github, () {
                            ref
                                .read(urlProvider.notifier)
                                .openURL(SocialMediaURLs.githubURL);
                          }),
                          SocialMediaWidget(FontAwesomeIcons.linkedin, () {
                            ref
                                .read(urlProvider.notifier)
                                .openURL(SocialMediaURLs.linkedinURL);
                          }),
                          SocialMediaWidget(FontAwesomeIcons.twitter, () {
                            ref
                                .read(urlProvider.notifier)
                                .openURL(SocialMediaURLs.twitterURL);
                          }),
                          SocialMediaWidget(FontAwesomeIcons.instagram, () {
                            ref
                                .read(urlProvider.notifier)
                                .openURL(SocialMediaURLs.igURL);
                          }),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
            Center(
              child: Text(
                'Made with \u2665 with Flutter.',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 12.sp,
                    ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
