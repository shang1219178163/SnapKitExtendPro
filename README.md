# SnapKitExtendPro

[![CI Status](https://img.shields.io/travis/shang1219178163/SnapKitExtendPro.svg?style=flat)](https://travis-ci.org/shang1219178163/SnapKitExtendPro)
[![Version](https://img.shields.io/cocoapods/v/SnapKitExtendPro.svg?style=flat)](https://cocoapods.org/pods/SnapKitExtendPro)
[![License](https://img.shields.io/cocoapods/l/SnapKitExtendPro.svg?style=flat)](https://cocoapods.org/pods/SnapKitExtendPro)
[![Platform](https://img.shields.io/cocoapods/p/SnapKitExtendPro.svg?style=flat)](https://cocoapods.org/pods/SnapKitExtendPro)
[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

## Screenshots

![效果](https://github.com/shang1219178163/SnapKitExtendPro/blob/master/Example/Screenshots/screenShot.png?raw=true)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 10.0+ / tvOS 10.0+ / macOS 10.12+
- Swift 5.0+
- [SnapKit](https://github.com/SnapKit/SnapKit) 5.x

## Installation

本库同时支持 **CocoaPods** 与 **Swift Package Manager**。

### CocoaPods

在 `Podfile` 中添加：

```ruby
pod 'SnapKitExtendPro'
```

然后执行：

```bash
pod install
```

### Swift Package Manager

#### Xcode

1. File → Add Packages…
2. 输入仓库地址：`https://github.com/shang1219178163/SnapKitExtendPro.git`
3. 选择版本规则（建议 Up to Next Major）后添加 `SnapKitExtendPro`

#### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/shang1219178163/SnapKitExtendPro.git", from: "1.0.4")
]
```

并在对应 target 中声明依赖：

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "SnapKitExtendPro", package: "SnapKitExtendPro")
    ]
)
```

## Author

shang1219178163, shang1219178163@gmail.com

## License

SnapKitExtendPro is available under the MIT license. See the LICENSE file for more info.
