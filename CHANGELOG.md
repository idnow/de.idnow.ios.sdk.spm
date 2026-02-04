## Changelog

### v5.18.0 Latest
- Updated NFC scanning component
- Fix for FR ID Card
- Updated Bank Transfer component

### v5.17.0
- Improve logging for failed NFC sessions
- Improvement to Passport 2nd page signature capture feature
- Added progress bar in the Security Features step
- Fixed issues with document manual capture
- Bug fixes

### v5.16.0
- Manual capture mode for 2nd page Signature Capture feature (Frontend only)
- Support for new config to remove checkboxes in Signing screen for IDnow QTSP
- Compatibility with Xcode 26

### v5.15.0
- Updated bank transfer component

### v5.14.0
- iOS 26 compatibility improvements
- Updated Liveness component

### v5.13.2
- UI Bug fixes

### v5.13.0
- Option to capture image of passport signature page
- Updated components - Liveness, NFC scanning
- Text translation optimizations

### v5.12.2
- Fixing SDK variants

### v5.12.1
- Hotfix for an issue with recording the liveness session

### v5.12.0
- New passive liveness solution
- Preview multiple contract documents in the Signing process
- Updated NFC scanning component
- Improved Document capture UX with Tensorflow
- Bug fixes

### v5.11.1
- Updated Liveness detection component
- Bug fixes

### v5.10
- Support for iOS 18
- Fallback mechanism for quality detection checks
- Usage analytics improvement with app identifier
- Updated NFC scanning component
- Removed dependency of old Xcode versions

### v5.9.2
- Added support for arm64 simulator architecture
- Separate config to enable Finish Screen
- Bug fixes

### 5.9.1
- Critical hotfix for Ident token issue for IDnow Test environment. Due to a change in the Ident-ID schema for our Test environment, older SDK versions will no longer work with the Test environment. Please use this SDK version (and above) in order to continue using AutoIdent with the IDnow Test environment. There is no impact on the Prod environment.

### 5.9.0
- Image quality improvements using TensorFlow
- Updated NFC scan component
- Bugfixes

### 5.8.3
- Privacy manifest updates
- Bugs and crash fixes

### 5.8.2
- Updated Liveness component
- Bug fixes

 ### 5.7.0
- Bug fixes

 ### 5.6.0
- Bug fixes

 ### 5.5.0
- Updated NFC (ReadID) component
- Updated Liveness component
- Support for iOS 17
- Fix crashes in Liveness recording
- Memory optimization
- French Translation fixes in Liveness step
- Fix blurriness issue in Liveness step
- Other bug fixes

 ### 5.4.1
- Fixed naming issue for one of the dependencies


 ### 5.4.0
- Various Bug fixes

### 5.2.1
- Bug fixes

### 5.2.0
- Updated language translations for BG, TR, UK, RU, RO, PL, FI
- Harmonized lottie filenames between Android and iOS
- Refactored lottie animation loading logic for Additional Document step based on backend config
- Liveness solution updated to 9.6.22
- Fixed syntax of variable ${transactionnumber} used in redirect, success and failure URLs
- Bug fixes

### 5.1.0
Changes:
- Improved QES signing flow
- Configurable abort reasons
- Option to disable failure screen
- Contextual failure message on failure screen
- Support for "${transactionNumber}" variable in success, redirect and failureURLs
- Updated dependencies for Bank Transfer
- Bug fixes

### 5.0.5
Changes:
- Fixed some critical bugs

### 5.0.4
Changes:
- Updated liveness solution
- Translations update for Turkish
- Bug Fixes


### 5.0.1
Changes:
- Various bug fixes and improvements

### 5.0.0
Changes:
- BREAKING CHANGE: Added new ERROR codes for SDK callback
- Updated introduction screen UI
- Enabled upload option on additional document step
- Various bug fixes

### 4.19.1
Changes:
- Updated bank transfer
- Updated Package.swift to use frameworks dependency from repository, rather than providing it with the package
- Various bug fixes

### 4.19.0
Changes:
-  Added new component for verifying user phone number via OTP
-  Improved NFC and updated dependency. Please reach out to your CS manager to get the new NFC dependency
-  Various bug fixes

### 4.18.0
Changes:
-  Improved focus on document capture
-  Updated Liveness detection
-  Various bug fixes

### 4.16.3
Changes:
-  Add support of arm64 to enable simulator on M1
-  Improved bank transfer
-  Updated the NFC dependency, please make sure to request the new version when updating to this version.
-  Various bug fixes

### 4.16.2
Changes:
-  Improved bank transfer
-  Updated the NFC dependency, please make sure to request the new version when updating to this version.
-  Various bug fixes

### 4.16.1
Changes:
-  Fix issue with Swift package and Xcode 13.3
-  Updated layout of the user feedback screens
-  Enhanced layout of countries selection
-  Various performance improvements
-  Various bug fixes

### 4.16.0
Changes:
-  Fix issue with Swift package and Xcode 13.3
-  Updated layout of the user feedback screens
-  Enhanced layout of countries selection
-  Various performance improvements
-  Various bug fixes

