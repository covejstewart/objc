//bowling.m

#import "bowling.h"
#import <stdio.h>
#import <stdbool.h>


@implementation Bowling
- (bool)is_strike:(int)index { return 0;}

- (void)reset {
   roll_count = 0;
   for( int x=0; x<MAX_ROLLS; x++) {
      pins[x] = 0;
   }
}

- (void)roll: (int) n { 
   pins[roll_count] = n;
   roll_count++;
}

- (int)get_score {
   int score = 0;
   int idx = 0;
   for( int frame=1;frame<=10;frame++) {
      if(pins[idx] == 10) { //is a strike
         score += pins[idx+1] + pins[idx+2] + 10;
         idx += 1;
      }
      else if(pins[idx] + pins[idx+1] == 10) { //is a spare
         score += pins[idx+2] + 10;
         idx += 2;
      }
      else {
         score += pins[idx] + pins[idx+1];
         idx += 2;
      }
   }
   return(score);
}

@end
