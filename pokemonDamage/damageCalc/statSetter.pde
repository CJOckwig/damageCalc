import java.util.Scanner; //<>// //<>//

public class DexSetter {

  HashMap setdex(String dexNames, String dexStats,String dexTypes) {
    HashMap dex=new HashMap<Integer, Pokemon>();
    try {

      String[] data=loadStrings(new File(dexNames));
      // String allText=join(data, ",");
      int count=0;
      int i=0;
      String holder[];
      while (count<807) {
        holder=data[i].split(",");
        if (holder[1].equals("9")) {
          Pokemon p=new Pokemon(parseInt(holder[0]), holder[2]);
          dex.put(holder[0], p);
          count++;
        }
        i++;
      }
      //////////END LOADING NAMES////////////
      //////////START LOADING STATS//////////
      data=loadStrings(new File(dexStats));
      String hp, attack, defense, specialAttack, specialDefense, speed="";

      for (int j=0; j<data.length; j++) {
        holder=data[j].split(",");
        if (holder[1].equals("1")) {
          ((Pokemon)dex.get(holder[0])).setHP(holder[2]);
        }
        if (holder[1].equals("2")) {
          ((Pokemon)dex.get(holder[0])).setAttack(holder[2]);
        }
        if (holder[1].equals("3")) {
          ((Pokemon)dex.get(holder[0])).setDefense(holder[2]);
        }
        if (holder[1].equals("4")) {
          ((Pokemon)dex.get(holder[0])).setSpecialAttack(holder[2]);
        }
        if (holder[1].equals("5")) {
          ((Pokemon)dex.get(holder[0])).setSpecialDefense(holder[2]);
        }
        if (holder[1].equals("6")) {
          ((Pokemon)dex.get(holder[0])).setSpeed(holder[2]);
        }
      }
      data=loadStrings(new File(dexTypes));
      for(int k=0;k<data.length;k++){
        holder=data[k].split(",");
        if(parseInt(holder[2])==1){
        ((Pokemon)dex.get(holder[0])).setType1(findType(parseInt(holder[1])));
      }else{
        ((Pokemon)dex.get(holder[0])).setType2(findType(parseInt(holder[1])));
      }
    }
    }
    catch(Exception e) {
      println(e);
      e.printStackTrace();
    }
    return dex;
  }
  String findType(int typeVal){
   String type=""; 
   if(typeVal==1){
    type="normal"; 
   }
   if(typeVal==2){
    type="fighting";
   }
   if(typeVal==3){
    type="flying";
   }
   if(typeVal==4){
    type="poison";
   }
   if(typeVal==5){
    type="ground";
   }
   if(typeVal==6){
    type= "rock";
   }
   if(typeVal==7){
    type= "bug";
   }
   if(typeVal==8){
    type= "ghost";
   }
   if(typeVal==9){
    type= "steel";
   }
   if(typeVal==10){
    type= "fire";
   }
   if(typeVal==11){
    type= "water";
   }
   if(typeVal==12){
    type="grass";
   }
   if(typeVal==13){
    type="electric";
   }
   if(typeVal==14){
    type="psychic";
   }
   if(typeVal==15){
    type= "ice";
   }
   if(typeVal==16){
    type= "dragon";
   }
   if(typeVal==17){
    type= "dark";
   }
   if(typeVal==18){
    type= "fairy";
   }
    return type;
  }
 boolean isIn(String poke) {
   for(int i=1;i<807;i++){
    if (((Pokemon)dex.get(""+i)).getname().equals(poke)) {
      return true;
    }
    }
    return false;
  }
int dexNo(String s){
  for(int i=1;i<807;i++){
    if (((Pokemon)dex.get(""+i)).getname().equals(s)){
      return i;
    }
}return 0;
}
}
