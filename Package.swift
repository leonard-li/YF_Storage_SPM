// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Storage",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Storage",
            targets: ["YF_Storage_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Auth_SPM.git", 
            from: "2.6.2"
        )
    ],
    targets: [
        .target(
            name: "YF_Storage_Target",
            dependencies: [
                "YF_Storage_Binary"
                .product(name: "YF_Auth", package: "YF_Auth_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Storage_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/storage/2.3.2/YFStorage.xcframework.zip",
            checksum: "b4cdce37c7003983f98e53483ac169897bdfdaae158ad5113394631e85a74142"
        )
    ]
)