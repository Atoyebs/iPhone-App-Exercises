//
//  ViewController.m
//  calculator
//
//  Created by Inioluwa Work Account on 20/04/2016.
//  Copyright © 2016 kairos. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorButton.h"

@interface CalculatorViewController () <CalculatorButtonDelegate>

@property (nonatomic, strong) NSArray <NSString *> *buttonTitles;
@property (nonatomic, strong) UIView *mainView;

@end

@implementation CalculatorViewController


#pragma mark - Inherited Methods

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(buttonPressed:)];
    
}


-(void)loadView {
    
    [super loadView];
    
    self.buttonTitles = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"0", @"A/C", @"-", @"X", @"+", @"="];
    
    self.mainView = [UIView new];
    
    self.view = self.mainView;
    
}


-(void)viewWillLayoutSubviews {

    [super viewWillLayoutSubviews];
    
    CGFloat buttonWidth = 38.0;
    CGFloat buttonHeight = 38.0;
    
    CGRect screenDimensions = [[UIScreen mainScreen] bounds];
    
    CGFloat screenWidth = screenDimensions.size.width;
    
    CGFloat screenHeight = screenDimensions.size.height;
    
    //make the buttons start getting layed out from a quater of the way up the screen
    CGFloat highestPointOfButtons = screenHeight/3;
    
    const CGFloat xPadding = screenWidth/6;
    
    //track the x axis position of the button being positioned in the for loop
    CGFloat currentXPositionOfButton = 0;
    CGFloat currentYPositionOfButton = highestPointOfButtons;
    
    const CGFloat xSpaceBetweenButtons = screenWidth/4;
    const CGFloat ySpaceBetweenButtons = screenHeight/8;
    
    for (NSString *currentButtonTitle in self.buttonTitles) {
        
        int currentIndex = (int)[self.buttonTitles indexOfObject:currentButtonTitle];
        
        CalculatorButton *currentButton = [[CalculatorButton alloc] initWithText:currentButtonTitle];
        [self.view addSubview:currentButton];
        
        currentButton.delegate = self;
        
        if ((currentIndex % 3) == 0) {
            currentXPositionOfButton = xPadding;
            currentYPositionOfButton = (currentIndex <= 2) ? highestPointOfButtons : currentYPositionOfButton + ySpaceBetweenButtons + 5;
        }
            
            currentButton.frame = CGRectMake(currentXPositionOfButton, currentYPositionOfButton, buttonWidth, buttonHeight);
            currentXPositionOfButton += (xSpaceBetweenButtons + 5);
        
        currentButton.backgroundColor = [UIColor colorWithRed:222/255.0 green:165/255.0 blue:164/255.0 alpha:0.8];
        currentButton.viewLabel.frame = CGRectMake(13, 9, 20, 20);
        [currentButton setUserInteractionEnabled:YES];
        
    }
    
    
}


#pragma mark - CalculatorButtonDelegate Methods

-(void)view:(CalculatorButton *)button didSelectButtonWithTitle:(NSString *)title {
    
    //if a number is pressed
    if ([[NSScanner scannerWithString:title] scanInt:nil] ) {
        [self numberSelectedFromCalculator:title];
    }
    else {
        [self functionSelectedFromCalculator:title];
    }
    
}


#pragma mark - Touch Method Implementations


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Miscellaneous

-(void)numberSelectedFromCalculator:(NSString*)selectedNumber {
    
    //implement what happens when number is pressed
    
}


-(void)functionSelectedFromCalculator:(NSString*)selectedFunction {
    
    //implement what happens when every other button is pressed
    
}
@end
