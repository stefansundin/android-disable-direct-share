This is based on [an excellent Stack Exchange answer by REJH](https://android.stackexchange.com/a/160350) (go there and give him an upvote).

## Android 10 warning

**It seems like this will crash apps if used on Android 10.** See [issue #2](https://github.com/stefansundin/android-disable-direct-share/issues/2) for discussion.

## Install without computer

1. Download an app that can copy a file to system directories. I used [Root Browser Classic](https://play.google.com/store/apps/details?id=com.jrummyapps.rootbrowser.classic).
1. Download [disable-direct-share.xml](https://github.com/stefansundin/android-disable-direct-share/releases/download/v1/disable-direct-share.xml).
1. Enable root access for Apps in your device's Developer options.
1. Use the app to copy the file to `/data/system/ifw/`.

## Install with adb

1. Turn on "Android debugging" in your device's Developer options.
1. Enable root access for ADB.
1. Make sure your device is visible when running `adb devices`.
1. Launch adb with root privileges: `adb root`
1. Download `disable-direct-share.xml`:
   ```
   wget https://raw.githubusercontent.com/stefansundin/android-disable-direct-share/master/disable-direct-share.xml
   ```
1. Install:
   ```
   adb push disable-direct-share.xml /data/system/ifw/
   ```

Uninstall with:

```
$ adb shell ls /data/system/ifw/
disable-direct-share.xml
$ adb shell rm /data/system/ifw/disable-direct-share.xml
```

## Install with TWRP

1. Download [disable-direct-share-v1.zip](https://github.com/stefansundin/android-disable-direct-share/releases/download/v1/disable-direct-share-v1.zip).
1. Download [disable-direct-share-v1-uninstall.zip](https://github.com/stefansundin/android-disable-direct-share/releases/download/v1/disable-direct-share-v1-uninstall.zip) so that you can easily uninstall it at a later time.
1. Reboot into TWRP and flash the zip file. Do not use zip signature verification.

## Magisk module

See this repository: https://github.com/AndroPlus-org/magisk-module-direct-share-disabler
