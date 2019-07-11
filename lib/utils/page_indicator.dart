import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  PageIndicator(this.currentPage, this.pageCount);

  _indicator(bool isActive) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isActive ? Colors.white : Colors.white12,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 0.2),
                  blurRadius: 2)
            ],
          ),
        ),
      ),
    );
  }

  _buildIndicator() {
    List<Widget> indicatorList = [];
    for (int i = 0; i < pageCount; i++) {
      indicatorList
          .add(i == currentPage ? _indicator(true) : _indicator(false));
      return indicatorList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: _buildIndicator(),
    );
  }
}
