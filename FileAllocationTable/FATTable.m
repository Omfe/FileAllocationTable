//
//  FATTable.m
//  FileAllocationTable
//
//  Created by Omar Gudino on 12/4/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "FATTable.h"

@implementation FATTable

- (id)initWithZeros
{
    if ((self = [self init])) {
        table = [[NSMutableArray alloc] initWithCapacity:10];
        for (int i=0; i<10; i++) {
            NSMutableArray *a = [NSMutableArray arrayWithCapacity:100];
            for (int j = 0; j < 100; j++) {
                [a setObject:@"0" atIndexedSubscript:j];
                //printf("0 ");
            }
            [table addObject:a];
            //printf("\n");
        }
    }
    return self;
}

+ (id)tableArrayWithSections
{
    return [[self alloc] initWithZeros];
}

- (void)setObject:(NSString *)string inSection:(NSInteger)s row:(NSInteger)r
{
    [[table objectAtIndex:s]replaceObjectAtIndex:r withObject:string];
}

- (BOOL)ocupied:(NSInteger)row
{
    NSString *ocupied = [[table objectAtIndex:row] objectAtIndex:0];
    
    if ([ocupied  isEqual: @"1"]) {
        return true;
    } else {
        return false;
    }
}

@end
