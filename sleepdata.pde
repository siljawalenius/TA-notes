Table sleep;

void setup(){
  size (400,400);
  
  sleep = loadTable("sleep.tsv", "header");
  for (TableRow row : sleep.rows()){
    String mammal = row.getString("name");
    float weight = row.getFloat("weight");
    println(mammal+ ", "+ weight + "," );
  }
  
}

void draw(){
  String textEl = "hello";
  textSize(70);
  fill(0);
  text(textEl, 10, 10, 400, 400);
}
