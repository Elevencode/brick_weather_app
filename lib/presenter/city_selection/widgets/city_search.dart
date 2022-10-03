import 'package:brick_weather_app/model/place.dart';
import 'package:brick_weather_app/presenter/city_selection/bloc/city_selection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitySearch extends SearchDelegate<Place?> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<CitySelectionBloc, CitySelectionState>(
      builder: (context, state) => state.map(
        loadInProgress: (_) => const CircularProgressIndicator(),
        loadFailure: (state) => Text(state.errorText),
        loadSuccess: (state) => FutureBuilder(
          // We will put the api call here
          // future: query == '' ? null :,
          builder: (context, snapshot) => query == ''
              ? Container()
              : ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.city[index].description),
                    onTap: () => close(context, state.city[index]),
                  );
                }),
          // builder: (context, snapshot) => query == ''
          // ? Container(
          //     padding: EdgeInsets.all(16.0),
          //     child: Text('Select city'),
          //   )
          // : snapshot.hasData
          //     ? ListView.builder(
          //         itemBuilder: (context, index) => ListTile(
          //           // we will display the data returned from our future here
          //           title: Text((snapshot.data[index] as Place).description),
          //           onTap: () {
          //             close(context, snapshot.data[index] ?? '');
          //           },
          //         ),
          //         itemCount: snapshot.data.length,
          //       )
          //     : Container(child: Text('Loading...')),
        ),
      ),
    );
  }
}
