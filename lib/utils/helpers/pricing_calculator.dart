class AppPricingCalculator {

  // Phương thức tính tổng giá trị sản phẩm bao gồm thuế và chi phí vận chuyển
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Phương thức tính chi phí vận chuyển và trả về dưới dạng chuỗi
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Phương thức tính thuế và trả về dưới dạng chuỗi
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Phương thức lấy thuế suất dựa trên vị trí (mặc định là 10%)
  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  // Phương thức lấy chi phí vận chuyển dựa trên vị trí (mặc định là 5%)
  static double getShippingCost(String location) {
    return 0.050;
  }

  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}