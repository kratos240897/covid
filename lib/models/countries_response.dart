
// ignore_for_file: non_constant_identifier_names

class CountriesResponse {
  CountriesResponse({
    required this.status,
    required this.statusCode,
    required this.version,
    required this.access,
    required this.data,
  });
  late final String status;
  late final int statusCode;
  late final String version;
  late final String access;
  late final Data data;
  
  CountriesResponse.fromJson(Map<String, dynamic> json){
    status = json['status'];
    statusCode = json['status-code'];
    version = json['version'];
    access = json['access'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['status-code'] = statusCode;
    _data['version'] = version;
    _data['access'] = access;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.DZ,
    required this.AO,
    required this.BJ,
    required this.BW,
    required this.BF,
    required this.BI,
    required this.CV,
    required this.CM,
    required this.CF,
    required this.TD,
    required this.KM,
    required this.CD,
    required this.CG,
    required this.CI,
    required this.DJ,
    required this.EG,
    required this.GQ,
    required this.ER,
    required this.SZ,
    required this.ET,
    required this.GA,
    required this.GM,
    required this.GH,
    required this.GN,
    required this.GW,
    required this.KE,
    required this.LS,
    required this.LR,
    required this.LY,
    required this.MG,
    required this.MW,
    required this.ML,
    required this.MR,
    required this.MU,
    required this.YT,
    required this.MA,
    required this.MZ,
    required this.NA,
    required this.NE,
    required this.NG,
    required this.RE,
    required this.RW,
    required this.SH,
    required this.ST,
    required this.SN,
    required this.SC,
    required this.SL,
    required this.SO,
    required this.ZA,
    required this.SS,
    required this.SD,
    required this.TZ,
    required this.TG,
    required this.TN,
    required this.UG,
    required this.EH,
    required this.ZM,
    required this.ZW,
    required this.AQ,
    required this.BV,
    required this.TF,
    required this.HM,
    required this.GS,
    required this.AF,
    required this.AM,
    required this.AZ,
    required this.BD,
    required this.BT,
    required this.IO,
    required this.BN,
    required this.KH,
    required this.CN,
    required this.GE,
    required this.HK,
    required this.IN,
    required this.ID,
    required this.JP,
    required this.KZ,
    required this.KP,
    required this.KR,
    required this.KG,
    required this.LA,
    required this.MO,
    required this.MY,
    required this.MV,
    required this.MN,
    required this.MM,
    required this.NP,
    required this.PK,
    required this.PH,
    required this.SG,
    required this.LK,
    required this.TW,
    required this.TJ,
    required this.TH,
    required this.TL,
    required this.TM,
    required this.UZ,
    required this.VN,
    required this.BZ,
  });
  late final CountryDetails DZ;
  late final CountryDetails AO;
  late final CountryDetails BJ;
  late final CountryDetails BW;
  late final CountryDetails BF;
  late final CountryDetails BI;
  late final CountryDetails CV;
  late final CountryDetails CM;
  late final CountryDetails CF;
  late final CountryDetails TD;
  late final CountryDetails KM;
  late final CountryDetails CD;
  late final CountryDetails CG;
  late final CountryDetails CI;
  late final CountryDetails DJ;
  late final CountryDetails EG;
  late final CountryDetails GQ;
  late final CountryDetails ER;
  late final CountryDetails SZ;
  late final CountryDetails ET;
  late final CountryDetails GA;
  late final CountryDetails GM;
  late final CountryDetails GH;
  late final CountryDetails GN;
  late final CountryDetails GW;
  late final CountryDetails KE;
  late final CountryDetails LS;
  late final CountryDetails LR;
  late final CountryDetails LY;
  late final CountryDetails MG;
  late final CountryDetails MW;
  late final CountryDetails ML;
  late final CountryDetails MR;
  late final CountryDetails MU;
  late final CountryDetails YT;
  late final CountryDetails MA;
  late final CountryDetails MZ;
  late final CountryDetails NA;
  late final CountryDetails NE;
  late final CountryDetails NG;
  late final CountryDetails RE;
  late final CountryDetails RW;
  late final CountryDetails SH;
  late final CountryDetails ST;
  late final CountryDetails SN;
  late final CountryDetails SC;
  late final CountryDetails SL;
  late final CountryDetails SO;
  late final CountryDetails ZA;
  late final CountryDetails SS;
  late final CountryDetails SD;
  late final CountryDetails TZ;
  late final CountryDetails TG;
  late final CountryDetails TN;
  late final CountryDetails UG;
  late final CountryDetails EH;
  late final CountryDetails ZM;
  late final CountryDetails ZW;
  late final CountryDetails AQ;
  late final CountryDetails BV;
  late final CountryDetails TF;
  late final CountryDetails HM;
  late final CountryDetails GS;
  late final CountryDetails AF;
  late final CountryDetails AM;
  late final CountryDetails AZ;
  late final CountryDetails BD;
  late final CountryDetails BT;
  late final CountryDetails IO;
  late final CountryDetails BN;
  late final CountryDetails KH;
  late final CountryDetails CN;
  late final CountryDetails GE;
  late final CountryDetails HK;
  late final CountryDetails IN;
  late final CountryDetails ID;
  late final CountryDetails JP;
  late final CountryDetails KZ;
  late final CountryDetails KP;
  late final CountryDetails KR;
  late final CountryDetails KG;
  late final CountryDetails LA;
  late final CountryDetails MO;
  late final CountryDetails MY;
  late final CountryDetails MV;
  late final CountryDetails MN;
  late final CountryDetails MM;
  late final CountryDetails NP;
  late final CountryDetails PK;
  late final CountryDetails PH;
  late final CountryDetails SG;
  late final CountryDetails LK;
  late final CountryDetails TW;
  late final CountryDetails TJ;
  late final CountryDetails TH;
  late final CountryDetails TL;
  late final CountryDetails TM;
  late final CountryDetails UZ;
  late final CountryDetails VN;
  late final CountryDetails BZ;
  
  Data.fromJson(Map<String, dynamic> json){
    DZ = CountryDetails.fromJson(json['DZ']);
    AO = CountryDetails.fromJson(json['AO']);
    BJ = CountryDetails.fromJson(json['BJ']);
    BW = CountryDetails.fromJson(json['BW']);
    BF = CountryDetails.fromJson(json['BF']);
    BI = CountryDetails.fromJson(json['BI']);
    CV = CountryDetails.fromJson(json['CV']);
    CM = CountryDetails.fromJson(json['CM']);
    CF = CountryDetails.fromJson(json['CF']);
    TD = CountryDetails.fromJson(json['TD']);
    KM = CountryDetails.fromJson(json['KM']);
    CD = CountryDetails.fromJson(json['CD']);
    CG = CountryDetails.fromJson(json['CG']);
    CI = CountryDetails.fromJson(json['CI']);
    DJ = CountryDetails.fromJson(json['DJ']);
    EG = CountryDetails.fromJson(json['EG']);
    GQ = CountryDetails.fromJson(json['GQ']);
    ER = CountryDetails.fromJson(json['ER']);
    SZ = CountryDetails.fromJson(json['SZ']);
    ET = CountryDetails.fromJson(json['ET']);
    GA = CountryDetails.fromJson(json['GA']);
    GM = CountryDetails.fromJson(json['GM']);
    GH = CountryDetails.fromJson(json['GH']);
    GN = CountryDetails.fromJson(json['GN']);
    GW = CountryDetails.fromJson(json['GW']);
    KE = CountryDetails.fromJson(json['KE']);
    LS = CountryDetails.fromJson(json['LS']);
    LR = CountryDetails.fromJson(json['LR']);
    LY = CountryDetails.fromJson(json['LY']);
    MG = CountryDetails.fromJson(json['MG']);
    MW = CountryDetails.fromJson(json['MW']);
    ML = CountryDetails.fromJson(json['ML']);
    MR = CountryDetails.fromJson(json['MR']);
    MU = CountryDetails.fromJson(json['MU']);
    YT = CountryDetails.fromJson(json['YT']);
    MA = CountryDetails.fromJson(json['MA']);
    MZ = CountryDetails.fromJson(json['MZ']);
    NA = CountryDetails.fromJson(json['NA']);
    NE = CountryDetails.fromJson(json['NE']);
    NG = CountryDetails.fromJson(json['NG']);
    RE = CountryDetails.fromJson(json['RE']);
    RW = CountryDetails.fromJson(json['RW']);
    SH = CountryDetails.fromJson(json['SH']);
    ST = CountryDetails.fromJson(json['ST']);
    SN = CountryDetails.fromJson(json['SN']);
    SC = CountryDetails.fromJson(json['SC']);
    SL = CountryDetails.fromJson(json['SL']);
    SO = CountryDetails.fromJson(json['SO']);
    ZA = CountryDetails.fromJson(json['ZA']);
    SS = CountryDetails.fromJson(json['SS']);
    SD = CountryDetails.fromJson(json['SD']);
    TZ = CountryDetails.fromJson(json['TZ']);
    TG = CountryDetails.fromJson(json['TG']);
    TN = CountryDetails.fromJson(json['TN']);
    UG = CountryDetails.fromJson(json['UG']);
    EH = CountryDetails.fromJson(json['EH']);
    ZM = CountryDetails.fromJson(json['ZM']);
    ZW = CountryDetails.fromJson(json['ZW']);
    AQ = CountryDetails.fromJson(json['AQ']);
    BV = CountryDetails.fromJson(json['BV']);
    TF = CountryDetails.fromJson(json['TF']);
    HM = CountryDetails.fromJson(json['HM']);
    GS = CountryDetails.fromJson(json['GS']);
    AF = CountryDetails.fromJson(json['AF']);
    AM = CountryDetails.fromJson(json['AM']);
    AZ = CountryDetails.fromJson(json['AZ']);
    BD = CountryDetails.fromJson(json['BD']);
    BT = CountryDetails.fromJson(json['BT']);
    IO = CountryDetails.fromJson(json['IO']);
    BN = CountryDetails.fromJson(json['BN']);
    KH = CountryDetails.fromJson(json['KH']);
    CN = CountryDetails.fromJson(json['CN']);
    GE = CountryDetails.fromJson(json['GE']);
    HK = CountryDetails.fromJson(json['HK']);
    IN = CountryDetails.fromJson(json['IN']);
    ID = CountryDetails.fromJson(json['ID']);
    JP = CountryDetails.fromJson(json['JP']);
    KZ = CountryDetails.fromJson(json['KZ']);
    KP = CountryDetails.fromJson(json['KP']);
    KR = CountryDetails.fromJson(json['KR']);
    KG = CountryDetails.fromJson(json['KG']);
    LA = CountryDetails.fromJson(json['LA']);
    MO = CountryDetails.fromJson(json['MO']);
    MY = CountryDetails.fromJson(json['MY']);
    MV = CountryDetails.fromJson(json['MV']);
    MN = CountryDetails.fromJson(json['MN']);
    MM = CountryDetails.fromJson(json['MM']);
    NP = CountryDetails.fromJson(json['NP']);
    PK = CountryDetails.fromJson(json['PK']);
    PH = CountryDetails.fromJson(json['PH']);
    SG = CountryDetails.fromJson(json['SG']);
    LK = CountryDetails.fromJson(json['LK']);
    TW = CountryDetails.fromJson(json['TW']);
    TJ = CountryDetails.fromJson(json['TJ']);
    TH = CountryDetails.fromJson(json['TH']);
    TL = CountryDetails.fromJson(json['TL']);
    TM = CountryDetails.fromJson(json['TM']);
    UZ = CountryDetails.fromJson(json['UZ']);
    VN = CountryDetails.fromJson(json['VN']);
    BZ = CountryDetails.fromJson(json['BZ']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['DZ'] = DZ.toJson();
    _data['AO'] = AO.toJson();
    _data['BJ'] = BJ.toJson();
    _data['BW'] = BW.toJson();
    _data['BF'] = BF.toJson();
    _data['BI'] = BI.toJson();
    _data['CV'] = CV.toJson();
    _data['CM'] = CM.toJson();
    _data['CF'] = CF.toJson();
    _data['TD'] = TD.toJson();
    _data['KM'] = KM.toJson();
    _data['CD'] = CD.toJson();
    _data['CG'] = CG.toJson();
    _data['CI'] = CI.toJson();
    _data['DJ'] = DJ.toJson();
    _data['EG'] = EG.toJson();
    _data['GQ'] = GQ.toJson();
    _data['ER'] = ER.toJson();
    _data['SZ'] = SZ.toJson();
    _data['ET'] = ET.toJson();
    _data['GA'] = GA.toJson();
    _data['GM'] = GM.toJson();
    _data['GH'] = GH.toJson();
    _data['GN'] = GN.toJson();
    _data['GW'] = GW.toJson();
    _data['KE'] = KE.toJson();
    _data['LS'] = LS.toJson();
    _data['LR'] = LR.toJson();
    _data['LY'] = LY.toJson();
    _data['MG'] = MG.toJson();
    _data['MW'] = MW.toJson();
    _data['ML'] = ML.toJson();
    _data['MR'] = MR.toJson();
    _data['MU'] = MU.toJson();
    _data['YT'] = YT.toJson();
    _data['MA'] = MA.toJson();
    _data['MZ'] = MZ.toJson();
    _data['NA'] = NA.toJson();
    _data['NE'] = NE.toJson();
    _data['NG'] = NG.toJson();
    _data['RE'] = RE.toJson();
    _data['RW'] = RW.toJson();
    _data['SH'] = SH.toJson();
    _data['ST'] = ST.toJson();
    _data['SN'] = SN.toJson();
    _data['SC'] = SC.toJson();
    _data['SL'] = SL.toJson();
    _data['SO'] = SO.toJson();
    _data['ZA'] = ZA.toJson();
    _data['SS'] = SS.toJson();
    _data['SD'] = SD.toJson();
    _data['TZ'] = TZ.toJson();
    _data['TG'] = TG.toJson();
    _data['TN'] = TN.toJson();
    _data['UG'] = UG.toJson();
    _data['EH'] = EH.toJson();
    _data['ZM'] = ZM.toJson();
    _data['ZW'] = ZW.toJson();
    _data['AQ'] = AQ.toJson();
    _data['BV'] = BV.toJson();
    _data['TF'] = TF.toJson();
    _data['HM'] = HM.toJson();
    _data['GS'] = GS.toJson();
    _data['AF'] = AF.toJson();
    _data['AM'] = AM.toJson();
    _data['AZ'] = AZ.toJson();
    _data['BD'] = BD.toJson();
    _data['BT'] = BT.toJson();
    _data['IO'] = IO.toJson();
    _data['BN'] = BN.toJson();
    _data['KH'] = KH.toJson();
    _data['CN'] = CN.toJson();
    _data['GE'] = GE.toJson();
    _data['HK'] = HK.toJson();
    _data['IN'] = IN.toJson();
    _data['ID'] = ID.toJson();
    _data['JP'] = JP.toJson();
    _data['KZ'] = KZ.toJson();
    _data['KP'] = KP.toJson();
    _data['KR'] = KR.toJson();
    _data['KG'] = KG.toJson();
    _data['LA'] = LA.toJson();
    _data['MO'] = MO.toJson();
    _data['MY'] = MY.toJson();
    _data['MV'] = MV.toJson();
    _data['MN'] = MN.toJson();
    _data['MM'] = MM.toJson();
    _data['NP'] = NP.toJson();
    _data['PK'] = PK.toJson();
    _data['PH'] = PH.toJson();
    _data['SG'] = SG.toJson();
    _data['LK'] = LK.toJson();
    _data['TW'] = TW.toJson();
    _data['TJ'] = TJ.toJson();
    _data['TH'] = TH.toJson();
    _data['TL'] = TL.toJson();
    _data['TM'] = TM.toJson();
    _data['UZ'] = UZ.toJson();
    _data['VN'] = VN.toJson();
    _data['BZ'] = BZ.toJson();
    return _data;
  }
}

class CountryDetails {
  CountryDetails({
    required this.country,
    required this.region,
  });
  late final String country;
  late final String region;
  
  CountryDetails.fromJson(Map<String, dynamic> json){
    country = json['country'];
    region = json['region'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['country'] = country;
    _data['region'] = region;
    return _data;
  }
}

