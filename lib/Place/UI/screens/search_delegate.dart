import 'package:flutter/material.dart';

class SearchDelegatePlaces extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Text('builActions'),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return Text('buildLeading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('builResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildSuggestions');
  }
}
