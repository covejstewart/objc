//bowling.h
#import <objc/Object.h>
#import <stdio.h>

@interface Bowling: Object
{
@private
   int score;
}
- (void)reset;
- (void)roll: (int) n;
- (int)get_score; 
@end
