//bowling.h
#import <objc/Object.h>
#import <stdio.h>

#define MAX_ROLLS 21

@interface Bowling: Object
{
@private
   int pins[MAX_ROLLS];
   int roll_count;
   
}
- (void)reset;
- (void)roll: (int) n;
- (int)get_score; 
@end
