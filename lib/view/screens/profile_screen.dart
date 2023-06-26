import 'package:flutter/material.dart';
import '../../constants/constants.dart';
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
        backgroundColor: Colors.white,
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
                unselectedLabelStyle: const TextStyle(
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
                            const Positioned(
                              bottom: -30,
                              left: 100,
                              child: ProfilePictureItem(
                                iconData: Icons.facebook_outlined,
                              ),
                            ),
                            const Positioned(
                              bottom: -30,
                              left: 10,
                              child: ProfilePictureItem(
                                iconData: Icons.facebook_outlined,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Constants.cPadding),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Constants.cPadding / 2),
                                child: Text(
                                  "Cyber Royale",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(Constants.cPadding),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    FollowersItem(
                                      numberOfFollowers: '7,952',
                                      nameFollowers: 'Facebook Followers >',
                                    ),
                                    VerticalDivider(
                                      color: Colors.black12,
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
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Constants.cPadding),
                              child: CreatePostButton(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FacebookItem(
                                    imagePath: 'assets/images/ads.png',
                                    imageTitle: 'Reel',
                                  ),
                                  FacebookItem(
                                    imagePath: 'assets/images/ads.png',
                                    imageTitle: 'Story',
                                  ),
                                  FacebookItem(
                                    imagePath: 'assets/images/ads.png',
                                    imageTitle: 'Create ad',
                                  ),
                                  FacebookItem(
                                    imagePath: 'assets/images/ads.png',
                                    imageTitle: 'Photo',
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.teal[50],
                              thickness: 8,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: Constants.cPadding,
                                  top: Constants.cPadding,
                                  bottom: Constants.cPadding),
                              child: Text(
                                "Shortcuts",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ShortcutItem(
                                  imagePath: 'assets/images/invitation.png',
                                  imageTitle1: 'Ads',
                                  imageTitle2: '',
                                ),
                                ShortcutItem(
                                  imagePath: 'assets/images/invitation.png',
                                  imageTitle1: 'invite',
                                  imageTitle2: 'friends',
                                ),
                                ShortcutItem(
                                  imagePath: 'assets/images/invitation.png',
                                  imageTitle1: 'Comments',
                                  imageTitle2: '',
                                ),
                                ShortcutItem(
                                  imagePath: 'assets/images/invitation.png',
                                  imageTitle1: 'Trends',
                                  imageTitle2: '',
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.teal[50],
                              thickness: 8,
                            ),
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: Constants.cPadding),
                              child: Text(
                                "To-Do- List",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Column(
                              children: [
                                ToDoListItem(
                                  iconData: Icons.chat,
                                  text1: 'Comments',
                                  text2: '2 unread',
                                ),
                                ToDoListItem(
                                  iconData: Icons.check_box,
                                  text1: 'Tasks',
                                  text2: '',
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
