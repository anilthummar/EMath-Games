import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

/// Configuration for notification channels.
class NotificationChannelConfig {
  const NotificationChannelConfig({
    this.channelGroupKey = 'basic_channel_group',
    this.channelGroupName = 'Basic group',
    this.channelKey = 'basic_channel',
    this.channelName = 'Basic notifications',
    this.channelDescription = 'Notification channel for basic tests',
    this.defaultColor = Colors.blue,
    this.ledColor = Colors.white,
  });

  final String channelGroupKey;
  final String channelGroupName;
  final String channelKey;
  final String channelName;
  final String channelDescription;
  final Color defaultColor;
  final Color ledColor;

  NotificationChannel get channel => NotificationChannel(
        channelGroupKey: channelGroupKey,
        channelKey: channelKey,
        channelName: channelName,
        channelDescription: channelDescription,
        defaultColor: defaultColor,
        ledColor: ledColor,
      );

  NotificationChannelGroup get channelGroup => NotificationChannelGroup(
        channelGroupKey: channelGroupKey,
        channelGroupName: channelGroupName,
      );
}
