// bowling_test.m
#import <stdio.h>
#import "bowling.h"
#import <assert.h>

Bowling *myGame;

static void roll_many(int rolls, int pins) {
   for( int x = 0; x < rolls; x ++) {
      [myGame roll: pins];
   }
}

static void test_score_gutter_game() {
//   Bowling *myGame = [[Bowling alloc] init]; // equal to [[Number alloc] init]
//   [myGame init];
   [myGame reset];
   roll_many(20,0);
   assert([myGame get_score] == 0 && "Test Failed: score_gutter_game");
}

static void test_score_all_ones() {
//   Bowling *myGame = [[Bowling alloc] init]; // equal to [[Number alloc] init]
//   [myGame init];
   [myGame reset];
   roll_many(20,1);
   assert([myGame get_score] == 20 && "Test Failed: score_all_ones");
}

int main(void) {
   myGame = [[Bowling alloc] init];
   test_score_gutter_game(); 
   test_score_all_ones();
   return 0;
}
