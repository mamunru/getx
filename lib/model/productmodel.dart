class productModel {
  int? id;
  String? code;
  String? image;
  String? status;
  String? sp;
  String? bp;
  String? tq;
  String? userId;
  String? createdAt;
  String? pagename;

  productModel(
      {this.id,
      this.code,
      this.image,
      this.status,
      this.sp,
      this.bp,
      this.tq,
      this.userId,
      this.createdAt,
      this.pagename});

  productModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    image = json['image'];
    status = json['status'];
    sp = json['sp'];
    bp = json['bp'];
    tq = json['tq'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    pagename = json['pagename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['image'] = this.image;
    data['status'] = this.status;
    data['sp'] = this.sp;
    data['bp'] = this.bp;
    data['tq'] = this.tq;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['pagename'] = this.pagename;
    return data;
  }
}
