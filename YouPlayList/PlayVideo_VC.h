//
//  PlayVideo_VC.h
//  YouPlayList
//
//  Created by Stronger Shen on 13/3/20.
//  Copyright (c) 2013年 MobileIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayVideo_VC : UIViewController
{
    UIWebView *videoView;
}

@property (strong, nonatomic) NSString *href;

@end
