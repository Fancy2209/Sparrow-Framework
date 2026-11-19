//
//  SPDebug.m
//  Sparrow
//
//  Created by Robert Carone on 8/13/15.
//  Copyright 2011-2015 Gamua. All rights reserved.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the Simplified BSD License.
//

#import "Sparrow/SparrowClass.h"
#import "Sparrow/SPContext.h"
#import "Sparrow/SPDebug.h"
#import "Sparrow/SPFragmentFilter.h"
#import "Sparrow/SPMatrix.h"
#import "Sparrow/SPRectangle.h"
#import "Sparrow/SPRenderSupport.h"
#import "Sparrow/SPRenderTexture.h"
#import "Sparrow/SPStage.h"
#import "Sparrow/SPViewController.h"

@implementation SPDisplayObject (Debug)

- (UIImage *)debugQuickLookObject
{
    __block UIImage *image = nil;
    
    [Sparrow.currentController executeInResourceQueueAsynchronously:NO block:
     ^{
         SPContext *context = [SPContext currentContext];
         SPRenderTexture *texture = [[[SPRenderTexture alloc] initWithWidth:self.width height:self.height] autorelease];
         [texture drawObject:self withMatrix:[SPMatrix matrixWithIdentity]];
         
         [context setRenderToTexture:texture.root];
         image = [context drawToImage];
         [context setRenderToBackBuffer];
     }];
    
    return image;
}

@end

@implementation SPTexture (Debug)

- (UIImage *)debugQuickLookObject
{
    __block UIImage *image = nil;
    
    [Sparrow.currentController executeInResourceQueueAsynchronously:NO block:
     ^{
         SPContext *context = [SPContext currentContext];
         [context setRenderToTexture:self.root];
         image = [context drawToImage];
         [context setRenderToBackBuffer];
     }];
    
    return image;
}

@end

@implementation SPSubTexture (Debug)

- (UIImage *)debugQuickLookObject
{
    __block UIImage *image = nil;
    
    [Sparrow.currentController executeInResourceQueueAsynchronously:NO block:
     ^{
        SPContext *context = [SPContext currentContext];
        [context setRenderToTexture:self.root];
        image = [context drawToImageInRegion:self.region];
        [context setRenderToBackBuffer];
     }];
    
    return image;
}

@end
