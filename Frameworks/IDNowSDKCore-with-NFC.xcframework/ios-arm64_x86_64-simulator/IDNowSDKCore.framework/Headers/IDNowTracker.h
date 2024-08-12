//
//  IDNowTracker.h
//  tracker
//
//  Created by Mac Magnetics on 19.06.18.
//  Copyright © 2018 IDNow GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface IDNowTrackerMatrix3f : NSObject
- (id)initWithData:(float[9])data;
- (float) getAtRow: (int) i column:( int) j;
- (void) setAtRow: (int) i column: (int) j value:( float) val;
- (void) dump;
@end

@interface IDNowTrackerResult : NSObject
- (id)initWithData:(float[9])homography inverse:(float[9])inverse width:(int)width height:(int)height lastMode:(NSString*)mode;
- (bool) isSuccessful;
- (int) targetWidth;
- (int) targetHeight;
- (IDNowTrackerMatrix3f*) homography;
@end

typedef struct {
    int   keypointCount;
} TrackerProfilingInfo;

@interface IDNowTracker : NSObject
- (bool) newTracker:(NSData*)data width:(int)width height:(int)height corners:(NSArray*)corners targetWidth:(int)targetWidth targetHeight:(int)targetHeight;
- (bool) newTrackerWithImage:(UIImage*)image width:(int)width height:(int)height corners:(NSArray*)corners  targetWidth:(int)targetWidth targetHeight:(int)targetHeight;
- (void) deleteTracker;
- (IDNowTrackerResult*) trackWithImage:(UIImage*)image  width:(int)width height:(int)height;
- (IDNowTrackerResult*) track:(NSData*)data  width:(int)width height:(int)height;
- (int)getTargetHeight;
- (int)getTargetWidth;
- (TrackerProfilingInfo) getProfilingInfo;
@end
