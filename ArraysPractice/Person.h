//
//  Person.h
//  ArraysPractice
//
//  Created by Inioluwa Work Account on 14/04/2016.
//  Copyright © 2016 Inioluwa Work Account. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, assign) int age;


-(NSComparisonResult)compareAge:(Person *)otherObject;

-(instancetype)initWithFirstname:(NSString*)firstname withLastname:(NSString*)lastname withAge:(int)age;

@end
