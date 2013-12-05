//
//  FATTable.h
//  FileAllocationTable
//
//  Created by Omar Gudino on 12/4/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FATTable : NSObject {
    NSMutableArray *table;
}

- initWithZeros;
+ tableArrayWithSections;
- (void)setObject:(NSString *) string inSection:(NSInteger)s row:(NSInteger)r;
- (BOOL)ocupied:(NSInteger) row;

@end