// To parse this JSON data, do
//
//     final planets = planetsFromJson(jsonString);
import 'dart:convert';
import 'package:flutter/material.dart';

List<Planets> planetsFromJson(String str) =>
    List<Planets>.from(json.decode(str).map((x) => Planets.fromJson(x)));

String planetsToJson(List<Planets>? data) =>
    json.encode(List<dynamic>.from(data!.map((x) => x.toJson())));

class Planets {
  Planets({
    required this.id,
    required this.name,
    required this.introduction,
    required this.image,
    required this.searchTags,
    required this.features,
    required this.geography,
  });

  final String id;
  final String name;
  final String introduction;
  final String image;
  final List<String> searchTags;
  final Features features;
  final String geography;

  Planets copyWith({
    String? id,
    String? name,
    String? introduction,
    String? image,
    List<String>? searchTags,
    Features? features,
    String? geography,
  }) =>
      Planets(
        id: id ?? this.id,
        name: name ?? this.name,
        introduction: introduction ?? this.introduction,
        image: image ?? this.image,
        searchTags: searchTags ?? this.searchTags,
        features: features ?? this.features,
        geography: geography ?? this.geography,
      );

  factory Planets.fromJson(Map<String, dynamic> json) => Planets(
        id: json["id"],
        name: json["name"],
        introduction: json["introduction"],
        image: json["image"],
        searchTags: List<String>.from(json["searchTags"].map((x) => x)),
        features: Features.fromJson(json["features"]),
        geography: json["geography"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "introduction": introduction,
        "image": image,
        "searchTags": List<dynamic>.from(searchTags.map((x) => x)),
        "features": features.toJson(),
        "geography": geography,
      };

  String? get video => _video(id: id[0]);

  static String? _video({required String id}) {
    switch (id) {
      case '0':
        return 'https://www.youtube.com/watch?v=nAdj9an6N24';
      case '1':
        return 'https://www.youtube.com/watch?v=Nt1roYm0jPQ';
      case '2':
        return 'https://www.youtube.com/watch?v=-FJ34qWCSYY';
      case '3':
        return 'https://www.youtube.com/watch?v=lEePi92HCuI';
      case '4':
        return 'https://www.youtube.com/watch?v=ImpreapHhHY';
      case '5':
        return 'https://www.youtube.com/watch?v=NP0ymdPeW7w';
      case '6':
        return 'https://www.youtube.com/watch?v=i0YzfunCz3A';
      case '7':
        return 'https://www.youtube.com/watch?v=e8bdtCgCoNY';
      case '8':
        return 'https://www.youtube.com/watch?v=xO-fBNKjOzs';
      case '9':
        return 'https://www.youtube.com/watch?v=-rG1e3FQUpI';
      default:
        return '';
    }
  }

  String? get description => _stringDes(id: id[0]);

  static String? _stringDes({required String id}) {
    switch (id) {
      case '0':
        return 'Estrela Central do Sistema Solar';
      case '1':
        return 'Menor e mais interno do Sistema Solar';
      case '2':
        return 'Segundo planeta do Sistema Solar';
      case '3':
        return 'Nosso grande Planeta Azul';
      case '4':
        return 'O grande Planeta Vermelho';
      case '5':
        return 'O maior planeta do Sistema Solar';
      case '6':
        return 'O planeta com mais Luas';
      case '7':
        return 'O planeta mais frio ';
      case '8':
        return 'O ??ltimo planeta do sistema solar';
      case '9':
        return 'O planeta An??o ';
      default:
        return '';
    }
  }

  String? get subtitle => _stringSub(id: id[0]);

  static String? _stringSub({required String id}) {
    switch (id) {
      case '0':
        return 'O Sol ?? a estrela central do Sistema Solar. Todos os outros corpos do Sistema Solar, como planetas, planetas an??es, asteroides, cometas e poeira, bem como todos os sat??lites associados a estes corpos, giram ao seu redor.';
      case '1':
        return 'Merc??rio ?? o menor e mais interno planeta do Sistema Solar, orbitando o Sol a cada 87,969 dias terrestres. A sua ??rbita tem a maior excentricidade e o seu eixo apresenta a menor inclina????o em rela????o ao plano da ??rbita dentre todos.';
      case '2':
        return 'V??nus  ou V??nus  ?? o segundo planeta do Sistema Solar em ordem de dist??ncia a partir do Sol, orbitando-o a cada 224,7 dias.Recebeu seu nome em homenagem ?? deusa romana do amor e da beleza V??nus, equivalente a Afrodite.';
      case '3':
        return 'A Terra ?? o terceiro planeta mais pr??ximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. ?? tamb??m o maior dos quatro planetas tel??ricos. ?? por vezes designada como Mundo ou Planeta Azul.';
      case '4':
        return 'Marte ?? o quarto planeta a partir do Sol, o segundo menor do Sistema Solar. Batizado em homenagem ao deus romano da guerra, muitas vezes ?? descrito como o "Planeta Vermelho", porque predominante sua superf??cie lhe d?? uma apar??ncia avermelhada.';
      case '5':
        return 'J??piter ?? o maior planeta do Sistema Solar, tanto em di??metro quanto em massa, e ?? o quinto mais pr??ximo do Sol.[11] Possui menos de um mil??simo da massa solar, contudo tem 2,5 vezes a massa de todos os outros planetas em conjunto.';
      case '6':
        return 'Saturno ?? o sexto planeta a partir do Sol e o segundo maior do Sistema Solar atr??s de J??piter. Pertencente ao grupo dos gigantes gasosos, possui cerca de 95 massas terrestres e orbita a uma dist??ncia m??dia de 9,5 unidades astron??micas. ';
      case '7':
        return 'Urano ?? o s??timo planeta a partir do Sol, o terceiro maior e o quarto mais massivo dos oito planetas do Sistema Solar. Foi nomeado em homenagem ao deus grego do c??u, Urano. Urano foi tamb??m o primeiro planeta a ser descoberto por meio de um telesc??pio. ';
      case '8':
        return 'Netuno ?? o oitavo planeta do Sistema Solar, o ??ltimo a partir do Sol desde a reclassifica????o de Plut??o para a categoria de planeta an??o, em 2006. Netuno orbita o Sol a uma dist??ncia m??dia de 30,1 unidades astron??micas.';
      case '9':
        return 'Plut??o, formalmente designado 134340 Plut??o ?? um planeta an??o do Sistema Solar e o nono maior e d??cimo mais massivo objeto observado diretamente orbitando o Sol.Plut??o ?? atualmente o maior membro conhecido do cintur??o de Kuiper ';
      default:
        return 'h';
    }
  }

  String? get resume => _string(id: id[0]);

  static String? _string({required String id}) {
    switch (id) {
      case '0':
        return '?? a estrela central do Sistema Solar. Todos os outros corpos';
      case '1':
        return 'Merc??rio ?? o menor e mais interno planeta do Sistema Solar';
      case '2':
        return 'V??nus ou V??nus ?? o segundo planeta do Sistema Solar em ';
      case '3':
        return 'A Terra ?? o terceiro planeta mais pr??ximo do Sol, o mais denso';
      case '4':
        return 'Marte ?? o quarto planeta a partir do Sol, o segundo menor';
      case '5':
        return 'J??piter ?? o maior planeta do Sistema Solar, tanto em ';
      case '6':
        return 'Saturno ?? o sexto planeta a partir do Sol e o segundo ';
      case '7':
        return 'Urano ?? o s??timo planeta a partir do Sol e o terceiro ';
      case '8':
        return 'Netuno ou Neptuno ?? o oitavo planeta do Sistema Solar, o ';
      case '9':
        return 'Plut??o, designado 134340 Plut??o ?? um planeta an??o ';
      default:
        return 'h';
    }
  }

  Color? get baseColor => _color(id: id[0]);

  static Color? _color({required String id}) {
    switch (id) {
      case '0':
        return Color(0xFFb17c0c);
      case '1':
        return Color(0xFF6c6c6c);
      case '2':
        return Color(0xFF733508);
      case '3':
        return Color(0xFF055643);
      case '4':
        return Color(0xFF431b10);
      case '5':
        return Color(0xFF402009);
      case '6':
        return Color(0xFF6d4c23);
      case '7':
        return Color.fromARGB(255, 1, 59, 82);
      case '8':
        return Color(0xFF1a1d4d);
      case '9':
        return Color(0xFF694e31);
      default:
        return Color(0xFFFFFFFF);
    }
  }

  Color? get baseColor2 => _color2(id: id[0]);

  static Color? _color2({required String id}) {
    switch (id) {
      case '0':
        return Color(0xFFf9e831);

      case '1':
        return Color(0xFFe8b99d);
      case '2':
        return Color(0xFFdd8a3c);
      case '3':
        return Color(0xFF2f308e);
      case '4':
        return Color(0xFFd16b3a);
      case '5':
        return Color(0xFFae8b56);
      case '6':
        return Color(0xFFf0ca81);
      case '7':
        return Color.fromARGB(255, 56, 175, 230);
      case '8':
        return Color(0xFF7187db);
      case '9':
        return Color(0xFFe6bd87);
      default:
        return Color(0xFFFFFFFF);
    }
  }
}

class Features {
  Features({
    required this.orbitalPeriod,
    required this.orbitalSpeed,
    required this.rotationDuration,
    required this.radius,
    required this.diameter,
    required this.sunDistance,
    required this.satellites,
    required this.temperature,
  });

  final List<String>? orbitalPeriod;
  final String orbitalSpeed;
  final String? rotationDuration;
  final String? radius;
  final String? diameter;
  final String? sunDistance;
  final Satellites? satellites;
  final String? temperature;

  Features copyWith({
    List<String>? orbitalPeriod,
    String? orbitalSpeed,
    String? rotationDuration,
    String? radius,
    String? diameter,
    String? sunDistance,
    Satellites? satellites,
    String? temperature,
  }) =>
      Features(
        orbitalPeriod: orbitalPeriod ?? this.orbitalPeriod,
        orbitalSpeed: orbitalSpeed ?? this.orbitalSpeed,
        rotationDuration: rotationDuration ?? this.rotationDuration,
        radius: radius ?? this.radius,
        diameter: diameter ?? this.diameter,
        sunDistance: sunDistance ?? this.sunDistance,
        satellites: satellites ?? this.satellites,
        temperature: temperature ?? this.temperature,
      );

  factory Features.fromJson(Map<String, dynamic> json) => Features(
        orbitalPeriod: List<String>.from(json["orbitalPeriod"].map((x) => x)),
        orbitalSpeed: json["orbitalSpeed"],
        rotationDuration: json["rotationDuration"],
        radius: json["radius"],
        diameter: json["Diameter"],
        sunDistance: json["sunDistance"],
        satellites: Satellites.fromJson(json["satellites"]),
        temperature: json["temperature"],
      );

  Map<String, dynamic> toJson() => {
        "orbitalPeriod": List<dynamic>.from(orbitalPeriod!.map((x) => x)),
        "orbitalSpeed": orbitalSpeed,
        "rotationDuration": rotationDuration,
        "radius": radius,
        "Diameter": diameter,
        "sunDistance": sunDistance,
        "satellites": satellites!.toJson(),
        "temperature": temperature,
      };
}

class Satellites {
  Satellites({
    required this.number,
    required this.names,
  });

  final int number;
  final List<String> names;

  Satellites copyWith({
    int? number,
    List<String>? names,
  }) =>
      Satellites(
        number: number ?? this.number,
        names: names ?? this.names,
      );

  factory Satellites.fromJson(Map<String, dynamic> json) => Satellites(
        number: json["number"],
        names: List<String>.from(json["names"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "names": List<dynamic>.from(names.map((x) => x)),
      };
}
