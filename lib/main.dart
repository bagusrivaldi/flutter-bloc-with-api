import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihanbloc/post_cubit.dart';
import 'package:latihanbloc/posts_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: BlocProvider<PostsCubit>(
        create: (context) => PostsCubit()..posts,
        child: PostsView()),
    );
  }
}
