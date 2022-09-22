import 'package:flutter/material.dart';
class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://img.olympicchannel.com/images/image/private/t_16-9_1280/primary/ix5rdbcfnwifaf3oeozv"),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "chats"
              , style: TextStyle(
                color: Colors.black),)
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
          child:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300]
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                      "search"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index) => buildChatItem(),
                separatorBuilder:(context,index) =>SizedBox(
                  width: 10,
                ) ,
                itemCount:10,),
            ),
            SizedBox(
              height: 20,
            ),
           ListView.separated(
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
                itemBuilder:(context,index) => buildStoryItem(),
                separatorBuilder:(context,index) =>SizedBox(
                  height: 20,
                ) ,
                itemCount:9,),
          ],
        ),
      ),
      ),
    );
  }

// arrow function
  // build list
  //add item list
  // add item to list
  Widget buildChatItem() => Container(
    width: 60,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://img.olympicchannel.com/images/image/private/t_16-9_1280/primary/ix5rdbcfnwifaf3oeozv"),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3, end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],


        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Ahmed Omar",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,),
      ],
    ),
  );
  Widget buildStoryItem() =>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://img.olympicchannel.com/images/image/private/t_16-9_1280/primary/ix5rdbcfnwifaf3oeozv"),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3, end: 3,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.red,
            ),
          ),
        ],


      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ahmed omar",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "hello ahmed ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                    "02:00 pm")
              ],
            ),
          ],
        ),
      ),
    ],
  );


}