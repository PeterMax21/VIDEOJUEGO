class personaje
{
  String nombre;
  int ataque;
  int defensa;
  int vida;
  
  
  personaje(String nombre_, int ataque_, int defensa_, int vida_)
  {
    nombre=nombre_;
    ataque=ataque_;
    defensa=defensa_;
    vida=vida_;
  }
  
  void barra()
  {
    fill(#980202);
    rect(50,100,200,20);
    
    fill(#0CCB47);
    rect(50,100,hp1,20);
    hp1=J1.vida;
    
    fill(#980202);
    rect(320,100,200,20);
    
    fill(#0CCB47);
    rect(320,100,hp2,20);
    hp2=J2.vida;
  }

}

personaje Xenomorph;
personaje Reina;
personaje Rompepechos;
personaje xenomorph_A1;
personaje xenomorph_A2;

personaje Ripley;
personaje Teniente;
personaje Doctor;
personaje Soldado;

personaje J1;
personaje J2;

int pantalla=1;
PFont texto;
int seleccionar;
int jugador1;
int jugador2;
int turno=0;
int hp1;
int hp2;



void setup()
{
  size (600,600);
  
  Xenomorph=new personaje("Xenomorph",90,150,200);
  Reina=new personaje("Reina",90,180,200);
  Rompepechos=new personaje("Rompepechos",50,100,200);
  xenomorph_A1=new personaje("Xenomorph A1",50,150,200);
  xenomorph_A2=new personaje("Xenomorph A2",80,100,200);
  
  Ripley=new personaje("Ripley",80,150,200);
  Teniente=new personaje("Teniente Dwayne",80,80,200);
  Doctor=new personaje("Doctor wren",50,130,200);
  Soldado=new personaje("Soldado Vasquez",80,120,200);
  
  texto=loadFont("Comfortaa-Thin-48.vlw");
  textFont(texto);
  
}

void draw()
{
  switch(pantalla)
  {
    case 1:
    titulo();
    break;
    
    case 2:
    historia();
    break;
    
    case 3:
    jugador1();
    break;
    
    case 4:
    jugador2();
    break;
    
    case 5:
    batalla();
    break;
    
    case 6:
    ganador();
    break;
    
  }
}

void titulo()
{
background(0);
fill(255);
  
strokeWeight(5);
ellipse(305,260,450,350);
pushMatrix();
scale(1);
translate(300,400);  
noStroke();
fill(255, 210, 2);
beginShape();
vertex(-198.667, -182.634);
vertex(-138.667, -182.634);
vertex(-76, -117.3);
vertex(-10, -182.634);
vertex(28.667, -182.634);
vertex(92, -117.3);
vertex(157.333, -182.634);
vertex(214, -182.634);
vertex(214, -171.967);
vertex(118.667, -74.634);
vertex(70.667, -74.634);
vertex(7.667, -140.634);
vertex(-55.333, -74.634);
vertex(-102.667, -74.634);
vertex(-198.667, -169.967);
endShape(CLOSE);
fill(200, 200, 200);
beginShape();
vertex(-108, -185.3);
vertex(-44, -185.3);
vertex(-44, -175.667);
vertex(-76, -143);
vertex(-108, -174.333);
endShape(CLOSE);
beginShape();
vertex(60.667, -185.3);
vertex(122, -185.3);
vertex(122, -175);
vertex(91.333, -143);
vertex(60.667, -173.667);
endShape(CLOSE);
beginShape();
vertex(-25.333, -77.3);
vertex(-25.333, -86.333);
vertex(6.59, -120.333);
vertex(40.667, -87.667);
vertex(40.667, -77.3);
endShape(CLOSE);
popMatrix();
text("Da clic en el ícono",130,520);
 
 if(mouseX>305 && mouseX<530 || mouseY>260 && mouseY<491)
 {
 stroke(255, 210, 2);
 if (mousePressed) 
 {
    pantalla=2;
  } 
}
}

void historia()
{
  background(0);
  textSize(20);
  fill(255);
  textAlign(CENTER);
  text("Esta es una batalla de supervivencia, los Xenomorphos se han escapado y ahora los humanos corren peligro, Industrias Weylan han intentado por años controlar a estas criaturas, creyeron que lo habian logrado, pero se equivocaron.",50,120,500,400);
  text("Jugadres, tendran que escoger un bando en esta batalla",50,350,500,400);
  text("¡Presiona A para jugar!",50,540,500,400);
   if (key == 'A'|| key== 'a')   
  {
    pantalla=3;
  }

  
}

void jugador1()
{
background(0);
fill(93, 93, 93);
rect(50, 30, 130,200);
rect(200,30,180,200);
rect(390,30,160,200);
rect(125,310,150,200);
rect(295,300,170,220);
pushMatrix();
scale(0.45);
translate(300,400);
xenomorph();
popMatrix();

pushMatrix();
scale(0.45);
translate(700,400);
reina();
popMatrix();

pushMatrix();
scale(0.45);
translate(1100,400);
rompepechos();
popMatrix();

pushMatrix();
scale(0.45);
translate(500,1000);
xenomorphX1();
popMatrix();

pushMatrix();
scale(0.45);
translate(900,1000);
xenomorphX2();
popMatrix();

fill(255);
text("Presiona H",110,30);
text("Presiona J",300,30);
text("Presiona K",460,30);
text("Presiona L",210,300);
text("Presiona G",390,300);
textAlign(CENTER);
text("Jugador 1 escoje a tu criatura",300,570);

  
  if(keyPressed)
  {
    if(key=='h'||key=='H')
    {
      J1=Xenomorph;
      jugador1=0;
      pantalla=4;
    }
  }
  
  if(keyPressed)
  {
    if(key=='j'||key=='J')
    {
      J1=Reina;
      jugador1=1;
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='k'||key=='K')
    {
      J1=Rompepechos;
      jugador1=2;
      pantalla=4;
    }
  }
  if(keyPressed)
  {
    if(key=='l'||key=='L')
    {
      J1=xenomorph_A1;
      jugador1=3;
      pantalla=4;
    }
  }
   if(keyPressed)
  {
    if(key=='g'||key=='G')
    {
      J1=xenomorph_A2;
      jugador1=4;
      pantalla=4;
    }
  }
}

void jugador2()
{
background(0);
fill(93, 93, 93);
rect(50, 30, 130,200);
rect(200,30,180,200);
rect(390,30,160,200);
rect(205,300,170,220);
pushMatrix();
scale(0.45);
translate(300,400);
teniente();
popMatrix();

pushMatrix();
scale(0.45);
translate(700,400);
doctor();
popMatrix();

pushMatrix();
scale(0.45);
translate(1100,400);
soldado1();
popMatrix();

pushMatrix();
scale(0.45);
translate(700,1000);
ripley();
popMatrix();

fill(255);
text("Presiona M",110,30);
text("Presiona N",300,30);
text("Presiona O",460,30);
text("Presiona P",290,300);
textAlign(CENTER);
text("Jugador 2 escoje a tu Personaje",300,570);

if(keyPressed)
  {
    if(key=='m'||key=='M')
    {
      J2=Teniente;
      jugador2=0;
      pantalla=5;
    }
  }
  
  if(keyPressed)
  {
    if(key=='n'||key=='N')
    {
      J2=Doctor;
      jugador2=1;
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='o'||key=='O')
    {
      J2=Soldado;
      jugador2=2;
      pantalla=5;
    }
  }
  if(keyPressed)
  {
    if(key=='p'||key=='P')
    {
      J2=Ripley;
      jugador2=3;
      pantalla=5;
    }
  }
}

void batalla()
{ 
 background(0);
  
   if(jugador1==0)
   {
    pushMatrix();
    scale(0.70);
    translate(200,400);
    xenomorph();
    popMatrix();
    
    Xenomorph.barra();
   }
   if(jugador1==1)
   {
    pushMatrix();
    scale(0.70);
    translate(200,400);
    reina();
    popMatrix();
    
    Reina.barra();
   }
   if(jugador1==2)
   {
    pushMatrix();
    scale(0.70);
    translate(200,400);
    rompepechos();
    popMatrix();
    
    Rompepechos.barra();
   }
   if(jugador1==3)
   {
    pushMatrix();
    scale(0.70);
    translate(200,400);
    xenomorphX1();
    popMatrix();
    
    xenomorph_A1.barra();
   }
   if(jugador1==4)
   {
    pushMatrix();
    scale(0.70);
    translate(200,400);
    xenomorphX2();
    popMatrix();
    
    xenomorph_A2.barra();
   }
   if(jugador2==0)
   {
    pushMatrix();
    scale(0.70);
    translate(700,400);
    teniente();
    popMatrix();
    
    Teniente.barra();
   }
   if(jugador2==1)
   {
    pushMatrix();
    scale(0.70);
    translate(700,400);
    doctor();
    popMatrix();
    
    Doctor.barra();
   }
   if(jugador2==2)
   {
    pushMatrix();
    scale(0.70);
    translate(700,400);
    soldado1();
    popMatrix();
    
    Soldado.barra();
   }
   if(jugador2==3)
   {
    pushMatrix();
    scale(0.70);
    translate(700,400);
    ripley();
    popMatrix();
    
    Ripley.barra();
   }
   fill(255);
   textSize(20);
   textAlign(CENTER);
   text("Jugador 1 ataca con T",100, 530);
   text("Jugador 2 ataca con S",430, 530);
   
   
     if(turno==0)
     {
       if(key=='t'||key=='T')
       {
         J2.vida -=J1.ataque;
         turno=1;
       }
     }
     if(turno==1)
     {
       if(key=='s'||key=='S')
       {
         J1.vida -=J2.ataque;
         turno=0;
       }
     }
     
    if(J1.vida<=0 || J2.vida<=0)
    {
      pantalla=6;
    }

  
}

void ganador()
{
background(0);
    if(J1.vida<J2.vida)
    {
      textSize(20);
      fill(255);
      text("¡Felicidades!, Ganaste Jugador 2",120,300);
      text("presiona espacio",200,320);
    }
    if(J2.vida<J1.vida)
    {
      textSize(20);
      fill(255);
      text("¡Felicidades!, Ganaste Jugador 1",120,300);
      text("presiona espacio",200,320);
      
    }
    if(keyPressed)
    {
    
    if(key == 32)
      {
       pantalla= 2;
       Xenomorph.vida =200;
       Reina.vida =200;
       Rompepechos.vida =200;
       xenomorph_A1.vida=200;
       xenomorph_A2.vida=200;
       Ripley.vida=200;
       Teniente.vida=200;
       Soldado.vida=200;
       Doctor.vida=200;
       
      } 
    }
  
}