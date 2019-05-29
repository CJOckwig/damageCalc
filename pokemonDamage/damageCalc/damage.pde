class Damage {
  SuperEffective eff=new SuperEffective();
  double damageOutput(double level, double power, double attack, double defense, double weather, String moveType, double burn, String type, String oppType1, String oppType2) {
    double damage=level*2;
    damage/=5;
    damage+=2;
    damage=damage*power*(attack/defense);
    damage/=50;
    damage+=2;
    if (moveType.equals(type)) {//STAB
      damage*=1.5;
    }
    if (weather!=0) {//no weather=0,rain=1,sun=2
      if (weather==1&&moveType.equals("water")) {
        damage*=1.5;
      }
      if (weather==2&&moveType.equals("fire")) {    
        damage*=1.5;
      }
    }
    damage*=eff.effectiveness(moveType, oppType1, oppType2);
    double rand=Math.random()*15+85;
    rand/=100;
   // damage*=rand;
    return damage;
  }
  double finalStat(double base, int evs, int nature) {
    double fin=base*2+31;
    fin+=(evs/4)+5;
    if (nature==1) {
      fin*=1.1;
    }
    return fin;
  }
}
