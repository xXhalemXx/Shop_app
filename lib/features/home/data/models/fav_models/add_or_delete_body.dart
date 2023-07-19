class AddOrDeleteBody {
  num? productId;

  AddOrDeleteBody({this.productId});

  AddOrDeleteBody.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    return data;
  }
}
