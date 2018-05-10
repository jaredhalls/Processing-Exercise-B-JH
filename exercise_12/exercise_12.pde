String[] sentence;
String text;
int decision, capsNum, vowelsNum, letterMax, punctuationNum, wordCount, index;

String rep[] = loadStrings("theRepublic.txt");
String ham[] = loadStrings("hamlet.txt");
String ill[] = loadStrings("illiad.txt");
String mac[] = loadStrings("macbeth.txt");
String oth[] = loadStrings("othello.txt");
String rom[] = loadStrings("romeoAndJuliet.txt");
String ody[] = loadStrings("theOdyssey.txt");

void setup(){
  background(0);
  size(600,600);
  fileSelect();
  vowels();
  textLength();
  letterUse();
  letterCaps();
  wordCount();
  punctuation();
}

void draw(){
  noLoop();
}

void fileSelect(){
  
}