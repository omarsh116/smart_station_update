class CategoriesModel {
  int? categoriesId;
  String? categoriesName;
  String? categoriesDescription;
  String? descriptionImage;

  CategoriesModel(
      {this.categoriesId,
        this.categoriesName,
        this.categoriesDescription,
        this.descriptionImage});



  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesDescription = json['categories_description'];
    descriptionImage = json['description_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_description'] = this.categoriesDescription;
    data['description_image'] = this.descriptionImage;
    return data;
  }
}