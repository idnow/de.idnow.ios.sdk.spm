//
//  IDNowSDKCore.h
//  IDNowSDKCore
//
//  Created by Mac Magnetics on 07.05.18.
//  Copyright © 2018 IDNow GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for IDNowSDKCore.
FOUNDATION_EXPORT double IDNowSDKCoreVersionNumber;

//! Project version string for IDNowSDKCore.
FOUNDATION_EXPORT const unsigned char IDNowSDKCoreVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <IDNowSDKCore/PublicHeader.h>

// Not to declare public but to make it visible for own usage
// https://stackoverflow.com/questions/24875745/xcode-6-beta-4-using-bridging-headers-with-framework-targets-is-unsupported
#import "IDNowTracker.h"
#import "Insights.h"

