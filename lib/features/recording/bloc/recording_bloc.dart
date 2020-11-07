import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recording_event.dart';
part 'recording_state.dart';

class RecordingBloc extends Bloc<RecordingEvent, RecordingState> {
  RecordingBloc() : super(RecordingInitial());

  @override
  Stream<RecordingState> mapEventToState(
    RecordingEvent event,
  ) async* {
    if (event is StartRecording) {
      yield RecordedStarted();
    } else if (event is StartProcessing) {
      yield RecordingProcessingLoading();
      // obtens audio do recorder
      // fazes chamada à api do que vem da lib
      // onSucess()
      yield RecordingProcessingCompleted();
    }
  }
}
