//vox2d

//Array LIST, SE DECLARA DE ESTA FORMA, ALAMACENA EL TIPO DE DATO, almacena una colección de datos de cada partícula
ArrayList <particula> particulas;

void setup(){
  size (500,500);
 // println("TAU: "+TAU); //vale lo mismo que PI
  
  
  color foo=color(0,255,0);
 
  
  particulas = new ArrayList<particula>(); //es un objeto que permite el acceso a muchos
  //más objetos a los cuales he declarado
 for(int i=0; i<100;i++){
  
  
  
  particulas.add(new particula());
 
 }
}
void draw(){
  background(0);
for(particula p : particulas){
  p.display();
  p.movimiento();
  

}
 }
 void mousePressed(){
  particula foo = new particula(mouseX,mouseY);
  particulas.add(foo);
   
 }
 
class particula{
 float x,y,v,a,t;
 color c;  //es un tipo de dato que puede extenderse, y se interpreta como un número
 particula (float x_, float y_, float v_, float a_, float t_, color c_){
  x=x_;
  y=y_;
  v=v_;
  a=a_;
  t=t_;
  c=c_; 
 }
 particula (){
  x= random(500);
  y= random (500);
  v= 10;
  a= random (TWO_PI);
  t= random(1,30);
  c= color (random(255),random(255),random(255));
  
  
 }
 particula(float x_, float y_){
    x= x_;
  y= y_;
  v= 10;
  a= random (TWO_PI);
  t= random(1,30);
  c= color (random(255),random(255),random(255));
 }
 
  void display(){
  pushMatrix();
  translate(x,y);
  noStroke();
  fill(c);

  ellipse (0,0,t,t);
  
  popMatrix();
  
  }
  void movimiento(){
    
   
  y+= v*sin(a);
  x+= v*cos(a);
  
    if (x>500){
 v= -v;
 a= -a;
  
  }
   if (x<=0){
   v=-v;
  a= -a;
  }
   if (y>500)
  a= -a;
   if (y<=0)
  a= -a;
  

 
 }
    
    /*
    a+= random(radians(-PI),radians(.28));
  y+=a;
  x+=a;*/
 }
