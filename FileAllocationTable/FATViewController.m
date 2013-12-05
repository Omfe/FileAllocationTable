//
//  FATViewController.m
//  FileAllocationTable
//
//  Created by Omar Gudino on 12/4/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FATViewController.h"
#import "FATTable.h"

@interface FATViewController ()

@property (weak, nonatomic) IBOutlet UITextField *memoryTextField;
@property (strong, nonatomic) FATTable *table;

@end

@implementation FATViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.table = [FATTable tableArrayWithSections];
    
}

- (IBAction)pushedButton:(id)sender {
    
    NSInteger number = [self.memoryTextField.text integerValue];
    NSString *memory = @"1";
    BOOL ocupied = false;
    NSInteger row;
    NSInteger limit;
    
    
    while (number > 0) {
    
        for (row = 0; row<10; row++) {
            ocupied = [self.table ocupied:row];
        
            if (!ocupied) {
            break;
            }
        }
    
        for (limit = 0; limit<=99 && limit<number; limit++) {
            [self.table setObject:memory inSection:row row:limit];
        }
        number = number - 100;
    }
}
@end
