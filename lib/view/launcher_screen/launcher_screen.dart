import 'package:custom_theme_sample/controller/app_config_controller.dart';
import 'package:custom_theme_sample/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse("sms:5550101234"),
                      mode: LaunchMode.externalApplication);
                },
                child: Text(
                  "Linkedin",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Switch(
                value: context.watch<AppConfigController>().isDark,
                onChanged: (value) {
                  context.read<AppConfigController>().onToggleTheme(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
