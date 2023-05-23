import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:http/http.dart' as http;

class Symptom {
  final String name;

  Symptom({required this.name});

  factory Symptom.fromJson(Map<String, dynamic> json) {
    return Symptom(
      name: json['Name'] ?? '',
    );
  }

  @override
  String toString() {
    return name;
  }
}

class MyAutoCompleteWidget extends StatefulWidget {
  @override
  _MyAutoCompleteWidgetState createState() => _MyAutoCompleteWidgetState();
}

class _MyAutoCompleteWidgetState extends State<MyAutoCompleteWidget> {
  final TextEditingController _typeAheadController = TextEditingController();
  List<Symptom> _symptoms = [];

  Future<void> _search() async {
    final response = await http.get(
      Uri.parse('https://drrobot-production.up.railway.app/api/symptoms'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _symptoms = List<Symptom>.from(data.map((item) => Symptom.fromJson(item)).toList());
        print('Loaded ${_symptoms.length} symptoms');
      });
    } else {
      throw Exception('Failed to load symptoms');
    }
  }

  @override
  void initState() {
    super.initState();
    _search();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoComplete Example'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TypeAheadField(
              textFieldConfiguration: TextFieldConfiguration(
                controller: _typeAheadController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  labelText: 'Enter a symptom',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              suggestionsCallback: (query) {
                print('Query: $query');
                return _symptoms.where((symptom) {
                  final String symptomName = symptom.name.toLowerCase();
                  final String queryLower = query.toLowerCase();
                  final bool result = symptomName.contains(queryLower);
                  print('Symptom: $symptomName, Query: $queryLower, Result: $result');
                  return result;
                }).toList();
              },
              itemBuilder: (BuildContext context, Symptom suggestion) {
                return ListTile(
                  title: Text(suggestion.name, style: TextStyle(color: Colors.red)),
                );
              },
              onSuggestionSelected: (Symptom suggestion) {
                _typeAheadController.text = suggestion.name;
              },
            ),
          ],
        ),
      ),
    );
  }
}