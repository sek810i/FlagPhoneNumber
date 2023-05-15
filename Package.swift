// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumberKit"]),
    ],
    dependencies: [
        //        .package(name: "DataModels", path: "../datamodels"),
        //        .package(name: "Extensions", path: "../extensions"),
        //        .package(url: "https://github.com/marmelroy/Zip.git", .upToNextMinor(from: "2.1.2")),
        //        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMajor(from: "2.0.0")),
        //        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.6.0")),
        //        .package(url: "https://github.com/evgenyneu/keychain-swift.git", from: "20.0.0"),
        //        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", from: "9.0.6")
    ],
    targets: [
        .target(
            name: "FlagPhoneNumberObjC",
            dependencies: [],
            path: "Sources",
            exclude: [
                "ObjC/GeneratePhoneNumberHeader.sh",
                "ObjC/NBPhoneNumberMetadata.plist"],
            sources: ["ObjC"],
            publicHeadersPath: "ObjC",
            cSettings: [.headerSearchPath("FlagPhoneNumber.h")]
        ),
        .target(
            name: "FlagPhoneNumberKit",
            dependencies: ["FlagPhoneNumberObjC"],
            path: "Sources/Swift",
            resources: [.copy("Resources")]
        ),

        
        
        
        //
        //        .target(
        //            name: "FlagPhoneNumberSwift",
        //            dependencies: [
        ////                .product(name: "DataModels", package: "DataModels"),
        ////                .product(name: "Extensions", package: "Extensions"),
        ////                .product(name: "Zip", package: "Zip"),
        ////                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
        ////                .product(name: "SnapKit", package: "SnapKit"),
        ////                .product(name: "KeychainSwift", package: "keychain-swift"),
        ////                .product(name: "SwiftMessages", package: "SwiftMessages"),
        //            ],
        //            path: "Sources/Swift",
        //            resources: [.copy("Resources")]
        //        ),
        //        .target(name: "FlagPhoneNumberOBJC",
        //                dependencies: [],
        //                path: "Sources/OBJC",
        //                publicHeadersPath: "include",
        //                cSettings: [.headerSearchPath(".")]
        //               )
        
    ]
)
