//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)solveTrivia{
    
    NSDictionary *theList = @{@"Alabama"     : @"Montgomery",
                                         @"Montana"     : @"Helena",
                                         @"Alaska"      : @"Juneau",
                                         @"Nebraska"    : @"Lincoln",
                                         @"Arizona"     : @"Phoenix",
                                         @"Nevada"      : @"Carson City",
                                         @"Arkansas"    : @"Little Rock",
                                         @"New Hampshire"    : @"Concord",
                                         @"California"  : @"Sacramento",
                                         @"New Jersey"  : @"Trenton",
                                         @"Colorado"    :    @"Denver",
                                         @"New Mexico"    : @"Santa Fe",
                                         @"Connecticut"    : @"Hartford",
                                         @"New York"    : @"Albany",
                                         @"Delaware"    : @"Dover",
                                         @"North Carolina"    : @"Raleigh",
                                         @"Florida"     : @"Tallahassee",
                                         @"North Dakota": @"Bismarck",
                                         @"Georgia"     : @"Atlanta",
                                         @"Ohio"        : @"Columbus",
                                         @"Hawaii"      : @"Honolulu",
                                         @"Oklahoma"    : @"Oklahoma City",
                                         @"Idaho"       : @"Boise",
                                         @"Oregon"      : @"Salem",
                                         @"Illinois"    : @"Springfield",
                                         @"Pennsylvania": @"Harrisburg",
                                         @"Indiana"     : @"Indianapolis",
                                         @"Rhode Island": @"Providence",
                                         @"Iowa"        : @"Des Moines",
                                         @"South Carolina" : @"Columbia",
                                         @"Kansas"      : @"Topeka",
                                         @"South Dakota": @"Pierre",
                                         @"Kentucky"    : @"Frankfort",
                                         @"Tennessee"   : @"Nashville",
                                         @"Louisiana"    : @"Baton Rouge",
                                         @"Texas"       : @"Austin",
                                         @"Maine"       : @"Augusta",
                                         @"Utah"        : @"Salt Lake City",
                                         @"Maryland"    : @"Annapolis",
                                         @"Vermont"     : @"Montpelier",
                                         @"Massachusetts"    : @"Boston",
                                         @"Virginia"    : @"Richmond",
                                         @"Michigan"    : @"Lansing",
                                         @"Washington"    : @"Olympia",
                                         @"Minnesota"    : @"St. Paul",
                                         @"West Virginia"    : @"Charleston",
                                         @"Mississippi"    : @"Jackson",
                                         @"Wisconsin"    : @"Madison",
                                         @"Missouri"    : @"Jefferson City",
                                         @"Wyoming"     : @"Cheyenne" };
    NSMutableArray *keys = [[NSMutableArray alloc]init];
    keys = [[theList allKeys]mutableCopy]; //array of keys
    

    NSMutableArray *values = [[NSMutableArray alloc]init];
    values = [[theList allValues]mutableCopy]; //array of values

    NSMutableArray *currentKeyArray = [[NSMutableArray alloc]init];
    //array for key letters
    
   NSMutableArray *currentValueArray = [[NSMutableArray alloc]init];
    //array for value letters
    
    
    for (NSUInteger i = 0; i <[keys count]; i++){
        
        NSString *currentKeyString = keys[i]; //string for a key
        NSString *currentValueString = values[i]; //string for a value
        
        
        
        
        
        for (NSUInteger j = 0; j < [currentKeyString length]; j++) {
            NSString *keyCharacter = [currentKeyString substringWithRange:NSMakeRange(j, 1)];
            [currentKeyArray addObject:keyCharacter.lowercaseString];
        }//did key characters array

        
        for (NSUInteger k = 0; k < [currentValueString length]; k++){
            NSString *valueCharacter = [currentValueString substringWithRange:NSMakeRange(k, 1)];
            [currentValueArray addObject:valueCharacter.lowercaseString];
        }//did value characters array

        [currentKeyArray removeObject:@" "];
        [currentValueArray removeObject:@" "];
        
        // BEGINNING OF COMPARISON
        BOOL matchFound = NO;
        for (NSUInteger f = 0; f < [currentKeyArray count]; f++){
            
            // Letter from key array to compare
            NSString *letterToCompare = currentKeyArray[f];
            
            
            if ([currentValueArray containsObject:letterToCompare]){
               
                matchFound = YES;
                continue;

            }
//            return currentKeyString;
        }
        // END OF COMPARISON
        
        if (matchFound == NO){
            return currentKeyString;
        }
        else
        [currentKeyArray removeAllObjects];
        [currentValueArray removeAllObjects];
    }
    return @"";
}
/*

Write your method here

*/

@end
