fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
## iOS
### ios register_app
```
fastlane ios register_app
```
Create a new app on AppStoreConnect
### ios beta
```
fastlane ios beta
```
Submit a beta version to TestFlight
### ios release
```
fastlane ios release
```
Release a new version to AppStore with automated screenshots
### ios build_appstore
```
fastlane ios build_appstore
```
Generate a build for App Store submission
### ios build_adhoc
```
fastlane ios build_adhoc
```
Generate a build for Ad Hoc submission

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
