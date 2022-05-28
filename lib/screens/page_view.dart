import 'package:flutter/material.dart';
import 'package:page_view_tut/widgets/single_page_view.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _controller = PageController(initialPage: 0);
  // int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PageView Builder'),
      ),
      body: PageView.builder(
          itemCount: 20,
          // onPageChanged: (position) {
          //   _currentPage = position;
          // },
          controller: _controller,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, position) => const SinglePageView()),
    );
  }
}
