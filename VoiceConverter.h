//
//  VoiceConverter.h
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface VoiceConverter : NSObject

+ (BOOL)convertWav:(NSString *)wavPath ToAmr:(NSString *)amrPath;
+ (BOOL)convertAmr:(NSString *)amrPath ToWav:(NSString *)wavPath;
+ (void)SetSkipFrameConvert:(int)skipframe;

@end
