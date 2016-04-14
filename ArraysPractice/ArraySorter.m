//
//  ArraySorter.m
//  ArraysPractice
//
//  Created by Inioluwa Work Account on 14/04/2016.
//  Copyright © 2016 Inioluwa Work Account. All rights reserved.
//

#import "ArraySorter.h"

@implementation ArraySorter


+(NSArray *)sortArrayAscending:(NSArray *)passedArray
{
    
    NSMutableArray *arrayToReturn = [passedArray mutableCopy];
    
    SEL caseInsensitiveCompare = @selector(localizedCaseInsensitiveCompare:);
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:caseInsensitiveCompare];
    
    [arrayToReturn sortUsingDescriptors:@[sortDescriptor]];
    
    return arrayToReturn;
}


+(NSArray *)sortedArrayDescending:(NSArray *)passedArray
{
    
    NSMutableArray *arrayToReturn = [passedArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [arrayToReturn sortUsingDescriptors:@[sortDescriptor]];
    
    return arrayToReturn;

}



@end
