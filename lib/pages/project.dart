import 'package:flutter/material.dart';
import 'package:task_apps/theme/style.dart';
import 'package:task_apps/widgets/avatar_row.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8 * 3),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8 * 4,
              ),
              Text("Messaging ID", style: titleStyle()),
              const SizedBox(
                height: 8 * 4,
              ),
              const _Progress(),
              const SizedBox(
                height: 8 * 4,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _InfoPanel(
                      title: "17",
                      subtitle: "Task finished",
                      icon: Icons.task,
                    ),
                    _InfoPanel(
                        title: "3,2",
                        subtitle: "Tracked hours",
                        icon: Icons.timer_rounded),
                  ]),
              const SizedBox(
                height: 8 * 4,
              ),
              Text("Overview", style: subtitleStyle()),
              const SizedBox(
                height: 8,
              ),
              Text(
                  "Messaging ID framework development for the marketing  branch and the publicity bureau and implementd a draft on the framework",
                  textAlign: TextAlign.justify,
                  style: bodyStyle()),
              const SizedBox(
                height: 8 * 4,
              ),
              Text("Member connected", style: subtitleStyle()),
              const SizedBox(
                height: 8 * 2,
              ),
              const AvatarRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  const _Progress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Your daily plan",
            style: subtitleStyle(),
          ),
          Text(
            "70%",
            style: subtitleStyle(),
          )
        ],
      ),
      const SizedBox(
        height: 8 * 2,
      ),
      Stack(children: const [
        Divider(
          thickness: 8,
          color: Colors.grey,
        ),
        Divider(
          thickness: 8,
          endIndent: 60,
          color: Colors.black,
        ),
      ]),
      const SizedBox(
        height: 8 * 2,
      ),
      Text(
        "4 of 6 completed",
        style: bodyStyle(),
      ),
    ]);
  }
}

class _InfoPanel extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _InfoPanel({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8 * 2, horizontal: 8 * 3),
      decoration: BoxDecoration(
          color: Colors.amber.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle()),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                icon,
                size: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                subtitle,
                style: bodyStyle(),
              )
            ],
          )
        ],
      ),
    );
  }
}
