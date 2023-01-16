# Table of Contents
- [Swift Package Manager](#swift-package-manager)
  -  [Run project (without NFC)](#using-the-sdk-with-nfc-and-run-your-project)
  -  [Run project (with NFC)](#using-the-sdk-and-run-your-project)
- [Usage](#Usage)
- [Code Example](#code-example)
- [SDK error codes](#sdk-error-codes)
  -  [How to deal with errors](#how-to-deal-with-errors)
- [Fat Framework Support](#fat-framework-support)



# :package: Swift Package Manager :package:

The IDnow framework can be used to incorporate the IDnow AutoIdent platform into iOS Objective C or Swift apps.

Since sdk version 4.15.0 (Xcode 13.2) we added support for swift package manager by providing the corresponding xcframeworks as binary targets.
To add the swift package to your project please refer to: https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app

Currently the two variants of IDNowSDKCore are available as xcframeworks:
* [without NFC](#using-the-sdk-and-run-your-project) :package:
* [with NFC](#using-the-sdk-with-nfc-and-run-your-project) :package:

Note : In order for Video selfie and NFC to have the correct translations You have to localise your app to the desired language(s)

Please choose the corresponding setup required for your use-cases. If you need NFC please reach out to IDnow to obtain the needed dependencies. (see: [Using the SDK with NFC and run your project](#using-the-sdk-with-nfc-and-run-your-project))

Note: If you see improvements for the Swift Package please let us know in the issues section. Thank for your support! :postbox: \


#### Example:

Adding the library required:
<br>

![swift_package_manager_choose](https://github.com/idnow/de.idnow.ios.sdk.spm/blob/main/images/swift_package_manager.png)

Embedded section:
<br>
![swift_package_manager_embedded](https://github.com/idnow/de.idnow.ios.sdk.spm/blob/main/images/swift_package_manager_2.png)

<br>



<br>

### Using the SDK and run your project 

* Add swift package: `https://github.com/idnow/de.idnow.ios.sdk.spm` as dependency
* Insert SDK calling code in your app: [Code Example](#code-example)
* Add NSCameraUsageDescription and NSPhotoLibraryUsageDescription keys in your app's .plist file 
* Compile & Run

<br>

### Using the SDK with NFC and run your project

#### This version of IDnowCoreSDK is dependent on the presence of ReadID frameworks.

#### New Feature: Reading NFC chip of electronic IDs & Passports and validating their authenticity

By leveraging the NFC capability (Near Field Communication), our SDK can now read out the data of the NFC chips of electronic IDs & Passports which adds an extra layer of security to digital identity verification. This will speed boost the identity verification process and increase the level of fraud protection.
We support ICAO 9303 documents (passports, ID cards, residence permits) : please reach out to IDnow for more information.

* Add swift package: `https://github.com/idnow/de.idnow.ios.sdk.spm` as dependency
* Put ReadID_UI.xcframework and ReadID.xcframework in the app folder (please reach out to IDnow to obtain the ReadID xcframeworks)
* XCode -> Target -> General -> Frameworks, Libraries and Embedded Content -> Add ReadID_UI.xcframework and ReadID.xcframework and check Embed and Sign.
* On the Signing & Capabilities configuration tab add the Capability ‘Near Field Communication Tag Reading’
* Add ‘NFCReaderUsageDescription’ to your App’s Info.plist file 
* Copy the snippet below into your App’s Info.plist file 
```
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key> <array>
<string>A0000002471001</string>
<string>A00000045645444C2D3031</string>
</array>

```
* Add NSCameraUsageDescription and NSPhotoLibraryUsageDescription keys in your App's .plist file 
* Insert SDK calling code in your app: [Code Example](#code-example)
* Compile & Run

<br>

## Usage

### Starting an automated ident

The API to start an automated Ident is:
```
public func start(token: String, preferredLanguage: String = default, fromViewController: UIViewController, listener: @escaping IDNowSDKResultListener)
```

* The token needs to be all uppercase character only and should conform to the following regular expression  `.{3}-.{5}$`
* Setting the prefferedLanguage (optional) tells the SDK in which language the AutoIdent UI should be shown. If the language is not available the framework first tries the language of the device and if that is not available it falls back to English.
  These ISO 639-1 language codes are currently supported: bg (Bulgarian), cs (Czech), da (Danish), de (German), el (Greek), en (English), es (Spanish), et (Estonian), fi (Finnish), fr (French), hr (Croatian), hu (Hungarian), it (Italian), ja (Japanese), ka (Georgian), ko (Korean), lt (Lithuanian), lv (Latvian), nb (Norwegian), nl (Dutch), pl (Polish), pt (Portuguese), ro (Romanian), ru (Russian), sk (Slovak), sl (Slovenian), sr (Serbian), sv (Swedish), tr (Turkish), zh (Chinese).
  
* the calling view controller
* an IDnowResultListener which gets called once the SDK returns. The possible return codes are:
** FINISHED the ident was finished
** CANCELLED the user cancelled the ident
** ERROR an error occurred 

### Code example



```

IDNowSDK.shared.start(token: token, preferredLanguage:"en", fromViewController: self, listener:{(result: IDNowSDK.IdentResult.type, statusCode: IDNowSDK.IdentResult.statusCode, message: String) in
            if result == .ERROR {
                self.showAlert(text: statusCode.description)
            } else if result == .FINISHED {
                
            }
        })

```

Code example If you are using an SDK version lower than 5.0.0 

```
IDNowSDK.shared.start(token: token, preferredLanguage:"en", fromViewController: self, listener:{ (result: IDNowSDK.IdentResult, message: String) in
   if result == IDNowSDK.IdentResult.ERROR {
       self.showAlert(text: message)
   } else if result == IDNowSDK.IdentResult.FINISHED {

   }
})

```
## SDK error codes

In case of IDNowSDK.IdentResult.type.ERROR, the possible error codes are below.

```
"EUnreachable" --> No tetwork connection
"E10" --> General type of error
"E100" --> Ident code syntax incorrect
"E101" --> Ident code not found
"E102" --> Ident code expired
"E103" --> Ident code already completed
"E110" --> Get ident info failed; invalid response
"E111" --> Get ident info failed; server reachability
"E112" --> Get ident info failed; Internal error
"E120" --> Parsing error
"E121" --> Server error
"E130" --> Get ident resources failed; invalid response
"E131" --> Get ident resources failed; server reachability
"E140" --> Get name failed; invalid response
"E141" --> Get name failed; server reachability
"E142" --> Get name failed; full name missing
"E150" --> Start ident failed; invalid response
"E151" --> Start ident failed; server reachability
"E152" --> Start ident failed; missing session key
"E153" --> Start ident failed; wrong ident method
"E160" --> Get Emirates NFC resources failed; invalid response
"E161" --> Get Emirates NFC resources failed; server reachability
"E170" --> Socket connection force closed
"E171" --> Process force closed

```

## How to deal with errors

* For E102 it is recommended to create another ident, and restart the process with the new ident code.
* For E103 it is recommended to show a screen to the user with the message that they have submitted all info needed and that they should wait for the final result.
* For E170 it is recommended to notify the user that the ident process timed out or was started on a different device and ask them to try again.
* For all other error codes it is recommended to show a generic error for the user and ask them to try again by restarting the process.


### Fat Framework Support

In case you want to continue using fat framework, please get in touch with your IDnow representative.
