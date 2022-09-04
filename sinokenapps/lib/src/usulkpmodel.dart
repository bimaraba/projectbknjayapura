class UsulKPModel {
  int? idUsulkpPns;
  String? nOUSULKP;
  String? pNSNIPBARU;
  int? kodeJenisKp;
  String? tglInputSistem;
  String? gOLONGANSAATMENGAJUKAN;

  UsulKPModel(
      {this.idUsulkpPns,
      this.nOUSULKP,
      this.pNSNIPBARU,
      this.kodeJenisKp,
      this.tglInputSistem,
      this.gOLONGANSAATMENGAJUKAN});

  UsulKPModel.fromJson(Map<String, dynamic> json) {
    idUsulkpPns = json['id_usulkp_pns'];
    nOUSULKP = json['NO_USUL_KP'];
    pNSNIPBARU = json['PNS_NIPBARU'];
    kodeJenisKp = json['kode_jenis_kp'];
    tglInputSistem = json['tgl_input_sistem'];
    gOLONGANSAATMENGAJUKAN = json['GOLONGAN_SAAT_MENGAJUKAN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_usulkp_pns'] = this.idUsulkpPns;
    data['NO_USUL_KP'] = this.nOUSULKP;
    data['PNS_NIPBARU'] = this.pNSNIPBARU;
    data['kode_jenis_kp'] = this.kodeJenisKp;
    data['tgl_input_sistem'] = this.tglInputSistem;
    data['GOLONGAN_SAAT_MENGAJUKAN'] = this.gOLONGANSAATMENGAJUKAN;
    return data;
  }
}
