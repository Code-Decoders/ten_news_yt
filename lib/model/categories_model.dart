class CategoryModel{
  final name,imageUrl;

  CategoryModel({this.name, this.imageUrl});
}

List<CategoryModel> categories = [
  CategoryModel(name: "Top stories", imageUrl: "assets/images/categories/topnews.jpg"),
  CategoryModel(name: "India", imageUrl: "assets/images/categories/india.jpg"),
  CategoryModel(name: "World", imageUrl: "assets/images/categories/world.jpg"),
  CategoryModel(name: "Business", imageUrl: "assets/images/categories/business.jpg"),
  CategoryModel(name: "Sports", imageUrl: "assets/images/categories/sports.jpg"),
  CategoryModel(name: "Cricket", imageUrl: "assets/images/categories/cricket.jpg"),
  CategoryModel(name: "Education", imageUrl: "assets/images/categories/education.jpg"),
  CategoryModel(name: "Entertainment", imageUrl: "assets/images/categories/entertainment.jpg"),
  CategoryModel(name: "Lifestyle", imageUrl: "assets/images/categories/lifestyle.jpg"),
  CategoryModel(name: "Health and Fitness", imageUrl: "assets/images/categories/health_fitness.jpg"),
  CategoryModel(name: "Books", imageUrl: "assets/images/categories/books.jpg"),
  CategoryModel(name: "Its Viral", imageUrl: "assets/images/categories/its_viral.jpg"),
];