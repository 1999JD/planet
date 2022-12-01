import 'package:flutter/material.dart';
import 'package:planet/ux/page/sign/intro1.dart';
import 'package:planet/ux/page/sign/intro2.dart';
import 'package:planet/ux/page/sign/intro3.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  final _controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageViewDots(
                  currentPage: currentPage,
                  pageId: 0,
                ),
                PageViewDots(
                  currentPage: currentPage,
                  pageId: 1,
                ),
                PageViewDots(
                  currentPage: currentPage,
                  pageId: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageViewDots extends StatefulWidget {
  const PageViewDots(
      {super.key, required this.currentPage, required this.pageId});
  final int currentPage;
  final int pageId;

  @override
  State<PageViewDots> createState() => _PageViewDotsState();
}

class _PageViewDotsState extends State<PageViewDots> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      width: widget.currentPage == widget.pageId ? 40 : 30,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            widget.currentPage == widget.pageId ? Colors.green : Colors.black38,
      ),
    );
  }
}
