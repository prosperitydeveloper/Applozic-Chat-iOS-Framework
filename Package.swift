// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Applozic",
    defaultLocalization: "en",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ApplozicCore",
            targets: ["ApplozicCore"])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ApplozicCore",
            dependencies: [],
            path: "ApplozicCore",
            exclude: ["Info.plist",
                      "MQTT/MQTTClient-Prefix.pch"],
            resources: [
                .copy("push/TSMessagesDefaultDesign.json"),
                .copy("database/AppLozic.xcdatamodeld")
            ],
            cSettings: [
                .headerSearchPath(""),
                .headerSearchPath("account"),
                .headerSearchPath("applozickit"),
                .headerSearchPath("channel"),
                .headerSearchPath("commons"),
                .headerSearchPath("conversation"),
                .headerSearchPath("database"),
                .headerSearchPath("JWT"),
                .headerSearchPath("message"),
                .headerSearchPath("MQTT"),
                .headerSearchPath("networkcommunication"),
                .headerSearchPath("notification"),
                .headerSearchPath("prefrence"),
                .headerSearchPath("push"),
                .headerSearchPath("sync"),
                .headerSearchPath("user"),
                .headerSearchPath("utilities")
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
