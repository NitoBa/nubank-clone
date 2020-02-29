class Dados {
  Familias familias;

  Dados({this.familias});

  Dados.fromJson(Map<String, dynamic> json) {
    familias = json['familias'] != null
        ? new Familias.fromJson(json['familias'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.familias != null) {
      data['familias'] = this.familias.toJson();
    }
    return data;
  }
}

class Familias {
  Emballorunidae emballorunidae;
  Mormoopidae mormoopidae;

  Familias({this.emballorunidae, this.mormoopidae});

  Familias.fromJson(Map<String, dynamic> json) {
    emballorunidae = json['Emballorunidae'] != null
        ? new Emballorunidae.fromJson(json['Emballorunidae'])
        : null;
    mormoopidae = json['Mormoopidae'] != null
        ? new Mormoopidae.fromJson(json['Mormoopidae'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.emballorunidae != null) {
      data['Emballorunidae'] = this.emballorunidae.toJson();
    }
    if (this.mormoopidae != null) {
      data['Mormoopidae'] = this.mormoopidae.toJson();
    }
    return data;
  }
}

class Emballorunidae {
  Generos1 generos1;

  Emballorunidae({this.generos1});

  Emballorunidae.fromJson(Map<String, dynamic> json) {
    generos1 = json['generos1'] != null
        ? new Generos1.fromJson(json['generos1'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.generos1 != null) {
      data['generos1'] = this.generos1.toJson();
    }
    return data;
  }
}

class Generos1 {
  Centronycteris centronycteris;
  Centronycteris cormura;

  Generos1({this.centronycteris, this.cormura});

  Generos1.fromJson(Map<String, dynamic> json) {
    centronycteris = json['Centronycteris'] != null
        ? new Centronycteris.fromJson(json['Centronycteris'])
        : null;
    cormura = json['Cormura'] != null
        ? new Centronycteris.fromJson(json['Cormura'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.centronycteris != null) {
      data['Centronycteris'] = this.centronycteris.toJson();
    }
    if (this.cormura != null) {
      data['Cormura'] = this.cormura.toJson();
    }
    return data;
  }
}

class Centronycteris {
  List<String> especies;

  Centronycteris({this.especies});

  Centronycteris.fromJson(Map<String, dynamic> json) {
    especies = json['especies'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['especies'] = this.especies;
    return data;
  }
}

class Mormoopidae {
  Generos2 generos2;

  Mormoopidae({this.generos2});

  Mormoopidae.fromJson(Map<String, dynamic> json) {
    generos2 = json['generos2'] != null
        ? new Generos2.fromJson(json['generos2'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.generos2 != null) {
      data['generos2'] = this.generos2.toJson();
    }
    return data;
  }
}

class Generos2 {
  Centronycteris pteronotus;

  Generos2({this.pteronotus});

  Generos2.fromJson(Map<String, dynamic> json) {
    pteronotus = json['Pteronotus'] != null
        ? new Centronycteris.fromJson(json['Pteronotus'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pteronotus != null) {
      data['Pteronotus'] = this.pteronotus.toJson();
    }
    return data;
  }
}


