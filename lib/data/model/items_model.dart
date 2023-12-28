class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsDescription;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  int? itemsPrice;
  int? itemsDiscount;
  String? itemsDate;
  int? itemsCat;
  int? categoriesId;
  String? categoriesName;
  String? categoriesDescription;
  String? descriptionImage;
  int ? favorite;
  int? itemsPriceDiscount;

  ItemsModel(
      {this.itemsId,
        this.itemsName,
        this.itemsDescription,
        this.itemsImage,
        this.itemsCount,
        this.itemsActive,
        this.itemsPrice,
        this.itemsDiscount,
        this.itemsDate,
        this.itemsCat,
        this.categoriesId,
        this.categoriesName,
        this.categoriesDescription,
        this.descriptionImage,
        this.favorite,
        this.itemsPriceDiscount,
      });

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsDescription = json['items_description'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCat = json['items_cat'];
    itemsPriceDiscount = json['itemspricediscount'];
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesDescription = json['categories_description'];
    descriptionImage = json['description_image'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['items_id'] = this.itemsId;
    data['items_name'] = this.itemsName;
    data['items_description'] = this.itemsDescription;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['items_price'] = this.itemsPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_date'] = this.itemsDate;
    data['items_cat'] = this.itemsCat;
    data['categories_id'] = this.categoriesId;
    data['categories_name'] = this.categoriesName;
    data['categories_description'] = this.categoriesDescription;
    data['description_image'] = this.descriptionImage;
    data['favorite'] = this.favorite;
    return data;
  }
}