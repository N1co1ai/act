import 'dart:io';

void main() {
  var items = <String, Map<String, num>>{};

  while (true) {
    print("\n1.Add  2.View  3.Sell  4.Exit");
    stdout.write("Choice: ");
    var c = stdin.readLineSync();

    if (c == '1') {
      stdout.write("Enter product name: ");
      var n = stdin.readLineSync()!;
      stdout.write("Enter price: ");
      var p = num.parse(stdin.readLineSync()!);
      stdout.write("Enter quantity: ");
      var q = num.parse(stdin.readLineSync()!);
      items[n] = {"price": p, "qty": q};
      print("product added successfully!");
    }

    else if (c == '2') {
      items.forEach((k, v) => print("$k - ${v['price']} - ${v['qty']}"));
    }

    else if (c == '3') {
      stdout.write("Name: ");
      var n = stdin.readLineSync()!;
      stdout.write("Qty: ");
      var q = num.parse(stdin.readLineSync()!);
      if (items.containsKey(n) && items[n]!['qty']! >= q) {
        items[n]!['qty'] = items[n]!['qty']! - q;
        print("Sold!");
      } else {
        print("Insufficient stock!");
      }
    }

    else if (c == '4') break;
  }
}



  
