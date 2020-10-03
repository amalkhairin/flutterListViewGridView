import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("data 1"),
        Text("data 2"),
        Text("data 3"),
      ],
    );
  }
}

class DataList{
  final int id;
  final String body;
  DataList({this.body,this.id});
}

class ListViewBuilderExample extends StatefulWidget {
  @override
  _ListViewBuilderExampleState createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {

  List<DataList> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = List<DataList>.generate(20, (index) => DataList(id: index, body: "isi apa saja"));
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${data[index].id} ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(data[index].body)
            ],
          ),
        );
      },
    );
  }
}

class ListViewSeparatedExample extends StatefulWidget {
  @override
  _ListViewSeparatedExampleState createState() => _ListViewSeparatedExampleState();
}

class _ListViewSeparatedExampleState extends State<ListViewSeparatedExample> {
  List<DataList> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = List<DataList>.generate(20, (index) => DataList(id: index, body: "isi apa saja"));
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: data.length,
      itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${data[index].id} ", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(data[index].body)
            ],
          ),
        ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}