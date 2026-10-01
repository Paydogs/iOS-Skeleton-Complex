
// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        productTypes: [
            // "Alamofire": .framework,
            "Logging": .framework,
            "FactoryKit": .framework,
        ],
        baseSettings: .settings(configurations: [
            .debug(name: "Debug"),
            .release(name: "Release")
        ])
    )

#endif

let package = Package(
    name: "Dependencies",
    dependencies: [
        // .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        .package(url: "https://github.com/Apple/swift-log", from: "1.8.0"),
        .package(url: "https://github.com/hmlongco/Factory", from: "3.3.2"),
    ],
    targets: [
    ]
)
