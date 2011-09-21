// bowling_test.m
#import <stdio.h>
#import "bowling.h"
#import <assert.h>

Bowling *myGame;

static void roll_once(int pins) {
   [myGame roll: pins];   
}

static void roll_many(int rolls, int pins) {
   for( int x = 0; x < rolls; x ++) {
      roll_once(pins);
   }
}

static void test_score_gutter_game() {
   [myGame reset];
   roll_many(20,0);
   assert([myGame get_score] == 0 && "Test Failed: score_gutter_game");
}

static void test_score_all_ones() {
   [myGame reset];
   roll_many(20,1);
   assert([myGame get_score] == 20 && "Test Failed: score_all_ones");
}

static void test_score_single_spare() {
   [myGame reset];
   roll_once(8);
   roll_once(2);
   roll_once(5);
   roll_many(17,0);
   assert([myGame get_score] == 20 && "Test Failed: score_single_spare");
}

static void test_score_single_strike() {
   [myGame reset];
   roll_once(10);
   roll_once(2);
   roll_once(5);
   roll_many(16,0);
   assert([myGame get_score] == 24 && "Test Failed: score_single_strike");
}

static void test_score_perfect_game() {
   [myGame reset];
   roll_many(12,10);
   assert([myGame get_score] == 300 && "Test Failed: score_perfect_game");
}

int main(void) {
   myGame = [[Bowling alloc] init];
   test_score_gutter_game(); 
   test_score_all_ones();
   test_score_single_spare();
   test_score_single_strike();
   test_score_perfect_game();
   return 0;
}
