String sentence = "The Quick Brown Fox jumps over the Lazy Dog.";
String[] sentenceArray = new String[sentence.length()];
int capsNum, vowelsNum, letterRoof, punctuationNum, wordsNum, index;

void setup() {
  size(600,600);
  background(0);
  sentence = "The Quick, Brown Fox jumps over the Lazy Dog.";
  stringLength(); //length of sentence
  caps(); //number of capitals
  vowels(); //number of vowels
  words(); //word count
  punctuation(); //number of punctuation marks
  letterUse(); //most used letter
}

void draw() {
  text("The sentence is - " + sentence, 50, 50);
  noLoop();
}

void stringLength(){
  text("The sentence is " + sentence.length() + " letters long.", 50,100); //displays number of letters
}

void caps(){
  for(int i = 0; i < sentence.length(); i ++){
    char c = sentence.charAt(i);
    if(c >= 'A' && c <='Z'){
      capsNum++;
    }
  }
  text("Number of caps - " + capsNum, 50, 150);
}

void vowels(){
  for(int i = 0; i < sentence.length(); i++){
    char c = sentence.charAt(i);
    if (c == 'a' || c == 'A' || c == 'e' || c == 'E' || c == 'i' || c == 'I' || c == 'o' || c == 'O' || c == 'u' || c == 'U'){
      vowelsNum++;
    }
  }
  text("Number of vowels - " + vowelsNum, 50, 200);
}

void words(){
  for(int i = 0; i < sentence.length(); i++);{
    String[] list = split(sentence, ' ');
    wordsNum = list.length;
  }
  text("Number of words - " + wordsNum, 50, 250);
}

void punctuation(){
    for(int i = 0; i < sentence.length(); i++){
    char c = sentence.charAt(i);
    if (c == ';' || c == ':' || c == '.' || c == ',' || c == '?' || c == '!'){
      punctuationNum++;
    }
  }
  text("Number of punctuations - " + punctuationNum, 50, 300);
}

void letterUse(){
  char[] lowArray = sentence.toLowerCase().toCharArray();
  int[] all = new int [26];
  for(int i = 0; i < lowArray.length; i++){
    if (lowArray[i] >= 'a' && lowArray[i] <='z'){
      all[lowArray[i]- 'a']++;
    }
  }
  for(int i = 0; i <all.length; i++){
    if (all[i] > letterRoof){
      letterRoof = all[i];
      index = i;
    }
  }
  char letterUse = char('a' + index);
  text("Most used letter - " + letterUse, 50, 350);
}