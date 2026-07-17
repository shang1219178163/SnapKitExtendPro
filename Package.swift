// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SnapKitExtendPro",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "SnapKitExtendPro",
            targets: ["SnapKitExtendPro"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", "5.0.1"..<"6.0.0")
    ],
    targets: [
        .target(
            name: "SnapKitExtendPro",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ],
            path: "SnapKitExtendPro/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
