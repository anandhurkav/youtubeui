import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtubeui/feedback.dart';
import 'package:youtubeui/screens/home_dtls/all.dart';
import 'package:youtubeui/screens/home_dtls/comedy.dart';
import 'package:youtubeui/screens/home_dtls/cricket.dart';
import 'package:youtubeui/screens/home_dtls/football.dart';
import 'package:youtubeui/screens/home_dtls/gaming.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  backgroundColor: Colors.black,
                  leading: Image.network(
                      'https://i.pinimg.com/236x/40/c5/2a/40c52a0e6eae6e1034ebc03e6cf79299.jpg'),
                  title: const Text(
                    'YouTube',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  actions: [
                    const Icon(Icons.cast),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.notifications),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Center(
                        child: Text('A'),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                  stretch: true,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(40),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 80,
                            child: Center(
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.explore,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Explore',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 20,
                            width: 3,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          TabBar(
                              isScrollable: true,
                              indicatorWeight: 3,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                              tabs: const [
                                Tab(
                                  child: Center(
                                    child: Text(
                                      'All',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text(
                                      'Comedy',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text(
                                      'Cricket',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text(
                                      'FootBall',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text(
                                      'Gaming',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ]),
                          TextButton(
                            onPressed: (){},
                              // onPressed: () => Navigator.of(context).push(
                              //     MaterialPageRoute(
                              //         builder: (context) =>Feedback())),
                              child: const Text(
                                'SEND FEEDBACK',
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                    ),
                  ))
            ];
          },
          body: TabBarView(
              children: [All(), Comedy(), Cricket(), Football(), Gaming()])),
    );
  }
}