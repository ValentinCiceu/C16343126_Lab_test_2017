/*
Valentin Ciceu Octavian
 C16343126
 DT228
 lab test 1 2017
 
 //Cafe rubis till system
 
 */
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

float total=0;
//this is for the display bill to move downwrds
float shift = 0;
boolean press = false;
/*
Write a function called loadData that loads the data from the
 file and populates the products ArrayList.Call this from setup.
 */
//to load the data
void loadData() {
  Table table = loadTable("cafe.csv", "header");
  for (TableRow r : table.rows()) {
    Product p = new Product(r);
    products.add(p);
  }
}
//to print out the values
void printProducts() {
  //to print out the products available
  Table table = loadTable("cafe.csv", "header");
  for (TableRow r : table.rows()) {
    Product print = new Product(r);
    products.add(print);
    println(print);
  }
}

//display products
void displayProducts(){
  //first divide the screen to two
  line(width/2,0,width/2,height);//divding the screen
  for(int i=0; i< products.size(); i++){
    fill(255);
    rect(50,50+(i*(height-50)/products.size()),250,50);
    fill(0);
    text(products.get(i).name,100,75+(i*(height-50)/products.size()));//name
    text(products.get(i).price,250,75+(i*(height-50)/products.size()));//price
  }
  //to diplay the product
}

/*
Write code for the mousePressed function that allows 
the user to click on a product and have it added to the bill ArrayList.
*/
void mousePressed(){
  //calculating each square dimensions
  for(int i=0; i< products.size(); i++){
 if(mouseX >50 && mouseX < 300 && mouseY >50+(i*(height-50)/products.size()) && mouseY <(50+(i*(height-50)/products.size()))+50){
   println(products.get(i).name);
   total=total + products.get(i).price;
   println("Your total is: " + total);
   //to display the products
   //total = y + shift
   text(products.get(i).name,(width/2)+100,100+shift);
   text(products.get(i).price,(width/2)+300,100+shift);
   shift+=30;
   //text(total,(width/2)+300,400);
  //press=true;
  //println(press);
 }
  }
}


//write function to display the bill
void displayBill(){
//draw the second half of the screen
fill(255);
rect(width/2 + 50 ,50,300 ,height-100);
fill(0);
text("Your Bill",(width/2)+150,80);
//to display the bill with the text function is uesd 
//for(int i=0; i<products.size(); i++){
//  fill(0);
// text(total , (width/2) + 100,75+(i*(height-50)/products.size()));
//}


}


void setup() {
  size(800, 600);
  background(175);
  printProducts();
  displayProducts();
  displayBill();
  
}


void draw() {
 //background(175);
  //displayProducts();
  //displayBill();
  //background(175);
  ////text(total,(width/2)+300,400);

}




  