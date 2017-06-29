import PackageDescription

let package = Package(
    name: "Setup",
    dependencies: [
      .Package(url: "https://github.com/Carthage/Commandant.git", majorVersion: 0)
    ]
)
