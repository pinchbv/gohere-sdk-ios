// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoHereSDK",
    defaultLocalization: "en",
    platforms: [.iOS("14.5")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoHereSDK",
            targets: ["GoHereCoreWrapper"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "git@github.com:kean/Nuke.git",
            from: "10.4.0"
        ),
        .package(
            url: "git@github.com:ivasic/google-maps-ios.git",
            from: "5.0.0"
        ),
        .package(
            url: "git@github.com:MojtabaHs/iPhoneNumberField.git",
            exact: "0.8.0"
        ),
        .package(
            url: "git@github.com:facebook/facebook-ios-sdk",
            from: "12.0.0"
        ),
        .package(
            url: "git@github.com:getsentry/sentry-cocoa",
            from: "7.0.0"
        ),
        .package(
            url: "git@github.com:airbnb/lottie-ios.git",
            from: "3.2.2"
        ),
        .package(
            url: "git@github.com:mixpanel/mixpanel-swift.git",
            from: "3.2.6"
        ),
        .package(
            url: "https://github.com/lucaszischka/BottomSheet",
            from: "2.6.0"
        ),
        .package(
            url: "https://github.com/fermoya/SwiftUIPager.git",
            from: "2.3.2"
        ),
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk",
            from: "10.0.0"
        ),
        .package(
            url: "https://github.com/rundfunk47/stinsen",
            from: "2.0.13"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "GoHereSDK", path: "./Sources/GoHereSDK.xcframework"),
        .binaryTarget(name: "GoHereCore", path: "./Sources/GoHereCore.xcframework"),
        .target(
            name: "GoHereCoreWrapper",
            dependencies: [
                .target(name: "GoHereCore"),
                .target(name: "GoHereSDK"),
                .product(name: "FacebookLogin", package: "facebook-ios-sdk"),
                .product(name: "Sentry", package: "sentry-cocoa"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "Mixpanel", package: "mixpanel-swift"),
                .product(name: "FirebaseDynamicLinks", package: "firebase-ios-sdk"),
                .product(name: "Stinsen", package: "stinsen"),
                .product(name: "GoogleMaps", package: "google-maps-ios"),
                "Nuke",
                "iPhoneNumberField",
                "BottomSheet",
                "SwiftUIPager",
            ]
        ),
    ]
)
