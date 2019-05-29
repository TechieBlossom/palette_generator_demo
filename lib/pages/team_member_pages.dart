import 'package:flutter/material.dart';
import 'package:our_team/model/member.dart';
import 'package:our_team/resources/sizes.dart';
import 'package:our_team/resources/text_styles.dart';
import 'package:our_team/widgets/member_widget.dart';

class TeamMembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_backspace, color: Colors.black),
        title: Text(
          "Our Team",
          style: appBarTextStyle,
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 10,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return MemberWidget(
                    member: members[index],
                    compactMode: false,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: size_20,
                  );
                },
                itemCount: members.length),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
