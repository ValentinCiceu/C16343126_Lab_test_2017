/*
Valentin Ciceu Octavian
 C16343126
 DT228
 lab test 1 2017
 
 //Cafe rubis till system
 
 */
ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();
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
    text(products.get(i).name,100,75+(i*(height-50)/products.size()));
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
 }
  }
}


void setup() {
  size(800, 600);
  printProducts();
  displayProducts();
}


void draw() {

}