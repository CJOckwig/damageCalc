import java.util.ArrayList;

class Pokemon {

  private String pokemonName="";
  private int dexNumber;
  private String type1="";
  private String type2="";
  private double hp;
  private double attack;
  private double defense ;
  private double specialAttack;
  private double specialDefense;
  private double speed;  
  Pokemon(int dexNumber,String pokemonName) {
    this.pokemonName=pokemonName;
    this.dexNumber=dexNumber;
  }
  ArrayList info=new ArrayList<String>();
  void setName(String s) {
    pokemonName=s;
  }
  void setType1(String s){
   type1=s; 
  }
  void setType2(String s){
   type2=s; 
  }
  public void setHP(String s){
    hp=(double)parseInt(s);
  }
  void setAttack(String s) {
    attack=parseInt(s);
  }
  void setDefense(String s) {
    defense=parseInt(s);
  }
  void setSpecialAttack(String s) {
    specialAttack=parseInt(s);
  }
  void setSpecialDefense(String s) {
    specialDefense=parseInt(s);
  }
  void setSpeed(String s) {
    speed=parseInt(s);
  }
  String getname() {
    return pokemonName;
  }
  String getType1(){
    return type1;
  }
  String getType2(){
    return type2;
  }
  double getAttack() {
    return attack;
  }
  double getDefense() {
    return defense;
  }
  double getSpecialAttack() {
    return specialAttack;
  }
  double getSpecialDefense() {
    return specialDefense;
  }
  double getSpeed() {
    return speed;
  }
  int getDex() {
    return dexNumber;
  }
  String toString() {
    String pokemonReturn = 
     "---"+pokemonName +
     "   hp: "+hp +
     "   attack: " + attack+
     "   Defense: "+defense+
     "   Special Attack: "+specialAttack+
     "   Special Defense"+specialDefense+
     "   Speed: "+ speed+
     "   types: "+type1+" "+type2;
    return pokemonReturn;
  }
}
