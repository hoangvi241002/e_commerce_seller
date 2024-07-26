import 'package:intl/intl.dart';

class AppFormatter {
  // Phương thức định dạng ngày tháng
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  // Phương thức định dạng số tiền theo đơn vị Việt Nam đồng
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(amount);
  }

  // Phương thức định dạng số điện thoại trong nước
  static String formatPhoneNumber(String phoneNumber) {
    // Xóa bỏ các ký tự không phải là số
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Kiểm tra độ dài của chuỗi chỉ có số để định dạng
    if (digitsOnly.length == 10) {
      return '0${digitsOnly.substring(1, 4)} ${digitsOnly.substring(4, 7)} ${digitsOnly.substring(7)}'; // Định dạng số điện thoại theo mẫu 0XXX XXX XXX.
    }
    return phoneNumber;
  }

  // Phương thức định dạng số điện thoại quốc tế
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Xóa bỏ các ký tự không phải là số
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Lấy mã quốc gia và cắt bỏ hai chữ số đầu tiên của digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer(); // Khởi tạo một đối tượng StringBuffer để xây dựng chuỗi định dạng.
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 3;
      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
