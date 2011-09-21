//bowling.m

#import "bowling.h"
#import <stdio.h>

@implementation Bowling
- (void)reset {
   score = 0;
}

- (void)roll: (int) n { 
   score += n;
}

- (int)get_score {
   return(score);
}
@end
