import java.util.HashMap; //<>// //<>// //<>//
String pokemonNamesDex="C:\\Users\\Caleb\\Desktop\\pokemonDamage\\damageCalc\\data\\names.txt";
  String dexStats="C:\\Users\\Caleb\\Desktop\\pokemonDamage\\damageCalc\\data\\dexStats.txt";
  String dexTypes="C:\\Users\\Caleb\\Desktop\\pokemonDamage\\damageCalc\\data\\dextypes.txt";
  DexSetter stat=new DexSetter();
  HashMap dex = stat.setdex(pokemonNamesDex, dexStats, dexTypes);
  // println(((Pokemon)dex.get(1)).getAttack());
  Damage dam=new Damage();
  int pokemonAttacker=9;
  int pokemonDefender=6;
  int evs=0;
  int nature=0;
  String attacker=(((Pokemon)dex.get(""+pokemonAttacker)).getname());
    String defender=(((Pokemon)dex.get(""+pokemonDefender)).getname());
int whichString=1;
  double baseAttack=(((Pokemon)dex.get(""+pokemonAttacker)).getAttack());
  double baseSpecialAttack=(((Pokemon)dex.get(""+pokemonAttacker)).getSpecialAttack());
  double baseDefense=(((Pokemon)dex.get(""+pokemonDefender)).getDefense());
  double baseSpecialDefense=(((Pokemon)dex.get(""+pokemonDefender)).getSpecialDefense());
  double baseSpeed=(((Pokemon)dex.get(""+pokemonDefender)).getSpeed());
  double finalAttackStat=dam.finalStat(baseAttack, evs, nature);
  double finalDefenseStat=dam.finalStat(baseDefense, evs, nature);
  double finalSpecialAttackStat=dam.finalStat(baseSpecialAttack, evs, nature);
  double finalSpecialDefenseStat=dam.finalStat(baseSpecialDefense, evs, nature);
  double finalSpeed=dam.finalStat(baseSpeed, evs, nature);
  double level=100;
  String movePowS="100";
  double movePow=100;
  double weather=0;//no weather=0,rain=1,sun=2
  String moveType="water";
  double burn=0;
  String type1=(((Pokemon)dex.get(""+pokemonAttacker)).getType1());
  String type2=(((Pokemon)dex.get(""+pokemonAttacker)).getType2());
  String oppType1=(((Pokemon)dex.get(""+pokemonDefender)).getType1());
  String oppType2=(((Pokemon)dex.get(""+pokemonDefender)).getType2());
void setup() {
    size(2500,1500);
  background(255);
   //<>//
}
void draw(){
  movePow=(double)parseInt(movePowS);
if(stat.isIn(attacker)){//Attacker
  pokemonAttacker=stat.dexNo(attacker);
  baseAttack=(((Pokemon)dex.get(""+pokemonAttacker)).getAttack());
  baseSpecialAttack=(((Pokemon)dex.get(""+pokemonAttacker)).getSpecialAttack());
  finalAttackStat=dam.finalStat(baseAttack, evs, nature);
  finalSpecialAttackStat=dam.finalStat(baseSpecialAttack, evs, nature);
}
if(stat.isIn(defender)){//Attacker
  pokemonDefender=stat.dexNo(defender);
  baseDefense=(((Pokemon)dex.get(""+pokemonDefender)).getDefense());
  baseSpecialDefense=(((Pokemon)dex.get(""+pokemonDefender)).getSpecialDefense());
  finalDefenseStat=dam.finalStat(baseDefense, evs, nature);
  finalSpecialDefenseStat=dam.finalStat(baseSpecialDefense, evs, nature);
}
    background(255);

  textSize(48);
  fill(0);
 double finalDamage=  dam.damageOutput(level, movePow, finalAttackStat, finalDefenseStat, weather, moveType, burn, type1, oppType1, oppType2);
text("Final damage: "+finalDamage,1000,400);
text("move power: "+movePow,1000,500);
text("Move type: "+moveType,1000,600);

text("Attacking Pokemon: "+attacker,100,200);
text("Attack: "+finalAttackStat,100,300);
text("Special Attack: "+finalSpecialAttackStat,100,400);

text("defender: "+defender,1600,200);
text("Defense: "+finalDefenseStat,1600,300);
text("Defense: "+finalSpecialDefenseStat,1600,400);
 // }catch(Exception e){
    
  //}
}
void keyTyped() {
  if(whichString==1){
  if ((key >= 'A' && key <= 'z') || key == ' '||key=='-'||key=='%'||key>='0'&&key<='9') {
    attacker+=key;
    // Write the letter to the console
  } else if (key==BACKSPACE) {
    if (attacker.length()!=0) {
      attacker=attacker.substring(0, attacker.length()-1);
    }
  } }else if(whichString==2){
     if ((key >= 'A' && key <= 'z') || key == ' '||key=='-'||key=='%'||key>='0'&&key<='9') {
    defender+=key;
    // Write the letter to the console
  } else if (key==BACKSPACE) {
    if (defender.length()!=0) {
      defender=defender.substring(0, defender.length()-1);
    }
  }
  }else if(whichString==3){
     if ((key >= 'A' && key <= 'z') || key == ' '||key=='-'||key=='%'||key>='0'&&key<='9') {
    movePowS+=key;
    // Write the letter to the console
  } else if (key==BACKSPACE) {
    if (movePowS.length()!=0) {
      movePowS=defender.substring(0, movePowS.length()-1);
    }
  }
}
}
void mousePressed(){
 if(mouseX>1600){
  whichString=2; 
 }
 else if(mouseX<800){
  whichString=1; 
 }
 else{
 whichString=3; 
 }
}
