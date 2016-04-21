//
//  CalculatorButton.h
//  calculator
//
//  Created by Inioluwa Work Account on 20/04/2016.
//  Copyright © 2016 kairos. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorButton;

@protocol CalculatorButtonDelegate <NSObject>

@required

-(void)view:(CalculatorButton*)button didSelectButtonWithTitle:(NSString*)title;

@end


@interface CalculatorButton : UIView

@property (nonatomic, strong) UILabel *viewLabel;

@property (nonatomic, strong) id <CalculatorButtonDelegate> delegate;

-(instancetype)initWithText:(NSString*)buttonText;



@end
