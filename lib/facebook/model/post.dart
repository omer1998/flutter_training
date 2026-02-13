class Post {
  final String userName;
  final String profileImageUrl;
  final String postImageUrl;
  final DateTime publishedAt;

  Post({
    required this.postImageUrl,
    required this.profileImageUrl,
    required this.userName,
    required this.publishedAt,
  });

  static final DateTime _now = DateTime.now();

  static List<Post> posts = [
    Post(
      userName: "Omar Nawar",
      profileImageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      postImageUrl: "https://picsum.photos/id/1011/500/500",
      publishedAt: _now.subtract(Duration(minutes: 5)),
    ),
    Post(
      userName: "Sarah Ahmed",
      profileImageUrl: "https://randomuser.me/api/portraits/women/2.jpg",
      postImageUrl: "https://picsum.photos/id/1012/500/500",
      publishedAt: _now.subtract(Duration(minutes: 30)),
    ),
    Post(
      userName: "Ali Hassan",
      profileImageUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      postImageUrl: "https://picsum.photos/id/1013/500/500",
      publishedAt: _now.subtract(Duration(hours: 1)),
    ),
    Post(
      userName: "Zainab Kareem",
      profileImageUrl: "https://randomuser.me/api/portraits/women/4.jpg",
      postImageUrl: "https://picsum.photos/id/1014/500/500",
      publishedAt: _now.subtract(Duration(hours: 2)),
    ),
    Post(
      userName: "Mustafa Alaa",
      profileImageUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      postImageUrl: "https://picsum.photos/id/1015/500/500",
      publishedAt: _now.subtract(Duration(hours: 4)),
    ),
    Post(
      userName: "Layla Mohammed",
      profileImageUrl: "https://randomuser.me/api/portraits/women/6.jpg",
      postImageUrl: "https://picsum.photos/id/1016/500/500",
      publishedAt: _now.subtract(Duration(hours: 6)),
    ),
    Post(
      userName: "Hussein Jabbar",
      profileImageUrl: "https://randomuser.me/api/portraits/men/7.jpg",
      postImageUrl: "https://picsum.photos/id/1018/500/500",
      publishedAt: _now.subtract(Duration(hours: 10)),
    ),
    Post(
      userName: "Fatima Saad",
      profileImageUrl: "https://randomuser.me/api/portraits/women/8.jpg",
      postImageUrl: "https://picsum.photos/id/1020/500/500",
      publishedAt: _now.subtract(Duration(hours: 15)),
    ),
    Post(
      userName: "Ahmed Yousif",
      profileImageUrl: "https://randomuser.me/api/portraits/men/9.jpg",
      postImageUrl: "https://picsum.photos/id/1024/500/500",
      publishedAt: _now.subtract(Duration(days: 1)),
    ),
    Post(
      userName: "Mariam Ali",
      profileImageUrl: "https://randomuser.me/api/portraits/women/10.jpg",
      postImageUrl: "https://picsum.photos/id/1025/500/500",
      publishedAt: _now.subtract(Duration(days: 1, hours: 5)),
    ),
    Post(
      userName: "Noor Khalid",
      profileImageUrl: "https://randomuser.me/api/portraits/men/11.jpg",
      postImageUrl: "https://picsum.photos/id/1027/500/500",
      publishedAt: _now.subtract(Duration(days: 2)),
    ),
    Post(
      userName: "Rasha Adel",
      profileImageUrl: "https://randomuser.me/api/portraits/women/12.jpg",
      postImageUrl: "https://picsum.photos/id/1031/500/500",
      publishedAt: _now.subtract(Duration(days: 2, hours: 6)),
    ),
    Post(
      userName: "Yasser Mahmoud",
      profileImageUrl: "https://randomuser.me/api/portraits/men/13.jpg",
      postImageUrl: "https://picsum.photos/id/1033/500/500",
      publishedAt: _now.subtract(Duration(days: 3)),
    ),
    Post(
      userName: "Huda Salman",
      profileImageUrl: "https://randomuser.me/api/portraits/women/14.jpg",
      postImageUrl: "https://picsum.photos/id/1035/500/500",
      publishedAt: _now.subtract(Duration(days: 3, hours: 4)),
    ),
    Post(
      userName: "Karim Nabil",
      profileImageUrl: "https://randomuser.me/api/portraits/men/15.jpg",
      postImageUrl: "https://picsum.photos/id/1037/500/500",
      publishedAt: _now.subtract(Duration(days: 4)),
    ),
    Post(
      userName: "Aya Tariq",
      profileImageUrl: "https://randomuser.me/api/portraits/women/16.jpg",
      postImageUrl: "https://picsum.photos/id/1040/500/500",
      publishedAt: _now.subtract(Duration(days: 5)),
    ),
    Post(
      userName: "Sami Khalaf",
      profileImageUrl: "https://randomuser.me/api/portraits/men/17.jpg",
      postImageUrl: "https://picsum.photos/id/1041/500/500",
      publishedAt: _now.subtract(Duration(days: 6)),
    ),
    Post(
      userName: "Dina Fares",
      profileImageUrl: "https://randomuser.me/api/portraits/women/18.jpg",
      postImageUrl: "https://picsum.photos/id/1043/500/500",
      publishedAt: _now.subtract(Duration(days: 7)),
    ),
    Post(
      userName: "Qasim Raad",
      profileImageUrl: "https://randomuser.me/api/portraits/men/19.jpg",
      postImageUrl: "https://picsum.photos/id/1050/500/500",
      publishedAt: _now.subtract(Duration(days: 8)),
    ),
    Post(
      userName: "Zahra Majid",
      profileImageUrl: "https://randomuser.me/api/portraits/women/20.jpg",
      postImageUrl: "https://picsum.photos/id/1052/500/500",
      publishedAt: _now.subtract(Duration(days: 10)),
    ),
  ];
}
