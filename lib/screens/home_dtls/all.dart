import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class All extends StatelessWidget {
  All({super.key});

  List mainimages1 = [
    'https://e0.365dm.com/22/10/768x432/skysports-liverpool-manchester-city_5933029.jpg',
    'https://i.ytimg.com/vi/OM1Y8LBHraY/maxresdefault.jpg',
    'https://i.ytimg.com/vi/pf1nGmL-eLo/maxresdefault.jpg'
  ];
  List profileimage1 = [
    'https://seeklogo.com/images/L/liverpool-fc-logo-027452BE2B-seeklogo.com.jpg',
    'https://upload.wikimedia.org/wikipedia/en/4/4f/Karikku_Media_Logo.png',
    'https://pbs.twimg.com/profile_images/1297052336221634561/jV2ESe6r_400x400.jpg',
  ];
  List maintest1 = [
    "Liverpool 1-0 Man city: Mohammed Salah's goal...",
    'BHARATI APARTMENTS|Final Part \n| Karikku|Comedy',
    'Ball droping from Dam'
  ];
  List subtext1 = [
    'LiverpoolFC  5 lack views 1 day ago',
    'karikku  37lack views 15-Oct-2022',
    'Strell In Malayalam 13lack views 18-06-2019'
  ];
  List time1 = ['5:45', '17:30', '15:53'];

  List shorts = [
    'https://i.pinimg.com/236x/95/8c/ee/958ceea5a51394bfdaa778813e455584.jpg',
    'https://i.pinimg.com/236x/86/ce/87/86ce87bf98470b2a838dbb9ce9b3e25d.jpg',
    'https://i.pinimg.com/236x/8a/09/6a/8a096abae823e33507713a3f8608147a.jpg',
    'https://i.pinimg.com/236x/42/43/55/42435579c96745879d8e847271739303.jpg',
  ];

  List shortsname = [
    'Dance on the room',
    'Song Cover',
    'Deadpool movie shorts',
    '5 Transictions mistakes'
  ];
  List shortsviews = [
    '1.4 crore views',
    '11 lakh views',
    '5 crore views',
    '7 lakhs views'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView(
                children: List.generate(mainimages1.length, (index) {
                  return SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(mainimages1[index]))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 20,
                                width: 50,
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    time1[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        NetworkImage(profileimage1[index]),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maintest1[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      subtext1[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              height: 320,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/236x/71/99/75/719975d58c8cff1200450a86b01a00a4.jpg'))),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(shorts.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 260,
                            width: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      shorts[index],
                                    ))),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    shortsname[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    shortsviews[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: const CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/236x/73/45/dd/7345ddc6d560fbe3b19a612550eeba9d.jpg'),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Mr.Beast',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'SUBSCRIBE',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Text(
                                  '2 days ago',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Do You Need GiveAway?',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://i.pinimg.com/236x/25/ef/28/25ef28af4c0bf056fd88223c23fc1eca.jpg'))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Center(
                            child: Text(
                              'YES',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://i.pinimg.com/236x/90/03/63/9003634799f2d0fcc03e520b4f227b38.jpg'))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Center(
                            child: Text(
                              'NO',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: const [
                        Text(
                          '8.1 lakh views',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '22L',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.thumb_down_alt_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.chat_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '902',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView(
                children: List.generate(mainimages1.length, (index) {
                  return SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(mainimages1[index]))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 20,
                                width: 50,
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    time1[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        NetworkImage(profileimage1[index]),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maintest1[index],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      subtext1[index],
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}