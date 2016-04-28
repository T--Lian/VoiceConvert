//
//  VoiceConverter.m
//  Jeans
//
//  Created by Jeans Huang on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VoiceConverter.h"
#import "amrFileCodec.h"


@implementation VoiceConverter

//转换amr到wav
+ (BOOL)convertAmr:(NSString *)amrPath ToWav:(NSString *)wavPath {
    
    if (!DecodeAMRFileToWAVEFile([amrPath cStringUsingEncoding:NSASCIIStringEncoding], [wavPath cStringUsingEncoding:NSASCIIStringEncoding]))
        return NO;
    
    return YES;
}

//转换wav到amr
+ (BOOL)convertWav:(NSString *)wavPath ToAmr:(NSString *)amrPath {
    
    if (!EncodeWAVEFileToAMRFile([wavPath cStringUsingEncoding:NSASCIIStringEncoding], [amrPath cStringUsingEncoding:NSASCIIStringEncoding], 1, 16))
        return NO;
    
    return YES;
}

+ (void)SetSkipFrameConvert:(int)skipframe{
    SetSkipFrame(skipframe);
}
  
@end
