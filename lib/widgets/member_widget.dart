import 'package:flutter/material.dart';
import 'package:our_team/model/member.dart';
import 'package:our_team/pages/member_details_page.dart';
import 'package:our_team/resources/sizes.dart';
import 'package:our_team/resources/text_styles.dart';
import 'package:palette_generator/palette_generator.dart';

import 'clipped_image.dart';
import 'name_widget.dart';

class MemberWidget extends StatelessWidget {
  final Member member;
  final bool compactMode;

  MemberWidget({this.member, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _generatePalette(context, member.imagePath).then((_palette) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MemberDetailsPage(member: member, palette: _palette)));
        });
      },
      child: Row(
        children: <Widget>[
          ClippedImage(imagePath: member.imagePath, compactMode: compactMode),
          SizedBox(width: size_20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NameWidget(name: member.name, style: nameStyle),
              SizedBox(height: size_8),
              Text(member.occupation, style: occupationStyle),
            ],
          )
        ],
      ),
    );
  }

  Future<PaletteGenerator> _generatePalette(context, String imagePath) async {
    PaletteGenerator _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
        size: Size(110, 150), maximumColorCount: 20);

    return _paletteGenerator;
  }
}
