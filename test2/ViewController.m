//
//  ViewController.m
//  test2
//
//  Created by Kendrick Kwok on 1/25/18.
//  Copyright © 2018 Kendrick Kwok. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    total = NULL;
    op = 'n';
    _outputLabel.text = @"0";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


- (IBAction)plusButton:(id)sender {
    if(operatorPressed == false)
    {
        operatorPressed = true;
        op = '+';
        _outputLabel.text = @"+";
    }
}

- (IBAction)minusButton:(id)sender {
    if(operatorPressed == false)
    {
        operatorPressed = true;
        op = '-';
        _outputLabel.text = @"-";
    }
}

- (IBAction)multiplyButton:(id)sender {
    if(operatorPressed == false)
    {
        operatorPressed = true;
        op = '*';
        _outputLabel.text = @"*";
    }
}

- (IBAction)divideButton:(id)sender {
    if(operatorPressed == false)
    {
        operatorPressed = true;
        op = '/';
        _outputLabel.text = @"/";
    }
}

- (IBAction)equalButton:(id)sender {
    if(op != 'n' || firstEntry != NULL || secondEntry !=NULL)
    {
        if(op == '*')
        {
            _outputLabel.text = [NSString stringWithFormat:@"%li",[firstEntry integerValue] * [secondEntry integerValue]];
        }
        else if(op == '-')
        {
            _outputLabel.text = [NSString stringWithFormat:@"%li",[firstEntry integerValue] - [secondEntry integerValue]];
        }
        else if(op == '+')
        {
            _outputLabel.text = [NSString stringWithFormat:@"%li",[firstEntry integerValue] + [secondEntry integerValue]];
        }
        else if(op == '/')
        {
            _outputLabel.text = [NSString stringWithFormat:@"%li",[firstEntry integerValue] / [secondEntry integerValue]];
        }
        else
        {
            [self setNull];
        }
    }
}

- (IBAction)resetButton:(id)sender {
    [self setNull];
}


- (IBAction)numberPressed:(UIButton*)sender {
   
    int tag = sender.tag;
    
    if(operatorPressed == FALSE)
    {
        if(firstEntry == NULL)
        {
            firstEntry = [NSString stringWithFormat:@"%i",tag];
            _outputLabel.text = firstEntry;
        }
        else
        {
            firstEntry = [NSString stringWithFormat:@"%@%i",firstEntry, tag];
            _outputLabel.text = firstEntry;
        }
    }
    else
    {
        if(secondEntry == NULL)
        {
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _outputLabel.text = secondEntry;
        }
        else
        {
            secondEntry = [NSString stringWithFormat:@"%@%i",secondEntry, tag];
            _outputLabel.text = secondEntry;
        }
    }
}
- (void) setNull {
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
    op = 'n';
    _outputLabel.text = @"0";
}

@end
