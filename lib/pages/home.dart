import 'package:flutter/material.dart';
import 'package:task_apps/pages/project.dart';
import 'package:task_apps/theme/style.dart';
import 'package:task_apps/widgets/avatar_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade50,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          elevation: 8,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromRGBO(158, 158, 158, 1),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.house,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_sharp), label: "files"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined), label: "list"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "calendar"),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: const [_Body(), _Body(), ProjectPage(), ProjectPage()],
        ));
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8 * 3),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 8 * 2,
              ),
              const _Appbar(),
              const SizedBox(
                height: 8 * 3,
              ),
              Text(
                "Tasks for today:",
                style: titleStyle(),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "5 available",
                    style: subtitleStyle(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8 * 3),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8 * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Last connections",
                      style: subtitleStyle(),
                    ),
                    Text("See all", style: bodyStyle())
                  ],
                ),
              ),
              const SizedBox(
                height: 8 * 2,
              ),
              const AvatarRow(),
            ]),
          ),
          const SizedBox(
            height: 8 * 3,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8 * 3, vertical: 8 * 4),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Active projects", style: subtitleStyle()),
                    Text("See all", style: bodyStyle())
                  ],
                ),
                const SizedBox(
                  height: 8 * 2,
                ),
                const _CardTile(),
                const _CardTile(),
                const _CardTile(),
                const _CardTile(),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class _CardTile extends StatelessWidget {
  const _CardTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8 * 2),
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Numero 10", style: bodyStyle()),
              Text("4h", style: bodyStyle())
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Blog and social post",
            style: subtitleStyle(),
          ),
          const SizedBox(
            height: 8 * 2,
          ),
          Text(
            "Blog and social post",
            style: bodyStyle2(),
          )
        ],
      ),
    );
  }
}

class _Appbar extends StatelessWidget {
  const _Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.grey.shade300, shape: BoxShape.circle),
          child: Image.network(
            "https://picsum.photos/200/300?random=1",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 8 * 2,
        ),
        Expanded(
            child: Text(
          "Hi, Joseph!",
          style: bodyStyle2(),
        )),
        const Icon(
          Icons.notifications_active,
          size: 28,
        )
      ],
    );
  }
}
