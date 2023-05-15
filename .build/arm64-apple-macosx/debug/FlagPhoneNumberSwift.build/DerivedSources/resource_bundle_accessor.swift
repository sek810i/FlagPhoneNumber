import class Foundation.Bundle

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("FlagPhoneNumber_FlagPhoneNumberSwift.bundle").path
        let buildPath = "/Users/bogdan_o/GitHub/FlagPhoneNumber/.build/arm64-apple-macosx/debug/FlagPhoneNumber_FlagPhoneNumberSwift.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}