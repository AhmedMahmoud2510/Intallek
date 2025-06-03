import 'package:flutter_bloc/flutter_bloc.dart';

class SheetCubit extends Cubit<int> {
  SheetCubit() : super(0);

  void changeSheet(int index) => emit(index);
}
