void main() {
	final customer = Customer("Khalid");
  final loyalCustomer = LoyalCustomer("Hussain");
	customer.add(54.5);
	customer.add(12.2);
  loyalCustomer.add(10);
	print(customer.getPurchaseAmount());
  print(loyalCustomer.getPurchaseAmount());
}

class Customer{
    String name;
    double _purchaseAmount = 0;

    Customer(this.name);

    void add(double price){
        _purchaseAmount += price;
    }

    double getPurchaseAmount() {
        return _purchaseAmount;
    }

    
}
class LoyalCustomer extends Customer{
    @override
    getPurchaseAmount() =>  super.getPurchaseAmount()*0.9;
    LoyalCustomer(super.name); 
    }