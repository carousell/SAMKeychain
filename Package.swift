// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SAMKeychain",
    defaultLocalization: "en",
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
            resources: [
                .process("../Support/en.lproj/SAMKeychain.strings")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."), // For locating internal headers, adjust as needed
            ]
        )
    ]
)
