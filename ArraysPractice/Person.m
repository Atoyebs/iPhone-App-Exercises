//
//  Person.m
//  ArraysPractice
//
//  Created by Inioluwa Work Account on 14/04/2016.
//  Copyright © 2016 Inioluwa Work Account. All rights reserved.
//

#import "Person.h"

@implementation Person


-(instancetype)initWithFirstname:(NSString *)firstname withLastname:(NSString *)lastname withAge:(int)age
{
    self = [super init];
    
    if (self)
    {
        self.firstname = firstname;
        self.lastname = lastname;
        self.age = age;
    }
    
    return self;
}


-(NSComparisonResult)compareAge:(Person *)otherObject
{
    
    NSComparisonResult comparisonResult  = NSOrderedSame;
    
    if (self.age > otherObject.age)
    {
        comparisonResult = NSOrderedAscending;
    }
    else if (self.age < otherObject.age)
    {
        comparisonResult = NSOrderedDescending;
    }
    
    return comparisonResult;
    
}


-(NSString *)description
{
    NSString *description = [NSString stringWithFormat:@"%@ %@ is %d Years Old", self.firstname, self.lastname, self.age];
    
    return description;
}


@end
