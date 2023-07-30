import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 16.0,
        title: Row(
          children: const [
             CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/pp.jfif'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions:  [
          IconButton(
            icon: const CircleAvatar(
              radius: 17.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 17.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[350],
                ),
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 25.0,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6,
                        ),
                        child: Icon(
                          Icons.search,
                          size: 19.0,
                        ),
                      ),
                      SizedBox(
                        width: 13.0,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 105.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20.0,
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // To make List View
  //  1. Build item
  // 2. Build list
  // 3. add item to list


  //arrow function
  Widget buildChatItem() => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage('assets/images/pp.jfif'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 2.5,
              end: 2.5,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      const SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Marwan Mohamed AbdelMonem rashad Abdelwahab',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Hello my name is Marwan Rashad what are you doing tonight',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const Text(
                  '10:00 pm',
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/pp.jfif'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 2.5,
                end: 2.5,
              ),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Marwan Mohamed Rashad',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}
