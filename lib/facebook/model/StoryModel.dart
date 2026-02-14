class StoryModel {
  String profileImgUrl;
  List<String> storiesImgUrl;

  StoryModel({required this.profileImgUrl, required this.storiesImgUrl});

  static List<StoryModel> example = [


    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/205/500/800",
        "https://picsum.photos/id/206/500/800",
        "https://picsum.photos/id/207/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/women/4.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/208/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/209/500/800",
        "https://picsum.photos/id/210/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/women/6.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/211/500/800",
        "https://picsum.photos/id/212/500/800",
        "https://picsum.photos/id/213/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/men/7.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/214/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/women/8.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/215/500/800",
        "https://picsum.photos/id/216/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/men/9.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/217/500/800",
        "https://picsum.photos/id/218/500/800",
      ],
    ),
    StoryModel(
      profileImgUrl: "https://randomuser.me/api/portraits/women/10.jpg",
      storiesImgUrl: [
        "https://picsum.photos/id/219/500/800",
        "https://picsum.photos/id/220/500/800",
        "https://picsum.photos/id/221/500/800",
      ],
    ),
  ];

}
