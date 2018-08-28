class CashRegister {
  constructor(discount=0) {
    this._discount = discount;
    this._total    = 0;
    this._items    = [];
  }

  getDiscount() {
    return this._discount;
  }

  getTotal() {
    return this._total;
  }

  getItems() {
    return this._items;
  }

  addItems(item, price, quantity=1) {
    let i = 0;
    while(i < quantity) {
      this._items.push(item);
      this._total += price;
      i++;
    }
    return this._items;
  }

  noDiscountMsg() {
    return "There is no discount to apply.";
  }

  applyDiscount() {
    if (this._discount == 0){
      return this.noDiscountMsg();
    } else {
      this._total = this._total - (this._total * parseFloat(this._discount/100))
      debugger;
    }
    return `After the discount, the total comes to $${this._total}`;
  }
}

first_transaction = new CashRegister(20);
console.log(first_transaction.getDiscount());
first_transaction.addItems('apple computer', 500, 2);
console.log(first_transaction.applyDiscount());
