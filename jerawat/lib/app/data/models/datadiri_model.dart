class DataDiriModel {
  String? uid;
  String? namaLengkap;
  String? namaPanggilan;
  int? usia;

  DataDiriModel(
      {this.uid,
        this.namaLengkap,
        this.namaPanggilan,
        this.usia,
      });

  DataDiriModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    namaLengkap = json['namaLengkap'];
    namaPanggilan = json['namaLengkap'];
    usia = json['usia'] != null ? int.tryParse(json['usia']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['namaLengkap'] = namaLengkap;
    data['namaPanggilan'] = namaPanggilan;
    data['usia'] = usia;
    return data;
  }
}
