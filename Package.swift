// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SAMKeychain",
            targets: ["SAMKeychain"]
        )
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            path: "Sources",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."), // For locating internal headers, adjust as needed
            ]
        )
    ]
)
