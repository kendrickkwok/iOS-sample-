//
//  ViewController.h
//  test2
//
//  Created by Kendrick Kwok on 1/25/18.
//  Copyright © 2018 Kendrick Kwok. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    NSString* firstEntry;
    NSString* secondEntry;
    NSString* total;
    char op;
}

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UILabel *calculatorLabel;
- (IBAction)plusButton:(id)sender;
- (IBAction)minusButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)equalButton:(id)sender;
- (IBAction)resetButton:(id)sender;
- (IBAction)numberPressed:(UIButton*)sender;
- (void)setNull;
@end

