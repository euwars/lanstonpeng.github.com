//
//  PoemDetailView.h
//  Poem
//
//  Created by Lanston Peng on 6/1/14.
//  Copyright (c) 2014 Vtm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PoemDetailView : UIView

@property (strong,nonatomic)CALayer* bgMaskLayer;
@property (strong,nonatomic) NSString* currentTranslatedLanguage;

- (id)initWithFrame:(CGRect)frame  withData:(NSDictionary*)poem;
- (void)setPoemData:(NSDictionary*)poemData;
- (void)showToolBarView;
@end