import 'package:flutter/material.dart';

class GojekAppBar extends AppBar {
  GojekAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: _buildGojekAppbar());

  static Widget _buildGojekAppbar() {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/img_gojek_logo.png",
            height: 50.0,
            width: 100.0,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 28.0,
                  width: 28.0,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(100.0))),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.local_bar,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: Color(0x50ffd180),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Text(
                    "1.998 poin",
                    style: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
