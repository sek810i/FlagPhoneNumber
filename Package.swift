// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber"]),
    ],
    dependencies: [],
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
            name: "FlagPhoneNumber",
            dependencies: ["FlagPhoneNumberObjC"],
            path: "Sources/Swift",
            resources: [.copy("Resources/countryCodes.json"),
                        .copy("Resources/FlagKit.xcassets"),
                        .copy("Resources/FPNCountryView.xib")]
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
