import 'package:flutter/material.dart';
import 'package:task_2/constants.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          centerTitle: true,
          leading: Image.asset("assets/images/cyber_royal_logo.png"),
          actions: const [Icon(Icons.notifications_none)],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                indicatorWeight: 2,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Text("Manage", style: TextStyle(fontSize: 16)),
                  ),
                  Tab(
                    text: 'Explore',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
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
                            Positioned(
                              bottom: -30,
                              left: 100,
                              child: const ProfilePictureItem(
                                iconData: Icons.facebook_outlined,
                              ),
                            ),
                            Positioned(
                              bottom: -30,
                              left: 10,
                              child: const ProfilePictureItem(
                                iconData: Icons.facebook_outlined,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Constants.cPadding),
                              child: Text(
                                "Cyber Royale",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(Constants.cPadding),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    FollowersItem(
                                      numberOfFollowers: '7,952',
                                      nameFollowers: 'Facebook Followers >',
                                    ),
                                    VerticalDivider(
                                      color: Colors.black26,
                                      thickness: 2,
                                    ),
                                    FollowersItem(
                                      numberOfFollowers: '10',
                                      nameFollowers: 'instagram Followers >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Constants.cPadding),
                              child: CreatePostButton(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                            ),
                            Divider(
                              color: Colors.teal[50],
                              thickness: 8,
                            ),
                            Text(
                              "Shortcuts",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ShortcutItem(
                                  imagePath: 'assets/images/short.png',
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
                                  imagePath: 'assets/images/img.png',
                                  imageTitle: 'Trends',
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.teal[50],
                              thickness: 8,
                            ),
                            Text(
                              "To-Do- List",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                ToDoListItem(
                                  iconData: Icons.chat,
                                  text: '2 read',
                                ),
                                ToDoListItem(
                                  iconData: Icons.check_box,
                                  text: '',
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
