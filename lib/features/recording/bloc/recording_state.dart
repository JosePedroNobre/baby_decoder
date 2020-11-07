part of 'recording_bloc.dart';

@immutable
abstract class RecordingState {}

class RecordingInitial extends RecordingState {}

class RecordedStarted extends RecordingState {
  RecordedStarted();
}

class RecordingProcessingLoading extends RecordingState {
  RecordingProcessingLoading();
}

class RecordingProcessingCompleted extends RecordingState {
  String name;
  RecordingProcessingCompleted({this.name});
}
