

class Tradersdatamodel {
    String? id;
    String? name;
    String? email;
    String? password;
    String? role;
    List<Followers>? followers;
    List<dynamic>? following;
    String? timestamp;
    String? createdAt;
    String? updatedAt;
    int? v;

    Tradersdatamodel({this.id, this.name, this.email, this.password, this.role, this.followers, this.following, this.timestamp, this.createdAt, this.updatedAt, this.v});

    Tradersdatamodel.fromJson(Map<String, dynamic> json) {
        if(json["_id"] is String) {
            id = json["_id"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["email"] is String) {
            email = json["email"];
        }
        if(json["password"] is String) {
            password = json["password"];
        }
        if(json["role"] is String) {
            role = json["role"];
        }
        if(json["followers"] is List) {
            followers = json["followers"] == null ? null : (json["followers"] as List).map((e) => Followers.fromJson(e)).toList();
        }
        if(json["following"] is List) {
            following = json["following"] ?? [];
        }
        if(json["timestamp"] is String) {
            timestamp = json["timestamp"];
        }
        if(json["createdAt"] is String) {
            createdAt = json["createdAt"];
        }
        if(json["updatedAt"] is String) {
            updatedAt = json["updatedAt"];
        }
        if(json["__v"] is num) {
            v = (json["__v"] as num).toInt();
        }
    }

    static List<Tradersdatamodel> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Tradersdatamodel.fromJson(map)).toList();
    }
 static List<Tradersdatamodel> listFromJson(List<dynamic> json) { 

    return json == null 
        ? [] 
        : json.map((value) => Tradersdatamodel.fromJson(value)).toList(); 
  }
    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["_id"] = id;
        _data["name"] = name;
        _data["email"] = email;
        _data["password"] = password;
        _data["role"] = role;
        if(followers != null) {
            _data["followers"] = followers?.map((e) => e.toJson()).toList();
        }
        if(following != null) {
            _data["following"] = following;
        }
        _data["timestamp"] = timestamp;
        _data["createdAt"] = createdAt;
        _data["updatedAt"] = updatedAt;
        _data["__v"] = v;
        return _data;
    }

    Tradersdatamodel copyWith({
        String? id,
        String? name,
        String? email,
        String? password,
        String? role,
        List<Followers>? followers,
        List<dynamic>? following,
        String? timestamp,
        String? createdAt,
        String? updatedAt,
        int? v,
    }) => Tradersdatamodel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        role: role ?? this.role,
        followers: followers ?? this.followers,
        following: following ?? this.following,
        timestamp: timestamp ?? this.timestamp,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
    );
}

class Followers {
    String? id;
    String? name;
    String? email;
    String? password;
    String? role;
    List<dynamic>? followers;
    List<String>? following;
    String? timestamp;
    String? createdAt;
    String? updatedAt;
    int? v;

    Followers({this.id, this.name, this.email, this.password, this.role, this.followers, this.following, this.timestamp, this.createdAt, this.updatedAt, this.v});

    Followers.fromJson(Map<String, dynamic> json) {
        if(json["_id"] is String) {
            id = json["_id"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["email"] is String) {
            email = json["email"];
        }
        if(json["password"] is String) {
            password = json["password"];
        }
        if(json["role"] is String) {
            role = json["role"];
        }
        if(json["followers"] is List) {
            followers = json["followers"] ?? [];
        }
        if(json["following"] is List) {
            following = json["following"] == null ? null : List<String>.from(json["following"]);
        }
        if(json["timestamp"] is String) {
            timestamp = json["timestamp"];
        }
        if(json["createdAt"] is String) {
            createdAt = json["createdAt"];
        }
        if(json["updatedAt"] is String) {
            updatedAt = json["updatedAt"];
        }
        if(json["__v"] is num) {
            v = (json["__v"] as num).toInt();
        }
    }

    static List<Followers> fromList(List<Map<String, dynamic>> list) {
        return list.map((map) => Followers.fromJson(map)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["_id"] = id;
        _data["name"] = name;
        _data["email"] = email;
        _data["password"] = password;
        _data["role"] = role;
        if(followers != null) {
            _data["followers"] = followers;
        }
        if(following != null) {
            _data["following"] = following;
        }
        _data["timestamp"] = timestamp;
        _data["createdAt"] = createdAt;
        _data["updatedAt"] = updatedAt;
        _data["__v"] = v;
        return _data;
    }

    Followers copyWith({
        String? id,
        String? name,
        String? email,
        String? password,
        String? role,
        List<dynamic>? followers,
        List<String>? following,
        String? timestamp,
        String? createdAt,
        String? updatedAt,
        int? v,
    }) => Followers(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        role: role ?? this.role,
        followers: followers ?? this.followers,
        following: following ?? this.following,
        timestamp: timestamp ?? this.timestamp,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        v: v ?? this.v,
    );

   
}
