import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categoryImages = [
    'assets/icons/nike.svg',
    'assets/icons/co.svg',
    'assets/icons/hr.svg',
    'assets/icons/ad.svg',
    'assets/icons/puma.svg',
  ].obs;

  var categoryNames = [
    'Nike',
    'Converse',
    'Under Armour',
    'Adidas',
    'Puma',
  ].obs;

  var selectedIndex = 0.obs;
}
