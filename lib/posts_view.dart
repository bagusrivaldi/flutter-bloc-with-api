
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihanbloc/post.dart';
import 'package:latihanbloc/post_cubit.dart';

class PostsView extends StatelessWidget {
  const PostsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lat Bloc"),
      ),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            Post post = state[index];
            return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  post.id.toString(),
                ),
              ),
              title: Text(post.title, maxLines: 1,),
              subtitle: Text(post.body),
            ),
          );
          } 
        );
        }
      ),
    );
  }
}
