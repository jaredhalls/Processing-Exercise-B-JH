String[] sentence;
String text;
int decision, capsNum, vowelsNum, letterMax, punctuationNum, wordCount, index;

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
  int files = int(random(1,7));
  if (files == 1){
    String rep[] = loadStrings("theRepublic.txt");
    sentence = rep;
    text = join(sentence, "\n");
    text("The book is The Republic" , 50, 50);
  } else if (files == 2){
    String ham[] = loadStrings("hamlet.txt");
    sentence = ham;
    text = join(sentence, "\n");
    text("The book is Hamlet" , 50, 50);
  } else if (files == 3){
    String ill[] = loadStrings("illiad.txt");
    sentence = ill;
    text = join(sentence, "\n");
    text("The book is Illiad" , 50, 50);
  } else if (files == 4){
    String mac[] = loadStrings("macbeth.txt");
    sentence = mac;
    text = join(sentence, "\n");
    text("The book is Macbeth" , 50, 50);
  } else if (files == 5){
    String oth[] = loadStrings("othello.txt");
    sentence = oth;
    text = join(sentence, "\n");
    text("The book is Othello" , 50, 50);
  } else if (files == 6){
    String rom[] = loadStrings("romeoAndJuliet.txt");
    sentence = rom;
    text = join(sentence, "\n");
    text("The book is Romeo & Juliet" , 50, 50);
  } else if (files == 7){
    String ody[] = loadStrings("theOdyssey.txt");
    sentence = ody;
    text = join(sentence, "\n");
    text("The book is The Odyssey" , 50, 50);
  }
}

void textLength(){
  text("The sentence is " + text.length() + " letters long.", 50,100);
}

void vowels(){
    for(int i = 0; i < text.length(); i++){
    char c = text.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U'){
      vowelsNum++;
    }
  }
  text("Number of vowels - " + vowelsNum, 50, 200);
}

void letterUse(){
    char[] lowArray = text.toLowerCase().toCharArray();
  int[] all = new int [26];
  for(int i = 0; i < lowArray.length; i++){
    if (lowArray[i] >= 'a' && lowArray[i] <='z'){
      all[lowArray[i]- 'a']++;
    }
  }
  for(int i = 0; i <all.length; i++){
    if (all[i] > letterMax){
      letterMax = all[i];
      index = i;
    }
  }
  char letterUse = char('a' + index);
  text("Most used letter - " + letterUse, 50, 350);
}

void letterCaps(){
    for(int i = 0; i < text.length(); i ++){
    char c = text.charAt(i);
    if(c >= 'A' && c <='Z'){
      capsNum++;
    }
  }
  text("Number of caps - " + capsNum, 50, 150);
}

void wordCount(){
    for(int i = 0; i < text.length(); i++);{
    String[] list = split(text, ' ');
    wordCount = list.length;
  }
  text("Number of words - " + wordCount, 50, 250);
}

void punctuation(){
      for(int i = 0; i < text.length(); i++){
    char c = text.charAt(i);
    if (c == ';' || c == ':' || c == '.' || c == ',' || c == '?' || c == '!'){
      punctuationNum++;
    }
  }
  text("Number of punctuations - " + punctuationNum, 50, 300);
}