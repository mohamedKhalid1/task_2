import 'package:flutter/material.dart';

import '../widgets/create_post_button.dart';
import '../widgets/facebook_item.dart';
import '../widgets/followers_item.dart';
import '../widgets/profile_picture_item.dart';
import '../widgets/shortcut_item.dart';
import '../widgets/todolist_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String route = "ProfileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), // here the desired height
        child: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          leading: Image.asset("assets/images/cyber_royal_logo.png"),
          actions: const [Icon(Icons.notifications_none)],
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.black,
            controller: tabController,
            tabs: const [
              Tab(
                text: 'Manage',
              ),
              Tab(
                text: 'Explore',
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset("assets/images/cyber_royal_cover.png",
                                width: double.infinity),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(color: Colors.white)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.camera_alt,
                                          color: Colors.white),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text(
                                        "Edit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const ProfilePictureItem(
                              iconData: Icons.facebook_outlined,
                            ),
                            const ProfilePictureItem(
                              iconData: Icons.facebook_outlined,
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 10),
                                child: Text(
                                  "Cyber Royale",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FollowersItem(
                                    numberOfFollowers: '7,952',
                                    nameFollowers: 'Facebook Followers >',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FollowersItem(
                                    numberOfFollowers: '10',
                                    nameFollowers: 'instagram Followers >',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CreatePostButton(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FacebookItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Reel',
                                  ),
                                  FacebookItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Story',
                                  ),
                                  FacebookItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Create ad',
                                  ),
                                  FacebookItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Photo',
                                  ),
                                ],
                              ),
                              Text(
                                "Shortcuts",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ShortcutItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Ads',
                                  ),
                                  ShortcutItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: ' invite\nfriends',
                                  ),
                                  ShortcutItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Comments',
                                  ),
                                  ShortcutItem(
                                    imagePath:
                                        'assets/images/cyber_royal_logo.png',
                                    imageTitle: 'Trends',
                                  ),
                                ],
                              ),
                              Text(
                                "To-Do- List",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 10,),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ToDoListItem(
                                        iconData: Icons.camera,
                                        text: '',
                                      ),
                                      Text("2 unread"),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  ToDoListItem(
                                    iconData: Icons.camera,
                                    text: '',
                                  ),
                                  SizedBox(height: 9,),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
