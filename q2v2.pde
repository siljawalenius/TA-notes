char[] keys = new char[50];
int curIndex = 0;

void setup(){
 size(200,200); 
 }

 void draw(){
 }

 void keyPressed(){
  if ((key=='Q')||(key=='q')){
    //"clearing" the console by printing a bunch of empty lines
    for (int i = 0; i < 50; i++){
      println();
    }
    //printing array result
    printArray(keys);
  } else if ((key !='Q')&&(key !='q') && curIndex < 50) { 
       //if current index is LESS than 50, add the thing to the array
      keys[curIndex] = key;
      
      //increase currentIndex for the next key press
      curIndex++; 
  } else {
    //writing from beginning to end to avoid overwriting data
      for(int i = 0; i < keys.length -1; i++){
        keys[i]=keys[i+1];
      }
      keys[49] = key;
      curIndex++;
  }
 }
 
