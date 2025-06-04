class TotalRatingModel {
  TotalRatingModel({
    required this.stars1,
    required this.stars2,
    required this.stars3,
    required this.stars4,
    required this.stars5,
    required this.userName,
  });

  final int stars1;
  final int stars2;
  final int stars3;
  final int stars4;
  final int stars5;
  final String userName;
  int get totalStars => stars1 + stars2 + stars3 + stars4 + stars5;
  double get averageStars {
    final totalVotes = totalStars;
    if (totalVotes == 0) return 0.0;

    final totalWeightedStars =
        (stars1 * 1) +
        (stars2 * 2) +
        (stars3 * 3) +
        (stars4 * 4) +
        (stars5 * 5);

    return totalWeightedStars / totalVotes;
  }
  // TotalRatingModel({required this.totalRating, required this.totalReviews});

  // factory TotalRatingModel.fromJson(Map<String, dynamic> json) {
  //   return TotalRatingModel(
  //     totalRating: json['total_rating'] as int,
  //     totalReviews: json['total_reviews'] as int,
  //   );
  // }
  // final int totalRating;
  // final int totalReviews;
}
