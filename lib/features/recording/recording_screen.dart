import 'package:baby_decoder/features/recording/bloc/recording_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecordScreen extends StatefulWidget {
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  String football =
      "https://cdn.ecvol.com/s/www.querocase.com.br/produtos/topsocket-bola-de-futebol/z/0.png?v=0";
  String tenis =
      "https://contents.mediadecathlon.com/p152665/k0f4b43adaff6a83bae78b7459746fe3c/152665_default.jpg?format=auto&quality=60&f=800x0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Baby Decoder"),
          actions: [
            InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(Icons.info),
                )),
          ],
        ),
        body: BlocBuilder<RecordingBloc, RecordingState>(
            builder: (context, state) {
          if (state is RecordedStarted) {
            return Image.network(football);
          } else if (state is RecordingProcessingLoading) {
            return CircularProgressIndicator();
          } else if (state is RecordingProcessingCompleted) {
            return Image.network(tenis);
          } else {
            return Container();
          }
        }));
  }
}
