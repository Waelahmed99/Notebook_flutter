import 'package:flutter/material.dart';
import 'package:notebook/widgets/search_item.dart';
import '../widgets/centered_title.dart';
import '../widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  final List<SearchItem> _items = [
    SearchItem(
      author: 'بهاء طاهر',
      cost: 6,
      title: 'سيرة في المنفي',
      type: 'ثقافة عامة',
    ),
    SearchItem(
      author: 'طه حسين',
      cost: 15,
      title: 'سيرة الغائب سيرة الآتي',
      type: 'الأدب العربي',
    ),
    SearchItem(
      author: 'الأدب العربي',
      cost: 9,
      title: 'على هامش السيرة',
      type: 'طه حسين',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6be7e6e7),
      body: Column(
        children: <Widget>[
          SafeArea(child: CenteredTitle('بحث', backgroundColor: Colors.white)),
          separate(10),
          SearchWidget(),
          separate(2),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int idx) {
                return _items[idx];
              },
              itemCount: _items.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget separate(double size) => SizedBox(height: size);
}
