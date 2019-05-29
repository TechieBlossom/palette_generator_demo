import 'package:flutter/material.dart';
import 'package:our_team/model/member.dart';
import 'package:our_team/resources/sizes.dart';
import 'package:our_team/resources/text_styles.dart';
import 'package:our_team/widgets/clipped_image.dart';
import 'package:our_team/widgets/name_widget.dart';
import 'package:palette_generator/palette_generator.dart';

class MemberDetailsPage extends StatelessWidget {
  final Member member;
  final PaletteGenerator palette;

  MemberDetailsPage({this.member, this.palette});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            member.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: palette.darkMutedColor.color.withOpacity(0.8),
          ),
          Positioned(
            top: size_60,
            right: size_20,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: size_40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: size_40, right: size_20, bottom: size_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size_120,
                ),
                NameWidget(
                  name: member.name,
                  style: nameBigStyle.copyWith(color: palette.lightMutedColor.color),
                ),
                SizedBox(height: size_8),
                Text(member.occupation,
                    style: descriptionBoldStyle.copyWith(color: palette.lightMutedColor.color)),
                SizedBox(height: size_20),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(member.description, style: descriptionStyle),
                  ),
                ),
                SizedBox(height: size_20),
                Text("Our Team Members".toUpperCase(), style: descriptionBoldStyle),
                SizedBox(height: size_8),
                Container(
                  height: size_100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClippedImage(compactMode: true, imagePath: members[index].imagePath);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: size_12);
                      },
                      itemCount: members.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
