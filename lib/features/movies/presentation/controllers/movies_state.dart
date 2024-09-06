import 'package:equatable/equatable.dart';
import 'package:movieapp/core/utils/enums_state.dart';
import 'package:movieapp/features/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {

  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  final List<Movie> upcomingMovies;
  final RequestState upcomingState;
  final String upcomingMessage;


  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.popularMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestState.loading,
    this.topRatedMessage = '',
    this.upcomingMovies = const [],
    this.upcomingState = RequestState.loading,
    this.upcomingMessage = '',
  });

  @override
  List<Object?> get props => [
    nowPlayingMovies,
    nowPlayingState,
    nowPlayingMessage,
    popularMovies,
    popularState,
    popularMessage,
    topRatedMovies,
    topRatedState,
    topRatedMessage,
    upcomingMovies,
    upcomingState,
    upcomingMessage

  ];

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
    List<Movie>? upcomingMovies,
    RequestState? upcomingState,
    String? upcomingMessage,
  }){
    return MoviesState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularMessage: popularMessage ?? this.popularMessage,
        popularState: popularState ?? this.popularState,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage,
        topRatedState: topRatedState ?? this.topRatedState,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
        upcomingMessage: upcomingMessage ?? this.upcomingMessage,
        upcomingState: upcomingState ?? this.upcomingState,
    );
  }
}
