import 'package:flutter/material.dart';
//chp 6 17:
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('whatsapp'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                  Tab(
                    child: Text('Media'),
                  ),
                ]
            ),
            actions:  [
              const  Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,)  =>const [
                    PopupMenuItem(
                      value: '1' ,
                       child: Text('New group')
                    ),
                    PopupMenuItem(
                        value: '2' ,
                        child: Text('New broadcast')
                    ),
                    PopupMenuItem(
                        value: '3' ,
                        child: Text('linked device')
                    ),
                    PopupMenuItem(
                        value: '4' ,
                        child: Text('Starred msgs')
                    ),
                    PopupMenuItem(
                        value: '5' ,
                        child: Text('Setting')
                    ),

                  ]
              ),
              const SizedBox(width: 10,)
            ],
          ),
          body:  TabBarView(
              children: [
                const Text('camera'),
                ListView.builder(
                  itemCount: 20,
                    itemBuilder: (context, index){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: Text('john'),
                        subtitle: Text('where are you?'),
                        trailing: Text('6:36 PM'),
                      );
                    }
                ),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  //chp 5 29:31
                  return  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3
                        )
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('john'),
                    subtitle: const Text('5 minutes ago'),
                  );
                }
            ),
                ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index){
                      return  ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:  NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        title: const Text('sajo'),
                        subtitle: Text(index /1 == 2? 'you missed audio call' :'call times  is 6:33'),
                        trailing: Icon(index /1 == 2? Icons.phone : Icons.video_call),
                      );
                    }
                ),
                const Text('media'),
              ]
          ),
        )
    );
  }
}
