import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.teal,
          title: Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.search),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Call'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 2, child: Text('Settings')),
                      PopupMenuItem(value: 3, child: Text('Logout')),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                    ),
                    title: Text('Rishie'),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('11:57 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {

                  if (index == 0){
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  )
                              ) ,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                              ),
                            ),
                            title: Text('Rishie'),
                            subtitle: Text('35m ago'),

                          ),
                        ],
                      ),
                    );
                  } else {
                    return  ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            )
                        ) ,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                        ),
                      ),
                      title: Text('Rishie'),
                      subtitle: Text('35m ago'),

                    );
                  }


                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                    ),
                    title: Text('Rishie'),
                    subtitle: Text(index /2 == 0?  'you missed audio call' : 'call times is 12:05'),
                    trailing: Icon(index/2 == 0?   Icons.phone : Icons.video_call),
                  );
                })
          ],
        ),
      ),
    );
  }
}
