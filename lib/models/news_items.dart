// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';

class NewsItem {
  final int id;
  final String imgUrl;

  NewsItem({
    required this.id,
    required this.imgUrl,
  });
}

List<NewsItem> news = [
  NewsItem(
    id: 1,
    imgUrl:
        'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-1/329899451_1144956879500866_3716318260480301041_n.png?_nc_cat=108&ccb=1-7&_nc_sid=596444&_nc_eui2=AeE2XaaSNxR5Y7kXBCPyVEi0LstdwjbwK48uy13CNvArj6ovkJGSCW6NTlm6I47dMffITH9nvv56q91isQbmrd3Y&_nc_ohc=s1cSQu9arzIAX8KMCUf&_nc_ht=scontent-hbe1-1.xx&oh=00_AfAbkD9uLjENCvA6eS3W6MxThxwheyxjlLAaKpo5Nbuy0Q&oe=6583D1C0',
  ),
  NewsItem(
    id: 2,
    imgUrl:
        'https://scontent.fcai1-2.fna.fbcdn.net/v/t1.6435-9/42888276_1012732002243467_8186657899007705088_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=300f58&_nc_eui2=AeFP6s-p9ZQ26sBKiQ0-lcASILwi6rSpHt8gvCLqtKke384LwMEe2mH9xoJhfHWOomtmLEWRgW2Medi7HkP0NLOc&_nc_ohc=J2Va-VTdAmsAX9e-N7H&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDlz9XYtyQHnWhL5nNdEKC8uaN8imBE6aa_gXpgNDjzTw&oe=65A6AB3A',
  ),
  NewsItem(
    id: 3,
    imgUrl:
        'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/333030504_518908236990378_3098292104127359883_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeFnzfljVEMLlDNJEbmvtg8dSIISZM1MFy1IghJkzUwXLVAuzh71L6seOagvY60U8H2FgFuBaqhSXVwtHnw0FJi-&_nc_ohc=XROwa0H0d-MAX8j3uUT&_nc_ht=scontent.fcai1-2.fna&oh=00_AfC9qIrL5-A5qsAoPU9fyYITTvU42fvPfdTUzE2_IfWW6w&oe=65852010',
  ),
  NewsItem(
    id: 4,
    imgUrl:
        'https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/342368809_130233890039251_8699168662586063355_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=783fdb&_nc_eui2=AeGLT7UDPaEhXnDnrnP31jGXmlQpmTIfyZiaVCmZMh_JmAJu0OORtSpbda6hLSji1awhve8kOfI0dWwE9Arl5NAz&_nc_ohc=77SX4fZWMQUAX-RiVVu&_nc_ht=scontent.fcai1-2.fna&oh=00_AfDiw57FPEA9op2lIRZmgoKFUWsouU3Vb2jMXVxSKxBW2A&oe=65846804',
  ),
];
