// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDNowSDKCore",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "IDNowSDKCore-with-NFC",
            targets: ["IDNowSDKCore-with-NFC", "DependencyWrapper"]
        ),
        .library(
            name: "IDNowSDKCore-without-NFC",
            targets: ["IDNowSDKCore-without-NFC", "DependencyWrapper"]
        )
    ],
    dependencies: [
        .package(
            name: "XS2AiOSNetService",
            url: "https://github.com/FinTecSystems/xs2a-ios-netservice.git",
            revision: "1.0.7"
        )],
    targets: [
        // .binaryTarget doesn't support package dependencies so we use a wrapper to fix this
        .target(
            name: "DependencyWrapper",
            dependencies: [
                "FaceTecSDK", "XS2AiOSNetService"
            ],
            path: "DependencyWrapper"
        ),
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
        )],
    swiftLanguageVersions: [.v5]
)
