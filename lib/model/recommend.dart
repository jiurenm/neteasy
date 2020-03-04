class Recommends {
  int _code;
  bool _featureFirst;
  bool _haveRcmdSongs;
  List<_Recommend> _recommend;

  Recommends(jsonRes) {
    this._code = jsonRes['code'];
    this._featureFirst = jsonRes['featureFirst'];
    this._haveRcmdSongs = jsonRes['haveRcmdSongs'];
    this._recommend = new List<_Recommend>();
    for(var i in jsonRes['recommend']) {
      this._recommend.add(new _Recommend(i));
    }
  }

  int get code => this._code;
  set code(int code) => this._code = code;

  bool get featureFirst => this._featureFirst;
  set featureFirst(bool featureFirst) => this._featureFirst = featureFirst;

  bool get haveRcmdSongs => this._haveRcmdSongs;
  set haveRcmdSongs(bool haveRcmdSongs) => this._haveRcmdSongs = haveRcmdSongs;

  List<_Recommend> get recommend => this._recommend;
  set recommend(List<_Recommend> recommend) => this._recommend = recommend;
}

class _Recommend {
  int _id;
  int _type;
  String _name;
  String _copywriter;
  String _picUrl;
  int _playcount;
  int _createTime;
  _Creator _creator;
  int _trackCount;
  int _userId;
  String _alg;

  _Recommend(jsonRes) {
    this._id = jsonRes['id'];
    this._type = jsonRes['type'];
    this._name = jsonRes['name'];
    this._copywriter = jsonRes['copywriter'];
    this._picUrl = jsonRes['picUrl'];
    this._playcount = jsonRes['playcount'];
    this._createTime = jsonRes['createTime'];
    this._creator = new _Creator(jsonRes['creator']);
    this._trackCount = jsonRes['trackCount'];
    this._userId = jsonRes['userId'];
    this._alg = jsonRes['alg'];
  }

  int get id => this._id;
  set id(int id) => this._id = id;

  int get type => this._type;
  set type(int type) => this._type = type;

  String get name => this._name;
  set name(String name) => this._name = name;

  String get copywriter => this._copywriter;
  set copywriter(String copywriter) => this._copywriter = copywriter;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  int get playcount => this._playcount;
  set playcount(int playcount) => this._playcount = playcount;

  int get createTime => this._createTime;
  set createTime(int createTime) => this._createTime = createTime;

  _Creator get creator => this._creator;
  set creator(_Creator creator) => this._creator = creator;

  int get trackCount => this._trackCount;
  set trackCount(int trackCount) => this._trackCount = trackCount;

  int get userId => this._userId;
  set userId(int userId) => this._userId = userId;

  String get alg => this._alg;
  set alg(String alg) => this._alg = alg;
}

class _Creator {
  int _avatarImgId;
  int _backgroundImgId;
  String _avatarImgIdStr;
  String _backgroundImgIdStr;
  int _djStatus;
  bool _followed;
  int _accountStatus;
  int _userId;
  int _vipType;
  int _province;
  int _gender;
  String _avatarUrl;
  int _authStatus;
  int _userType;
  String _nickname;
  int _birthday;
  int _city;
  Null _remarkName;
  bool _mutual;
  String _detailDescription;
  List _expertTags;
  String _backgroundUrl;
  bool _defaultAvatar;
  String _description;
  String _signature;
  int _authority;

  _Creator(jsonRes) {
    this._avatarImgId = jsonRes['avatarImgId'];
    this._backgroundImgId = jsonRes['backgroundImgId'];
    this._avatarImgIdStr = jsonRes['avatarImgIdStr'];
    this._backgroundImgIdStr = jsonRes['backgroundImgIdStr'];
    this._djStatus = jsonRes['djStatus'];
    this._followed = jsonRes['followed'];
    this._accountStatus = jsonRes['accountStatus'];
    this._userId = jsonRes['userId'];
    this._vipType = jsonRes['vipType'];
    this._province = jsonRes['province'];
    this._gender = jsonRes['gender'];
    this._avatarUrl = jsonRes['avatarUrl'];
    this._authStatus = jsonRes['authStatus'];
    this._userType = jsonRes['userType'];
    this._nickname = jsonRes['nickname'];
    this._birthday = jsonRes['birthday'];
    this._city = jsonRes['city'];
    this._remarkName = jsonRes['remarkName'];
    this._mutual = jsonRes['mutual'];
    this._detailDescription = jsonRes['detailDescription'];
    this._expertTags = jsonRes['expertTags'];
    this._backgroundUrl = jsonRes['backgroundUrl'];
    this._defaultAvatar = jsonRes['defaultAvatar'];
    this._description = jsonRes['description'];
    this._signature = jsonRes['signature'];
    this._authority = jsonRes['authority'];
  }

  int get avatarImgId => this._avatarImgId;
  set avatarImgId(int avatarImgId) => this._avatarImgId = avatarImgId;

  int get backgroundImgId => this._backgroundImgId;
  set backgroundImgId(int backgroundImgId) => this._backgroundImgId = backgroundImgId;

  String get avatarImgIdStr => this._avatarImgIdStr;
  set avatarImgIdStr(String avatarImgIdStr) => this._avatarImgIdStr = avatarImgIdStr;

  String get backgroundImgIdStr => this._backgroundImgIdStr;
  set backgroundImgIdStr(String backgroundImgIdStr) => this._backgroundImgIdStr = backgroundImgIdStr;

  int get djStatus => this._djStatus;
  set djStatus(int djStatus) => this._djStatus = djStatus;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  int get accountStatus => this._accountStatus;
  set accountStatus(int accountStatus) => this._accountStatus = accountStatus;

  int get userId => this._userId;
  set userId(int userId) => this._userId = userId;

  int get vipType => this._vipType;
  set vipType(int vipType) => this._vipType = vipType;

  int get province => this._province;
  set province(int province) => this._province = province;

  int get gender => this._gender;
  set gender(int gender) => this._gender = gender;

  String get avatarUrl => this._avatarUrl;
  set avatarUrl(String avatarUrl) => this._avatarUrl = avatarUrl;

  int get authStatus => this._authStatus;
  set authStatus(int authStatus) => this._authStatus = authStatus;

  int get userType => this._userType;
  set userType(int userType) => this._userType = userType;

  String get nickname => this._nickname;
  set nickname(String nickname) => this._nickname = nickname;

  int get birthday => this._birthday;
  set birthday(int birthday) => this._birthday = birthday;

  int get city => this._city;
  set city(int city) => this._city = city;

  Null get remarkName => this._remarkName;
  set remarkName(Null remarkName) => this._remarkName = remarkName;

  bool get mutual => this._mutual;
  set mutual(bool mutual) => this._mutual = mutual;

  String get detailDescription => this._detailDescription;
  set detailDescription(String detailDescription) => this._detailDescription = detailDescription;

  Null get expertTags => this._expertTags;
  set expertTags(Null expertTags) => this._expertTags = expertTags;

  String get backgroundUrl => this._backgroundUrl;
  set backgroundUrl(String backgroundUrl) => this._backgroundUrl = backgroundUrl;

  bool get defaultAvatar => this._defaultAvatar;
  set defaultAvatar(bool defaultAvatar) => this._defaultAvatar = defaultAvatar;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get signature => this._signature;
  set signature(String signature) => this._signature = signature;

  int get authority => this._authority;
  set authority(int authority) => this._authority = authority;
}
