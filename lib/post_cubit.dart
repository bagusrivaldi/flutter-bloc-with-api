import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihanbloc/data_service.dart';
import 'package:latihanbloc/post.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);
  // PostsCubit(super.initialState);

  void get posts async => emit(await _dataService.getPost());

}