class Product{
  String name;
  float price;
  
  Product(TableRow row){
    name = row.getString("Name");
    price = row.getFloat("Price");
  }
  
  //used to print out the products
  String toString(){
   return name + " , "  + "price "  + price;
  }
  
  //to add the products
  void update(){
  }
  
  void render(){
  }
  
}