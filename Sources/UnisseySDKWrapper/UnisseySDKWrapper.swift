
import UIKit
import SwiftUI
import UnisseySdk

/// Swift Package Manager needs at least one source file
public class IDnowSDKWrapper {
    public static func handlePackage() {
        let sdkWrapper = UnisseyView(
            unisseyViewModel: UnisseyViewModel(
                acquisitionPreset: .selfieFast
            )
        )
    }
}

