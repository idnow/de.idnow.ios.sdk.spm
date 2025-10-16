//
//  UnisseySDKWrapper.swift
//
//  Created by Seyit Kaya on 16.10.25.
//

import UIKit
import SwiftUI
import UnisseySdk

/// Swift Package Manager needs at least one source file
public class UnisseySDKWrapper {
    public static func handlePackage() {
        let sdkWrapper = UnisseyView(
            unisseyViewModel: UnisseyViewModel(
                acquisitionPreset: .selfieFast
            )
        )
    }
}

