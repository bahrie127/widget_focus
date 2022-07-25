import 'package:flutter/material.dart';
import 'package:widget_focus/utils/list_data.dart';

class SampleList extends StatelessWidget {
  SampleList({Key? key}) : super(key: key);

  final List colorCodes = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: Colors.purpleAccent,
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(dataFromApi[index]['url']!),
              title: Text(dataFromApi[index]['text']!),
              subtitle: Text(dataFromApi[index]['subtitle']!),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
              tileColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            );
          },
          itemCount: dataFromApi.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}

/**
 * class SampleListView extends StatelessWidget {
    SampleListView({super.key});
    final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

    final List data = [
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=1',
    'name': 'Saras',
    'address': 'Jepara',
    },
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=2',
    'name': 'Raden Kumbara',
    'address': 'Semarang',
    },
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=3',
    'name': 'Wawan',
    'address': 'Sleman',
    },
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=4',
    'name': 'Mulyadi',
    'address': 'Gunung Kidul',
    },
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=5',
    'name': 'Wulan',
    'address': 'Bantul',
    },
    {
    'photoUrl': 'https://i.pravatar.cc/150?img=6',
    'name': 'Suryono',
    'address': 'Kulonprogo',
    },
    ];

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('Belajar Widget Listview'),
    ),
    body: ListView.separated(
    padding: const EdgeInsets.all(10),
    itemBuilder: (context, index) {
    return ListTile(
    leading: Image.network(data[index]['photoUrl']),
    title: Text(data[index]['name']),
    subtitle: Text(data[index]['address']),
    trailing: IconButton(
    icon: const Icon(Icons.more_vert),
    onPressed: () {},
    ),
    tileColor: Colors.grey[400],
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
    },
    itemCount: data.length,
    separatorBuilder: (context, index) {
    return const Divider(
    thickness: 2,
    color: Colors.grey,
    );
    },
    ),
    );
    }
    }
 */

/**
 * Container(
    height: 130,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(10),
    itemBuilder: (context, index) {
    return CircleAvatar(
    radius: 60,
    // backgroundColor: Colors.red,
    child: CircleAvatar(
    radius: 50,
    backgroundImage:
    NetworkImage('https://i.pravatar.cc/150?img=$index'),
    ),
    );
    },
    itemCount: colorCodes.length,
    ),
    ),
 */

/**
 * class SampleList extends StatelessWidget {
  SampleList({Key? key}) : super(key: key);

  final List colorCodes = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: Colors.purpleAccent,
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(dataFromApi[index]['url']!),
              title: Text(dataFromApi[index]['text']!),
              subtitle: Text(dataFromApi[index]['subtitle']!),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
              tileColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            );
          },
          itemCount: dataFromApi.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
 */

/**
 * class SampleList extends StatelessWidget {
  SampleList({Key? key}) : super(key: key);

  final List colorCodes = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.purpleAccent,
        child: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber[colorCodes[index]],
              height: 100,
            );
          },
          itemCount: colorCodes.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
 */

/**
 * class SampleList extends StatelessWidget {
  SampleList({Key? key}) : super(key: key);

  final List colorCodes = [700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(waku
        color: Colors.purpleAccent,
        child: ListView.builder(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.amber[colorCodes[index]],
              height: 100,
            );
          },
          itemCount: colorCodes.length,
        ),
      ),
    );
  }
}
 */

/**
 *
 * ListView(
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.amber[700],
              height: 100,
            ),
            Container(
              color: Colors.amber[400],
              height: 100,
            ),
            Container(
              color: Colors.amber[100],
              height: 100,
            ),
          ],
        ),
 */
/**
 * ListView(
          reverse: true,
          children: [
            Container(
              color: Colors.amber[700],
              height: 300,
            ),
            Container(
              color: Colors.amber[400],
              height: 300,
            ),
            Container(
              color: Colors.amber[100],
              height: 300,
            ),
          ],
        ),
 */

/**
 * ListView(
          padding: const EdgeInsets.all(15),
          children: [
            Container(
              color: Colors.amber[700],
              height: 300,
            ),
            Container(
              color: Colors.amber[400],
              height: 300,
            ),
            Container(
              color: Colors.amber[100],
              height: 300,
            ),
          ],
        ),
 */

/**
 * ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.amber[700],
              height: 300,
            ),
            Container(
              color: Colors.amber[400],
              height: 300,
            ),
            Container(
              color: Colors.amber[100],
              height: 300,
            ),
          ],
        ),
 */

/**
 * ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.amber[700],
              width: 100,
            ),
            Container(
              color: Colors.amber[400],
              width: 100,
            ),
            Container(
              color: Colors.amber[100],
              width: 100,
            ),
          ],
        ),
 */

/**
 * ListView(
          children: [
            Container(
              color: Colors.amber[700],
              height: 100,
            ),
            Container(
              color: Colors.amber[400],
              height: 100,
            ),
            Container(
              color: Colors.amber[100],
              height: 100,
            ),
          ],
        ),
 */
