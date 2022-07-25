import 'package:flutter/material.dart';

class SampleComponent extends StatelessWidget {
  const SampleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.grey,
      width: 100,
      child: Column(
        children: [
          _sampleBox(),
          const Spacer(
            flex: 1,
          ),
          _sampleBox(),
          const Spacer(
            flex: 4,
          ),
          _sampleBox(),
        ],
      ),
    ));
  }

  Widget _sampleBox() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.black26,
      ),
    );
  }
}
/**
 * Column(
        children: [
          _sampleBox(),
          const Spacer(
            flex: 1,
          ),
          _sampleBox(),
          const Spacer(
            flex: 4,
          ),
          _sampleBox(),
        ],
      ),
 */

/**
 * Column(
        children: [
          SizedBox(height: 100, width: 200, child: _sampleBox()),
          Flexible(fit: FlexFit.tight, flex: 2, child: _sampleBox()),
          Flexible(fit: FlexFit.tight, flex: 4, child: _sampleBox()),
        ],
      ),
 */

/**
 * Column(
        children: [
          Flexible(fit: FlexFit.tight, flex: 2, child: _sampleBox()),
          Flexible(fit: FlexFit.tight, flex: 2, child: _sampleBox()),
          Flexible(fit: FlexFit.tight, flex: 4, child: _sampleBox()),
        ],
      ),
 */

/**
 * Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.grey,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(flex: 1, child: _sampleBox()),
          SizedBox(
            height: 100,
            child: _sampleBox(),
          ),
          Expanded(flex: 3, child: _sampleBox()),
        ],
      ),
    ));
 */

/**
 * Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          _sampleBox(),
          SizedBox(
            height: 100,
            child: _sampleBox(),
          ),
          _sampleBox(),
        ],
      ),
 */
/**
 * Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _sampleBox(),
          SizedBox(
            height: 100,
            child: _sampleBox(),
          ),
          _sampleBox(),
        ],
      ),
 */

/**
 * Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _sampleBox(),
          _sampleBox(),
          _sampleBox(),
        ],
      ),
 */

/**
 * Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          color: Colors.purple,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
              'halo aku adalah padding yang sedang dijadikan contoh sama mas bahri'),
        ),
      ),
    );
  }
 */
