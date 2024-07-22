// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.11.7"

let package = Package(
    name: "AdPlayerSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdPlayerSDK",
            targets: ["AdPlayerTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", from: "3.1.0"),
    ],
    targets: [
        .target(
            name: "AdPlayerTarget",
            dependencies: [
                .target(name: "AdPlayerSDK"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "PlaceHolder"
        ),
        .binaryTarget(
            name: "AdPlayerSDK",
            url:
                "https://github.com/Aniview/ad-player-sdk-ios-pods/releases/download/\(artifactVersion)/AdPlayerSDK.zip",
            checksum: "f626340e7627e7ec92868595188c824622336c0e8a14914e46a15ec23a9a7d54"
        )
    ]
)
