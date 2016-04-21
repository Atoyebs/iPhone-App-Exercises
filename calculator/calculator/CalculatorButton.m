//
//  CalculatorButton.m
//  calculator
//
//  Created by Inioluwa Work Account on 20/04/2016.
//  Copyright © 2016 kairos. All rights reserved.
//

#import "CalculatorButton.h"

@interface CalculatorButton()

@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;

@end

@implementation CalculatorButton


#pragma mark - Instance Methods

-(instancetype)initWithText:(NSString *)buttonText {
    
    self = [super init];
    
    if (self) {
        
        self.viewLabel = [UILabel new];
        self.viewLabel.text = buttonText;
        self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonPressed)];
        [self addGestureRecognizer:self.tapGesture];
    }
    
    return self;
}


#pragma mark - Inherited Methods

- (void)drawRect:(CGRect)rect {

    //     Drawing code
    [self addSubview:self.viewLabel];
    self.layer.cornerRadius = self.frame.size.width/2;
    self.clipsToBounds = YES;
    self.layer.borderWidth = 2.0f;
    self.layer.borderColor = [UIColor blackColor].CGColor;
    
}


-(void)buttonPressed {
    
    [self.delegate view:self didSelectButtonWithTitle:self.viewLabel.text];
    
}



@end
