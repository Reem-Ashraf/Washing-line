import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wishingline/view/screens/direction_page/direction_page.dart';
import '../../view/screens/home_page/home_page.dart';
import '../../view/screens/invoices_page/invoices_page.dart';
import '../../view/screens/shopping_cart_page/shopping_cart_page.dart';

part 'lay_out_state.dart';

class LayOutCubit extends Cubit<LayOutState> {
  LayOutCubit() : super(LayOutInitial());
  static LayOutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const InvoicesPage(),
    const ShoppingCartPage(),
    const DirectionPage()
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(LayOutChanged());
  }
}
