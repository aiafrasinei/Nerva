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

        Pawns (Box, HalfBox, SmallBox), King (Cylinder)

        ![White Pieces](imgs/WhitePieces.png)
    
    * 96 pieces (pawns)
        * 32 boxes
        * 32 half boxes
        * 32 small boxes

    * the king (cylinder)

* Black

    * Piece shapes

        Pawns (Box, HalfBox, SmallBox), King (Cylinder)

        ![Black Pieces](imgs/BlackPieces.png)

    * 96 pieces (pawns)
        * 32 boxes
        * 32 half boxes
        * 32 small boxes

    * the king (cylinder)

## The board

A standard chess board (8x8).

![Empty board](imgs/EmptyBoard.png)

### The battle environment

A maximum of three pawns can be placed on top of each other anywhere on the board.

Think of the board as 3 stacked boards on top of each other.

### Game notation

Chess algebraic notation is used to identify board locations.

https://en.wikipedia.org/wiki/Algebraic_notation_(chess)

This is extended for Nerva by using the following syntax to identify levels:

[column][row]_[level] - A pawn is placed on the board level.

[K]_[column][row]_[level] - King reveal.

[-K]_[column][row]_[level] - King is dead, game over.

Examples:

* a1_1

* d4_2

* a1_3

* K_a1_3 - This is a king reveal.

* -K_a2_2 - The king is dead, game over.

* a1_1 d4_2 a1_3 K_A1_3


## The pieces

### The pawns

On a board tile, stack the pieces in this order: Box, HalfBox, and SmallBox.

![Stacked Pawns](imgs/NervaBoard400Pawns.png)

Thinking in terms of stacked boards:

Board 1 uses the normal boxes, board 2 uses the half boxes, and board 3 uses the small boxes.

Examples:

* c3_2 (White Pawn on board 2)

* g2_1 (Black Pawn on board 1)

* d4_1 d4_2 d4_3 (Black Pawn board 1, White Pawn board 2, Black Pawn board 3)

* c6_3 (Black Pawn on board 3)

* f6_2 f6_3 (White Pawn on board 2, Black Pawn on board 3)


#### White

96 pawns and the white king.

#### Black

96 pawns and the black king.

#### Properties

Each pawn has 1 attack point and 1 defense point.

If a pawn is at c3, the adjacent tiles are:

b2 c2 d2 d3 d4 b4 c4 b3

The attack and defense will happen on these adjacent tiles.

![PawnAttacks](imgs/NervaPawnAttack.png)

More details on this are in the rules of defense and attacking sections. 

### The king

The king has no attack points.

## The rules of placement

### Setup

The game starts with an empty board.

Each player gets their 96 pawns and their king.

The White player places the first pawn on the board. 

The pawns can be placed on any empty tile or on top of existing pawns.

A maximum of 3 pawns can be stacked on a tile.

### King location

The king's location is hidden from the enemy player.

Each player decides at the beginning where their king will be located and keeps the information to themselves.

For example, it can be written on a piece of paper.

Another option is to have a friend or spectator decide the positions of both kings.

The king will be placed on the board when it is revealed—that is, when a player places a pawn on its position.

When the king is revealed, it is the duty of the player or spectator to place it on the board.

### Game started

The starting player places a pawn, and then the players take turns placing pawns.

The game is over when all pawns are placed or one of the kings is dead.

## The rules of defense

A pawn will add a defense point to all adjacent friendly pawns (or king).

Example:

If a pawn is at c3, the adjacent tiles are:

b2 c2 d2 d3 d4 b4 c4 b3

Any friendly pawn on these positions will receive an additional defense point from the c3 pawn.

## The rules of attacking

A pawn will add an attack point to all adjacent enemy pawns (or king).

Adjacent enemy pawns can be attacked. 

If the attack points are higher than the defense points on a particular pawn, the attack will be successful.

The pawn will be removed from the board and replaced by another pawn from the attacker.

Each attack takes a turn.

If you make a mistake and make an unsuccessful attack, the turn will change.

## The rules of stacking

When 3 pawns from the same player occupy the same position on all 3 boards (a stack of 3 pawns), then each receives 3 defense points and 3 attack points.

When such a stack is formed, the existing pawn points will be replaced with 3.

There is no addition of existing points, so be careful with this.

Example:

c3_1 c3_2 c3_3

## Goal 

The goal is to reveal and capture the enemy king.

## Credits, contact

Afrasinei Alexandru Iulian

Email:

alexandruafrasinei@gmail.com

GitHub website:

https://github.com/aiafrasinei/Nerva
