import 'package:flutter/material.dart';

class CustomTabBar {
  TabBar commonTabBar({
    required TabController tabController,
    required List<String> tabBarTitles,
    Color activeColors = Colors.deepOrange,
    Color inactiveColors = Colors.grey,
}) => TabBar(
      controller: tabController,
      labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 0),
      labelColor: activeColors,
      unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500
      ),
      unselectedLabelColor: inactiveColors,
      indicator: ShapeDecoration(
          shape: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: activeColors,
                  width: 3,
                  style: BorderStyle.solid
              )
          )
      ),
      indicatorPadding: const EdgeInsets.all(0),
      indicatorWeight: 4.0,
      indicatorColor: Colors.deepOrange,
      tabs: tabBarTitles.map((title) {
        return Tab(child: Center(child: Text(title),),);
      }).toList()
  );
}