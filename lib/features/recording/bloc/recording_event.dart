part of 'recording_bloc.dart';

@immutable
abstract class RecordingEvent {}

class StartRecording extends RecordingEvent {}

class StartProcessing extends RecordingEvent {}
