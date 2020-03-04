class User {
  int _loginType;
  int _code;
  _Account _account;
  _Profile _profile;
  List<_Binding> _bindings;

  User(jsonRes) {
    this._loginType = jsonRes['loginType'];
    this._code = jsonRes['code'];
    this._account = new _Account(jsonRes['account']);
    this._profile = new _Profile(jsonRes['profile']);
    this._bindings = new List<_Binding>();
    for(var i in jsonRes['bindings']) {
      this._bindings.add(new _Binding(i));
    }
  }

  int get loginType => this._loginType;
  set loginType(int loginType) => this._loginType = loginType;

  int get code => this._code;
  set code(int code) => this._code = code;

  _Account get account => this._account;
  set account(_Account account) => this._account = account;

  _Profile get profile => this._profile;
  set profile(_Profile profile) => this._profile = profile;

  List<_Binding> get bindings => this._bindings;
  set bindings(List<_Binding> bindings) => this._bindings = bindings;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loginType'] = this._loginType;
    data['code'] = this._code;
    if (this._account != null) {
      data['account'] = this._account.toJson();
    }
    if (this._profile != null) {
      data['profile'] = this._profile.toJson();
    }
    if (this._bindings != null) {
      data['bindings'] = this._bindings.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class _Account {
  int _id;
  String _userName;
  int _type;
  int _status;
  int _whitelistAuthority;
  int _createTime;
  String _salt;
  int _tokenVersion;
  int _ban;
  int _baoyueVersion;
  int _donateVersion;
  int _vipType;
  int _viptypeVersion;
  bool _anonimousUser;

  _Account(jsonRes) {
    this._id = jsonRes['id'];
    this._userName = jsonRes['userName'];
    this._type = jsonRes['type'];
    this._status = jsonRes['status'];
    this._whitelistAuthority = jsonRes['whitelistAuthority'];
    this._createTime = jsonRes['createTime'];
    this._salt = jsonRes['salt'];
    this._tokenVersion = jsonRes['tokenVersion'];
    this._ban = jsonRes['ban'];
    this._baoyueVersion = jsonRes['baoyueVersion'];
    this._donateVersion = jsonRes['donateVersion'];
    this._vipType = jsonRes['vipType'];
    this._viptypeVersion = jsonRes['viptypeVersion'];
    this._anonimousUser = jsonRes['anonimousUser'];
  }

  int get id => this._id;
  set id(int id) => this._id = id;

  String get userName => this._userName;
  set userName(String userName) => this._userName = userName;

  int get type => this._type;
  set type(int type) => this._type = type;

  int get status => this._status;
  set status(int status) => this._status = status;

  int get whitelistAuthority => this._whitelistAuthority;
  set whitelistAuthority(int whitelistAuthority) => this._whitelistAuthority = whitelistAuthority;

  int get createTime => this._createTime;
  set createTime(int createTime) => this._createTime = createTime;

  String get salt => this._salt;
  set salt(String salt) => this._salt = salt;

  int get tokenVersion => this._tokenVersion;
  set tokenVersion(int tokenVersion) => this._tokenVersion = tokenVersion;

  int get ban => this._ban;
  set ban(int ban) => this._ban = ban;

  int get baoyueVersion => this._baoyueVersion;
  set baoyueVersion(int baoyueVersion) => this._baoyueVersion = baoyueVersion;

  int get donateVersion => this._donateVersion;
  set donateVersion(int donateVersion) => this._donateVersion = donateVersion;

  int get vipType => this._vipType;
  set vipType(int vipType) => this._vipType = vipType;

  int get viptypeVersion => this._viptypeVersion;
  set viptypeVersion(int viptypeVersion) => this._viptypeVersion = viptypeVersion;

  bool get anonimousUser => this._anonimousUser;
  set anonimousUser(bool anonimousUser) => this._anonimousUser = anonimousUser;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['userName'] = this._userName;
    data['type'] = this._type;
    data['status'] = this._status;
    data['whitelistAuthority'] = this._whitelistAuthority;
    data['createTime'] = this._createTime;
    data['salt'] = this._salt;
    data['tokenVersion'] = this._tokenVersion;
    data['ban'] = this._ban;
    data['baoyueVersion'] = this._baoyueVersion;
    data['donateVersion'] = this._donateVersion;
    data['vipType'] = this._vipType;
    data['viptypeVersion'] = this._viptypeVersion;
    data['anonimousUser'] = this._anonimousUser;
    return data;
  }
}

class _Profile {
  String _backgroundUrl;
  int _city;
  int _backgroundImgId;
  int _userId;
  int _vipType;
  int _gender;
  int _accountStatus;
  int _djStatus;
  _Experts _experts;
  bool _mutual;
  Null _remarkName;
  Null _expertTags;
  int _authStatus;
  String _detailDescription;
  bool _followed;
  String _nickname;
  int _birthday;
  int _avatarImgId;
  int _userType;
  bool _defaultAvatar;
  String _avatarUrl;
  int _province;
  String _description;
  String _avatarImgIdStr;
  String _backgroundImgIdStr;
  String _signature;
  int _authority;
  int _followeds;
  int _follows;
  int _eventCount;
  int _playlistCount;
  int _playlistBeSubscribedCount;

  _Profile(jsonRes) {
    this._backgroundUrl = jsonRes['backgroundUrl'];
    this._city = jsonRes['city'];
    this._backgroundImgId = jsonRes['backgroundImgId'];
    this._userId = jsonRes['userId'];
    this._vipType = jsonRes['vipType'];
    this._gender = jsonRes['gender'];
    this._accountStatus = jsonRes['accountStatus'];
    this._djStatus = jsonRes['djStatus'];
    this._experts = new _Experts(jsonRes['experts']);
    this._mutual = jsonRes['mutual'];
    this._remarkName = jsonRes['remarkName'];
    this._expertTags = jsonRes['expertTags'];
    this._authStatus = jsonRes['authStatus'];
    this._detailDescription = jsonRes['detailDescription'];
    this._followed = jsonRes['followed'];
    this._nickname = jsonRes['nickname'];
    this._birthday = jsonRes['birthday'];
    this._avatarImgId = jsonRes['avatarImgId'];
    this._userType = jsonRes['userType'];
    this._defaultAvatar = jsonRes['defaultAvatar'];
    this._avatarUrl = jsonRes['avatarUrl'];
    this._province = jsonRes['province'];
    this._description = jsonRes['description'];
    this._avatarImgIdStr = jsonRes['avatarImgIdStr'];
    this._backgroundImgIdStr = jsonRes['backgroundImgIdStr'];
    this._signature = jsonRes['signature'];
    this._authority = jsonRes['authority'];
    this._followeds = jsonRes['followeds'];
    this._follows = jsonRes['follows'];
    this._eventCount = jsonRes['eventCount'];
    this._playlistCount = jsonRes['playlistCount'];
    this._playlistBeSubscribedCount = jsonRes['playlistBeSubscribedCount'];
  }

  String get backgroundUrl => this._backgroundUrl;
  set backgroundUrl(String backgroundUrl) => this._backgroundUrl = backgroundUrl;

  int get city => this._city;
  set city(int city) => this._city = city;

  int get backgroundImgId => this._backgroundImgId;
  set backgroundImgId(int backgroundImgId) => this._backgroundImgId = backgroundImgId;

  int get userId => this._userId;
  set userId(int userId) => this._userId = userId;

  int get vipType => this._vipType;
  set vipType(int vipType) => this._vipType = vipType;

  int get gender => this._gender;
  set gender(int gender) => this._gender = gender;

  int get accountStatus => this._accountStatus;
  set accountStatus(int accountStatus) => this._accountStatus;

  int get djStatus => this._djStatus;
  set djStatus(int djStatus) => this._djStatus = djStatus;

  _Experts get experts => this._experts;
  set experts(_Experts experts) => this._experts = experts;

  bool get mutual => this._mutual;
  set mutual(bool mutual) => this._mutual = mutual;

  Null get remarkName => this._remarkName;
  set remarkName(Null remarkName) => this._remarkName = remarkName;

  Null get expertTags => this._expertTags;
  set expertTags(Null expertTags) => this._expertTags = expertTags;

  int get authStatus => this._authStatus;
  set authStatus(int authStatus) => this._authStatus;

  String get detailDescription => this._detailDescription;
  set detailDescription(String detailDescription) => this._detailDescription = detailDescription;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  String get nickname => this._nickname;
  set nickname(String nickname) => this._nickname = nickname;

  int get birthday => this._birthday;
  set birthday(int birthday) => this._birthday = birthday;

  int get avatarImgId => this._avatarImgId;
  set avatarImgId(int avatarImgId) => this._avatarImgId = avatarImgId;

  int get userType => this._userType;
  set userType(int userType) => this._userType = userType;

  bool get defaultAvatar => this._defaultAvatar;
  set defaultAvatar(bool defaultAvatar) => this.defaultAvatar = defaultAvatar;

  String get avatarUrl => this._avatarUrl;
  set avatarUrl(String avatarUrl) => this._avatarUrl = avatarUrl;

  int get province => this._province;
  set province(int province) => this._province = province;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get avatarImgIdStr => this._avatarImgIdStr;
  set avatarImgIdStr(String avatarImgIdStr) => this._avatarImgIdStr = avatarImgIdStr;

  String get backgroundImgIdStr => this._backgroundImgIdStr;
  set backgroundImgIdStr(String backgroundImgIdStr) => this._backgroundImgIdStr = backgroundImgIdStr;

  String get signature => this._signature;
  set signature(String signature) => this._signature = signature;

  int get authority => this._authority;
  set authority(int authority) => this._authority = authority;

  int get followeds => this._followeds;
  set followeds(int followeds) => this._followeds = followeds;

  int get follows => this._follows;
  set follows(int follows) => this._follows = follows;

  int get eventCount => this._eventCount;
  set eventCount(int eventCount) => this._eventCount = eventCount;

  int get playlistCount => this._playlistCount;
  set playlistCount(int playlistCount) => this._playlistCount = playlistCount;

  int get playlistBeSubscribedCount => this._playlistBeSubscribedCount;
  set playlistBeSubscribedCount(int playlistBeSubscribedCount) => this._playlistBeSubscribedCount = playlistBeSubscribedCount;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this._gender;
    data['accountStatus'] = this._accountStatus;
    data['userId'] = this._userId;
    data['vipType'] = this._vipType;
    data['defaultAvatar'] = this._defaultAvatar;
    data['avatarUrl'] = this._avatarUrl;
    data['nickname'] = this._nickname;
    data['birthday'] = this._birthday;
    data['avatarImgId'] = this._avatarImgId;
    data['city'] = this._city;
    data['userType'] = this._userType;
    data['backgroundImgId'] = this._backgroundImgId;
    data['province'] = this._province;
    data['djStatus'] = this._djStatus;
    if (this._experts != null) {
      data['experts'] = this._experts.toJson();
    }
    data['mutual'] = this._mutual;
    data['remarkName'] = this._remarkName;
    data['expertTags'] = this._expertTags;
    data['authStatus'] = this._authStatus;
    data['followed'] = this._followed;
    data['detailDescription'] = this._detailDescription;
    data['backgroundUrl'] = this._backgroundUrl;
    data['description'] = this._description;
    data['avatarImgIdStr'] = this._avatarImgIdStr;
    data['backgroundImgIdStr'] = this._backgroundImgIdStr;
    data['signature'] = this._signature;
    data['authority'] = this._authority;
    data['followeds'] = this._followeds;
    data['follows'] = this._follows;
    data['eventCount'] = this._eventCount;
    data['playlistCount'] = this._playlistCount;
    data['playlistBeSubscribedCount'] = this._playlistBeSubscribedCount;
    return data;
  }
}

class _Binding {
  String _url;
  int _expiresIn;
  int _bindingTime;
  int _refreshTime;
  String _tokenJsonStr;
  int _userId;
  bool _expired;
  int _id;
  int _type;

  _Binding(jsonRes) {
    this._url = jsonRes['url'];
    this._expiresIn = jsonRes['expiresIn'];
    this._bindingTime = jsonRes['bindingTime'];
    this._refreshTime = jsonRes['refreshTime'];
    this._tokenJsonStr = jsonRes['tokenJsonStr'];
    this._userId = jsonRes['userId'];
    this._expired = jsonRes['expired'];
    this._id = jsonRes['id'];
    this._type = jsonRes['type'];
  }

  String get url => this._url;
  set url(String url) => this._url = url;

  int get expiresIn => this._expiresIn;
  set expiresIn(int expiresIn) => this._expiresIn = expiresIn;

  int get bindingTime => this._bindingTime;
  set bindingTime(int bindingTime) => this._bindingTime = bindingTime;

  int get refreshTime => this._refreshTime;
  set refreshTime(int refreshTime) => this._refreshTime = refreshTime;

  String get tokenJsonStr => this._tokenJsonStr;
  set tokenJsonStr(String tokenJsonStr) => this._tokenJsonStr = tokenJsonStr;

  int get userId => this._userId;
  set userId(int userId) => this._userId = userId;

  bool get expired => this._expired;
  set expired(bool expired) => this._expired = expired;

  int get id => this._id;
  set id(int id) => this._id = id;

  int get type => this._type;
  set type(int type) => this._type = type;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this._url;
    data['userId'] = this._userId;
    data['tokenJsonStr'] = this._tokenJsonStr;
    data['bindingTime'] = this._bindingTime;
    data['refreshTime'] = this._refreshTime;
    data['expiresIn'] = this._expiresIn;
    data['expired'] = this._expired;
    data['id'] = this._id;
    data['type'] = this._type;
    return data;
  }
}

class _Experts {
  _Experts(jsonRes);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}