char[] keys = new char[0];

void setup(){
 size(200,200); 
 }

 void draw(){
 }

 void keyPressed(){
  if ((key=='Q')||(key=='q')){
    printArray(keys);
  } else{ 
    if (keys.length < 50){
      keys = append(keys, key);
    } else{ 
      for(int i = 0; i < keys.length -1; i++){
        keys[i]=keys[i+1];
      }
      keys[49] = key;
    }
  }
 }
