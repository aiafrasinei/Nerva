# Nerva

by Afrasinei Alexandru Iulian

## Introduction

Nerva is a board game that utilizes a standard chess board and 192 pawns + 2 kings.

Two opposing forces (White and Black) face each other in battle on the game board.

It is a turn-based wargame in the spirit of chess with different rules.

The goal is to capture the enemy king.

## The elements of Nerva

* one chess board (8x8)

* White

   * Piece shapes
     
       Pawns (Boxes), King (Cylinder)

        ![White Pieces](imgs/WhitePieces.png)
    
    * 96 White pawns
        * 32 large pawns
        * 32 medium pawns
        * 32 small pawns

    * the White king

* Black

    * Piece shapes

        Pawns (Boxes), King (Cylinder)

        ![Black Pieces](imgs/BlackPieces.png)

    * 96 Black pawns
        * 32 large pawns
        * 32 medium pawns
        * 32 small pawns

    * the Black king

## The board

A standard chess board (8x8).

![Empty board](imgs/EmptyBoard.png)

### The battle environment

A maximum of 3 pawns can be placed on top of each other anywhere on the board.

Think of the board as 3 stacked boards on top of each other.

### Game notation

Chess notation is used to identify board locations.

This is extended for Nerva by using the following syntax to identify the stacked boards:

[row][column]_[board] - A pawn is placed on the board.

* [row]
  
  From a to h

* [column]

    From 1 to 8

* [board]

    From 1 to 3

    Board 1 is the normal chess board

    This is how we identify the pieces on the 3 stacked boards

[row][column]_[board] -> [row][column]_[board] - Attack notation

[K]_[row][column]_[board] - King reveal.

[-K]_[row][column]_[board] - King is captured, game over.

Examples:

![Early game notation](imgs/NervaBoard400PawnsEarlyGame.png)

* Notation:

 1. h7_1 2. g2_1 3. e4_2 4. e5_2 5. a7_3 6. b6_3

## The pieces

### The pawns

On a board tile, stack the pieces in this order: Large pawn, Medium pawn, Small pawn.

Thinking in terms of stacked boards:

Board 1 uses the large pawns, board 2 uses the medium pawns, and board 3 uses the small pawns.

Examples:

![Pawns not stacked](imgs/NervaBoard400Pawns.png)

* Notation:

1. d2_2 2. c3_2 3. h7_1 4. g2_1 5. b5_3 6.c6_3

![Stacked Pawns](imgs/NervaBoard400PawnsStacked.png)

* Notation:

1. b8_1 2. f4_1 3. b8_2 4. f4_2 5. b8_3 6. f4_3 7. f6_2 8. f6_3 9. e7_3 10. e7_2 11. e7_1 12. d4_1 13. d4_2 14. d4_3

#### White

96 pawns and the white king.

#### Black

96 pawns and the black king.

#### Properties

Each pawn has 1 attack point and 1 defense point.

If a pawn is at c3, the adjacent tiles are:

b2 c2 d2 d3 d4 b4 c4 b3

The attack will happen on these adjacent tiles on the same board.

![PawnAttacks](imgs/NervaPawnAttack.png)

More details in the rules of linking, defending, attacking, stacking sections. 

### The king

The king has no attack/defense points.

## The rules of placement

### Setup

The game starts with an empty board.

Each player gets their 96 pawns and their king.

The White player places the first pawn on the board. 

The pawns can be placed on any empty tile.

A maximum of 3 pawns can be stacked on a tile.

### King location

The king's location is hidden from the enemy player.

Each player decides at the beginning where their king will be located and keeps the information to themselves.

The chosen location can by anywhere on the 3 boards, use the game notation.

Each player will write the position on a piece of paper.

When a player places a pawn on the king position the king will be revealed.

The player will place his king on the board.

In the unlikely event of both player chosing the same king location:

* place the white king in the location when revealed

* play normally as if both kings are in that location 

Example:

![Revealed Kings](imgs/NervaBoard400Kings.png)

Both kings are revealed.

* Notation:

1. K_c4_2 2. K_f6_1

### Game started

The White player places a pawn, and then the players take turns placing pawns.

The game is over when one king is captured or all pawns are placed. 

## The rules of linking

Any 2 adjacent friendly pieces are linked they will share attack or defense points.

There are 2 types of linking:

* Attack

  A pawn will share an attack point to any diagonal friendly pawn.

  ![Rules of linking attack](imgs/NervaLinkingAttack.png)

  Notation:

  1. e3_1 2. d4_1 3. f4_1 4. f2_1 5. d2_1

  Properties:

  | Position | Attack Points | Defense Points |
  | :--- | :--- | :--- |
  | e3_1 | 5 | 1 |
  | d4_1 | 2 | 1 |
  | f4_1 | 2 | 1 |
  | f2_1 | 2 | 1 |
  | d2_1 | 2 | 1 |
  
* Defense
  
  A pawn will share an defense point to any friendly pawns place on the horizontal, vertical positions.

  ![Rules of linking attack](imgs/NervaLinkingDefense.png)

  Notation:

  1. e3_1 2. e4_1 3. f3_1 4. e2_1 5. d3_1

  Properties:

  | Position | Attack Points | Defense Points |
  | :--- | :--- | :--- |
  | e3_1 | 1 | 5 |
  | d4_1 | 1 | 2 |
  | f4_1 | 1 | 2 |
  | f2_1 | 1 | 2 |
  | d2_1 | 1 | 2 |

## The rules of defending

A pawn will add a defense point to adjacent horizontal, vertical friendly piece on the same board.

If a pawn is at c3, the adjacent tiles are:

c4 d3 c2 b3

Any friendly pawn on these positions will receive an additional defense point from the c3 pawn.

c3_1 and d3_1 pawns both have 2 defense points.

Examples:

![Rules of defending](imgs/NervaRulesOfDefending.png)

* Case 1

  f3_2 White pawn, g2_2 Black pawn, h1_2 White pawn

  Any attack will fail, each piece here have 1 attack/defense point.

* Case 2

  d2_1 White pawn, d3_1 Black pawn, c3_1 Black pawn

  d2_1 -> d3_1 : failed attack (1 vs 2)

* Case 3

  a1_3 Black pawn, b1_3 White pawn, a2_3 White pawn

  a1_3 -> b1_3 : failed attack (1 vs 2)

* Case 4

  a8_2 White pawn, a7_2 White pwan, a6_3 White Pawn c8_2 Black pawn, b7_2 Black pawn, c6_2 Black pawn

  b7_2 -> a7_2 : failed attack (3 vs 3)

  b7_2 -> a8_2 : successful attack (3 vs 2)

  a6_2 -> b7_2 : failed attack (2 vs 3)

## The rules of attacking

A pawn will add an attack point to all adjacent enemy pawns (or king) on the same board.

Adjacent enemy pawns can be attacked.

An attack will be declared by the player, each attack takes a turn.

If the attack points are higher than the defense points on a particular pawn, the attack will be successful.

The pawn will be removed from the board and replaced by another pawn from the attacker.

If you make a mistake and make an unsuccessful attack, the turn will change.

Examples:

![Rules of attacking](imgs/NervaRulesOfAttacking.png)

* Case 1

  f5_2 White pawn, e6_2 Black pawn, g6_1 Black pawn

  e6_2 -> f5_2 : failed attack, both have one attack/defense points

  g6_1 Black pawn is on another board, cannot attack.

* Case 2

  d2_1 White pawn, d3_1 Black pawn, c3_1 Black pawn

  d3_1 -> d2_1 : successful attack (2 vs 1)

* Case 3

  a1_3 Black pawn, b1_3 White pawn, a2_3 White pawn

  b1_3 -> a1_3 : successful attack (2 vs 1)

* Case 4

  a8_2 White pawn, c8_2 Black pawn, b7_2 Black pawn, c6_2 Black pawn

  b7_2 -> a8_2 : successful attack (3 vs 1)

## The rules of stacking

When 3 pawns from the same player occupy the same position on all 3 boards (a stack of 3 pawns),

then each receives 3 defense and 3 attack points.

When such a stack is formed, the existing pawn attack/defense points will be replaced with 3.

Be carefull with this, the number of defense points could be higher and it will be reseted to 3 in this case.

Example:

![Stacks](imgs/NervaBoard400Stacks.png)

* Notation
1. f4_1 2. e5_1 3. f4_2 4. e5_2 5. f4_3 6. e5_3

## Goal 

The goal is to reveal and capture the enemy king.

## Credits, contact

Afrasinei Alexandru Iulian

Email:

alexandruafrasinei@gmail.com

