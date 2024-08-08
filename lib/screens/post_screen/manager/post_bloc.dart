import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mobile_app_task/screens/post_screen/data/post_model/post_model.dart';

import '../data/remote_post_data.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {

  final PostRemoteDataSourceImp postRemoteDataSourceImp;

  PostBloc(this.postRemoteDataSourceImp) : super(PostLoadingState()) {
    on<PostEvent>((event, emit) async {
      print('I am loading');
      emit(PostLoadingState());
      try {
        final posts = await postRemoteDataSourceImp.fetchPosts();
        emit(PostLoadedState(posts: posts));
      } catch (e) {
        emit(PostErrorState(errorMessage: e.toString()));
      }
    });
  }
}
