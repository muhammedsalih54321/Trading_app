
class Loginmodel {
    String? access;
    String? refresh;

    Loginmodel({this.access, this.refresh});

    Loginmodel.fromJson(Map<String, dynamic> json) {
        if(json["access"] is String) {
            access = json["access"];
        }
        if(json["refresh"] is String) {
            refresh = json["refresh"];
        }
    }

    static List<Loginmodel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Loginmodel.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["access"] = access;
        _data["refresh"] = refresh;
        return _data;
    }

    Loginmodel copyWith({
        String? access,
        String? refresh,
    }) => Loginmodel(
        access: access ?? this.access,
        refresh: refresh ?? this.refresh,
    );
}