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

void setup() {
  size(800, 600);
  printProducts();
}


void draw() {
}