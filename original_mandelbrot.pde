// Author Rupert Russell
// 17 April 2020
// recreateing the original mandelbrot image see: https://en.wikipedia.org/wiki/Mandelbrot_set#/media/File:Mandel.png
// Creating large scale replica 
// I am sure this code could be simplified send me a copy if you refractor it.
// rupert@rupert.id.au
// code on github at: https://github.com/rupertrussell/original_mandelbrot
// artwork on redbubble at: 


int[] row = new int[30];
int leftMargin = 120;
int topMargin = 550;
int lineSpacing = 244;
int characterSpacing = 137;

String var;
PFont myFont;

int[] row_0 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};
int[] row_1 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1};
int[] row_2 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1};
int[] row_3 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1};
int[] row_4 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_5 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_6 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1};
int[] row_7 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_8 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_9 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_10 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_11 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_12 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_13 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_14 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_15 = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_16 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_17 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_18 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_19 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_20 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_21 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_22 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_23 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_24 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1};
int[] row_25 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_26 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1};
int[] row_27 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1};
int[] row_28 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1};
int[] row_29 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1};
int[] row_30 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};


void setup() {
  background(255);
  noLoop();
  size(9611, 9411);
  myFont = createFont("Consolas", 317); // was 315
  textFont(myFont);
  stroke(0);
  fill(0);
}

void draw() {

  for (int x = 0; x <= row_0.length -1; x ++) {
    if (row_0[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 0);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 0);
    }
  }

  for (int x = 0; x <= row_1.length -1; x ++) {
    if (row_1[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 1);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 1);
    }
  }

  for (int x = 0; x <= row_2.length -1; x ++) {
    if (row_2[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 2);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 2);
    }
  }

  for (int x = 0; x <= row_3.length -1; x ++) {
    if (row_3[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 3);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 3);
    }
  }

  for (int x = 0; x <= row_4.length -1; x ++) {
    if (row_4[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 4);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 4);
    }
  }

  for (int x = 0; x <= row_5.length -1; x ++) {
    if (row_5[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 5);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 5);
    }
  }

  for (int x = 0; x <= row_6.length -1; x ++) {
    if (row_6[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 6);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 6);
    }
  }

  for (int x = 0; x <= row_7.length -1; x ++) {
    if (row_7[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 7);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 7);
    }
  }

  for (int x = 0; x <= row_8.length -1; x ++) {
    if (row_8[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 8);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 8);
    }
  }

  for (int x = 0; x <= row_9.length -1; x ++) {
    if (row_9[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 9);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 9);
    }
  }

  for (int x = 0; x <= row_10.length -1; x ++) {
    if (row_10[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 10);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 10);
    }
  }


  for (int x = 0; x <= row_11.length -1; x ++) {
    if (row_11[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 11);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 11);
    }
  }



  for (int x = 0; x <= row_12.length -1; x ++) {
    if (row_12[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 12);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 12);
    }
  }



  for (int x = 0; x <= row_13.length -1; x ++) {
    if (row_13[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 13);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 13);
    }
  }


  for (int x = 0; x <= row_14.length -1; x ++) {
    if (row_14[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 14);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 14);
    }
  }

  for (int x = 0; x <= row_15.length -1; x ++) {
    if (row_15[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 15);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 15);
    }
  }

  for (int x = 0; x <= row_16.length -1; x ++) {
    if (row_16[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 16);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 16);
    }
  }

  for (int x = 0; x <= row_17.length -1; x ++) {
    if (row_17[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 17);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 17);
    }
  }

  for (int x = 0; x <= row_18.length -1; x ++) {
    if (row_18[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 18);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 18);
    }
  }

  for (int x = 0; x <= row_19.length -1; x ++) {
    if (row_19[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 19);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 19);
    }
  }

  for (int x = 0; x <= row_20.length -1; x ++) {
    if (row_20[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 20);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 20);
    }
  }

  for (int x = 0; x <= row_21.length -1; x ++) {
    if (row_21[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 21);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 21);
    }
  }


  for (int x = 0; x <= row_22.length -1; x ++) {
    if (row_22[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 22);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 22);
    }
  }
  
  
  for (int x = 0; x <= row_23.length -1; x ++) {
    if (row_23[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 23);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 23);
    }
  }
  
  for (int x = 0; x <= row_24.length -1; x ++) {
    if (row_24[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 24);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 24);
    }
  }
  
  for (int x = 0; x <= row_25.length -1; x ++) {
    if (row_25[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 25);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 25);
    }
  }
  
  for (int x = 0; x <= row_26.length -1; x ++) {
    if (row_26[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 26);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 26);
    }
  }
  
  for (int x = 0; x <= row_27.length -1; x ++) {
    if (row_27[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 27);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 27);
    }
  }
  
  for (int x = 0; x <= row_28.length -1; x ++) {
    if (row_28[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 28);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 28);
    }
  }
  
  for (int x = 0; x <= row_29.length -1; x ++) {
    if (row_29[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 29);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 29);
    }
  }
  
  for (int x = 0; x <= row_30.length -1; x ++) {
    if (row_30[x] == 0) {
      text(" ", leftMargin + x * characterSpacing, topMargin + lineSpacing * 30);
    } else {
      text("*", leftMargin + x * characterSpacing, topMargin + lineSpacing * 30);
    }
  }
  
  save("Original_Mandelbrot.png");
  exit();
}
