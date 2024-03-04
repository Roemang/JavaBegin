String zoekNaam = "Roemang";
Boolean gevonden = false;
String[] namen = {"Piet", "Joey", "Jorn", "Simon", "Rick", "Jan"};

void setup(){
  for(int i = 0; i < namen.length; i++){
    if(zoekNaam == namen[i]){
      gevonden = true;
    }
  }
  
  if(gevonden){
    println("Ja de naam " + zoekNaam + " bestaat!");
  }else{
    println("Helaas de naam " + zoekNaam + " ken ik niet!");
  }
}
