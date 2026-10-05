// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IDNowSDKCore",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "IDNowSDKCore-with-NFC",
            targets: [
                "IDNowSDKCore-with-NFC", "FaceTecSDK", "UnisseySDKWrapper"
            ]
        ),
        .library(
            name: "IDNowSDKCore-without-NFC",
            targets: [
                "IDNowSDKCore-without-NFC", "FaceTecSDK", "UnisseySDKWrapper"
            ]
        ),
        .library(
            name: "IDNowSDKCore-with-NFC-without-XS2A",
            targets: [
                "IDNowSDKCore-with-NFC-without-XS2A", "FaceTecSDK", "UnisseySDKWrapper"
            ]
        ),
        .library(
            name: "IDNowSDKCore-without-NFC-without-XS2A",
            targets: [
                "IDNowSDKCore-without-NFC-without-XS2A", "FaceTecSDK", "UnisseySDKWrapper"
            ]
        ),

        // MARK: - FaceTec-external product
        .library(
            name: "IDNowSDKCore-with-NFC-FacetecExternal",
            targets: [
                "IDNowSDKCore-with-NFC-FacetecExternal", "UnisseySDKWrapper"
            ]
        ),

        // Standalone FaceTec v9, for customers who want to supply our copy
        // alongside the FacetecExternal product instead of their own.
        .library(
            name: "FaceTecSDK",
            targets: ["FaceTecSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/unissey/sdk-ios.git", "5.0.0" ..< "5.0.1")
    ],
    targets: [
        // MARK: - Binary SDKs
        .binaryTarget(
            name: "IDNowSDKCore-with-NFC",
            path: "Frameworks/IDNowSDKCore-with-NFC.xcframework"
        ),
        .binaryTarget(
            name: "IDNowSDKCore-without-NFC",
            path: "Frameworks/IDNowSDKCore-without-NFC.xcframework"
        ),
        .binaryTarget(
            name: "IDNowSDKCore-with-NFC-without-XS2A",
            path: "Frameworks/IDNowSDKCore-with-NFC-without-XS2A.xcframework"
        ),
        .binaryTarget(
            name: "IDNowSDKCore-without-NFC-without-XS2A",
            path: "Frameworks/IDNowSDKCore-without-NFC-without-XS2A.xcframework"
        ),
        .binaryTarget(
            name: "FaceTecSDK",
            path: "Frameworks/FaceTecSDK.xcframework"
        ),

        // MARK: - FaceTec-external binary SDK (FaceTec weak-linked)
        .binaryTarget(
            name: "IDNowSDKCore-with-NFC-FacetecExternal",
            path: "Frameworks/IDNowSDKCore-with-NFC-FacetecExternal.xcframework"
        ),
        .target(
            name: "UnisseySDKWrapper",
            dependencies: [
                .product(name: "UnisseySdk", package: "sdk-ios")
            ],
            path: "Sources/UnisseySDKWrapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)

