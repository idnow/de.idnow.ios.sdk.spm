// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDNowSDKCore",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "IDNowSDKCore-with-NFC",
            targets: [
                "IDNowSDKCore-with-NFC", "FaceTecSDK", "XS2AiOSNetService"
            ]),
        .library(
            name: "IDNowSDKCore-without-NFC",
            targets: [
                "IDNowSDKCore-without-NFC", "FaceTecSDK", "XS2AiOSNetService"
            ])
    ],
    targets: [
        .binaryTarget(
            name: "IDNowSDKCore-with-NFC",
            path: "Frameworks/IDNowSDKCore-with-NFC.xcframework"
        ),
        .binaryTarget(
            name: "IDNowSDKCore-without-NFC",
            path: "Frameworks/IDNowSDKCore-without-NFC.xcframework"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            path: "Frameworks/FaceTecSDK.xcframework"
        ),
        .binaryTarget(
            name: "XS2AiOSNetService",
            url: "https://github.com/FinTecSystems/xs2a-ios-netservice/releases/download/1.0.7/XS2AiOSNetService.xcframework.zip",
            checksum: "987e1e075fc9ca8b2f22cb60b436b84cc1304bb7c03cbce967979b588e5e8868"
        )
    ],
    swiftLanguageVersions: [.v5]
)
