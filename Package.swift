// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IDnowSDKCore",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IDnowSDKCore-with-NFC",
            targets: ["IDnowSDKCore-with-NFC", "FaceTecSDK"]),
        .library(
            name: "IDnowSDKCore-without-NFC",
            targets: ["IDnowSDKCore-without-NFC", "FaceTecSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "IDnowSDKCore-with-NFC",
            path: "IDnow-platform-iOS_4.15.0/IDnowSDKCore-with-NFC/IDNowSDKCore.xcframework"
        ),
        .binaryTarget(
            name: "IDnowSDKCore-without-NFC",
            path: "IDnow-platform-iOS_4.15.0/IDnowSDKCore-without-NFC/IDNowSDKCore.xcframework"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            path: "IDnow-platform-iOS_4.15.0/FaceTecSDK.xcframework"
        )
    ]
)
