This is based on [an excellent Stack Exchange answer by REJH](https://android.stackexchange.com/a/160350) (go there and give him an upvote).

## Install with adb

1. Turn on "Android debugging" in your device's Developer options.
1. Enable root access for ADB.
1. Make sure your device is visible when running `adb devices`.
1. Launch adb with root privileges: `adb root`
1. Download `disable-direct-share.xml`.
1. Install:
   ```
   adb push disable-direct-share.xml /data/system/ifw/
   ```

### Uninstall

```
$ adb shell ls /data/system/ifw/
disable-direct-share.xml
$ adb shell rm /data/system/ifw/disable-direct-share.xml
```
