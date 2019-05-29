import 'package:flutter/widgets.dart';
import 'package:our_team/resources/assets.dart';

class Member {
  final String name;
  final String occupation;
  final String imagePath;
  final String description;

  Member(
      {@required this.name,
      @required this.occupation,
      @required this.imagePath,
      @required this.description});
}

Member firstMember = Member(
    name: "Amanda Minicucci",
    occupation: "CEO & Founder",
    imagePath: Assets.AMANDA_MINICUCCI,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin tortor in mauris volutpat vestibulum. Duis ante purus, luctus ac mauris vitae, interdum tristique elit. Quisque libero est, gravida in nisi sed, sagittis aliquam ante. Etiam pretium quis risus quis pretium. Maecenas ultricies eu sem eget ullamcorper. Fusce cursus tempor ligula at consequat.");

Member secondMember = Member(
    name: "Gena Sedgwick",
    occupation: "Co-Founder",
    imagePath: Assets.GENA_SEDWICK,
    description: "Morbi vestibulum vehicula arcu blandit rhoncus. In non dictum ex. In hac habitasse platea dictumst. Phasellus elementum finibus tortor eget accumsan. Morbi magna erat, hendrerit quis varius a, consequat eu nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse finibus lacus eget tortor tristique, et finibus nulla rhoncus. Vivamus sit amet sodales lectus. Etiam posuere fringilla facilisis. Donec eget nisl massa. Sed id justo tortor. In laoreet nunc a vulputate lobortis. Cras bibendum facilisis arcu sit amet egestas. Donec finibus dui eget dolor tempus ullamcorper. Suspendisse auctor, velit vel consequat tincidunt, elit odio tempus diam, quis tempor orci elit eu mauris. Donec tempor vel elit sed tempor.");

Member thirdMember = Member(
    name: "Jeenie Duhe",
    occupation: "Chief Technical Officer",
    imagePath: Assets.JEENIE_DUHE,
    description: "Vivamus dictum velit finibus blandit porta. Fusce posuere, diam sed condimentum feugiat, sem dui feugiat augue, ac lacinia nulla nisi non sapien. Sed sed diam non nisl eleifend commodo condimentum ac ipsum. Suspendisse nec ligula vestibulum, auctor purus vitae, gravida mi. In malesuada ipsum commodo, tristique enim et, malesuada est. Maecenas id congue leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras fermentum, nulla ut placerat aliquam, leo mi sollicitudin augue, ac molestie augue tortor in enim. Suspendisse in tincidunt sapien. Quisque quis nisl auctor erat sagittis fringilla. Vestibulum vel mollis nunc. Proin nec ligula ut turpis suscipit viverra ac at neque. Curabitur ullamcorper erat sem, eu pharetra urna efficitur in");

Member fourthMember = Member(
    name: "Kenneth Missliweck",
    occupation: "Chief Marketing Officer",
    imagePath: Assets.KENNETH_MISSLIWECK,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In purus diam, luctus nec ipsum sit amet, placerat dignissim nibh. Etiam sed tincidunt augue, eget pellentesque ligula. Curabitur quis mauris dui. Aliquam ultricies, arcu non sodales dictum, nisi dui volutpat ex, facilisis pretium diam tellus iaculis diam. Nullam mattis dui vel dictum hendrerit. Curabitur id semper odio. Pellentesque nec convallis quam. Integer semper tempor eros, at porttitor justo consequat tincidunt. Donec sagittis cursus gravida. Donec non dignissim leo. Aenean consectetur neque eget diam porta, quis feugiat est volutpat. Maecenas nec elementum dui, at porttitor odio. Vivamus mattis finibus felis, porta sollicitudin eros porta a.");

Member fiveMember = Member(
    name: "Michelle Chong",
    occupation: "Human Resource Manager",
    imagePath: Assets.MICHELLE_CHONG,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla consequat nisi ipsum, quis tempor nulla maximus sit amet. Etiam enim est, bibendum fermentum auctor id, efficitur sit amet neque. Sed sodales metus vitae tortor accumsan vestibulum. Integer tristique, nunc sed placerat aliquam, urna odio scelerisque leo, nec suscipit arcu leo id elit. In ultricies vel mauris vitae commodo. Donec ultricies fermentum velit, ultricies tristique justo sagittis id. Aenean lacinia nibh eget justo maximus, ut rhoncus erat varius. Curabitur auctor tellus blandit, suscipit nisl eu, fermentum est. Phasellus id neque sit amet lectus scelerisque posuere. Donec quis nunc dolor. Morbi sit amet nulla metus. Etiam scelerisque diam sed pharetra tincidunt. Suspendisse ut turpis laoreet, elementum dui et, consectetur orci. Vivamus tempus finibus augue sit amet accumsan. Donec consequat eros nec sem placerat, non laoreet elit venenatis.");

Member sixMember = Member(
    name: "Trish Ammons",
    occupation: "CEO & Founder",
    imagePath: Assets.TRISH_AMMONS,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus velit ex, iaculis sit amet dui consequat, viverra elementum felis. Nullam dolor dolor, placerat nec varius vitae, lacinia vel quam. Ut at rhoncus lorem. Morbi vitae felis viverra, dictum nibh nec, ullamcorper urna. Nulla vulputate finibus justo nec ullamcorper. Donec non felis pellentesque, bibendum velit ac, lacinia augue. Nullam imperdiet lacus vitae vulputate pellentesque. Donec non nunc vitae odio fermentum rhoncus.");

List<Member> members = [firstMember, secondMember, thirdMember, fourthMember, fiveMember, sixMember];
