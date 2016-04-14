//
//  main.m
//  ArraysPractice
//
//  Created by Inioluwa Work Account on 14/04/2016.
//  Copyright © 2016 Inioluwa Work Account. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArraySorter.h"
#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        
        Person *me = [[Person alloc] initWithFirstname:@"Inioluwa" withLastname:@"Atoyebi" withAge:26];
        Person *ife = [[Person alloc] initWithFirstname:@"Ifeoluwa" withLastname:@"Oduyale" withAge:25];
        Person *adaeze = [[Person alloc] initWithFirstname:@"Adaeze" withLastname:@"Okike" withAge:31];
        Person *afope = [[Person alloc] initWithFirstname:@"Afopefoluwa" withLastname:@"Atoyebi" withAge:22];
        Person *tolu = [[Person alloc] initWithFirstname:@"Tolu" withLastname:@"Oduyale" withAge:27];
        Person *seun = [[Person alloc] initWithFirstname:@"Seun" withLastname:@"Oduyale" withAge:23];
        Person *tireni = [[Person alloc] initWithFirstname:@"Tireni" withLastname:@"Atoyebi" withAge:20];
        Person *toyosi = [[Person alloc] initWithFirstname:@"Toyosi" withLastname:@"Adeyemi" withAge:21];
        
        
        
        
        
        
        /*
        
        NSMutableArray *arrayOfPeople = [@[toyosi, me, ife, adaeze, afope, tolu, seun, tireni] mutableCopy];
        
        NSLog(@"Original arrayOfPeople array = %@\n\n", arrayOfPeople);
        
        
        [arrayOfPeople sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            
            Person *person1 = (Person*)obj1;
            Person *otherPerson = (Person*)obj2;
            
            NSComparisonResult result = [person1.lastname compare:otherPerson.lastname];
            
            return result;
            
        }];
        
        NSLog(@"Sorted by Lastname arrayOfPeople = %@\n\n", arrayOfPeople);
         
        */
        
        
        
        
    }
    return 0;
}
