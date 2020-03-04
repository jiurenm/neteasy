class Playlist {
  num _code;
  Null _relatedVideos;
  _Playlist _playlist;

  Resource(jsonRes) {
    this._code = jsonRes['code'];
    this._relatedVideos = jsonRes['relatedVideos'];
    this._playlist = jsonRes['playlist'];
  }

  num get code => this._code;
  set code(num code) => this._code = code;

  Null get relatedVideos => this._relatedVideos;
  set relatedVideos(Null relatedVideos) => this._relatedVideos = relatedVideos;

  _Playlist get playlist => this._playlist;
  set playlist(_Playlist playlist) => this._playlist = playlist;
}

class _Playlist {
  List<_Subscribers> _subscribers;
  bool _subscribed;
  _Subscribers _creator;
  List<_Tracks> _tracks;
  List<_TrackIds> _trackIds;
  num _backgroundCoverId;
  num _titleImage;
  num _subscribedCount;
  num _cloudTrackCount;
  bool _ordered;
  List<String> _tags;
  num _createTime;
  bool _highQuality;
  num _playCount;
  num _trackNumberUpdateTime;
  num _trackUpdateTime;
  num _userId;
  String _coverImgUrl;
  num _trackCount;
  bool _newImported;
  num _coverImgId;
  num _updateTime;
  num _specialType;
  String _commentThreadId;
  num _privacy;
  String _description;
  num _adType;
  num _status;
  String _name;
  num _id;
  num _shareCount;
  num _commentCount;

  _Playlist(jsonRes) {
    this._subscribers = new List<_Subscribers>();
    for(var i in jsonRes['subscribers']) {
      this._subscribers.add(new _Subscribers(i));
    }
    this._subscribed = jsonRes['subscribed'];
    this._creator = jsonRes['creator'];
    this._tracks = new List<_Tracks>();
    for(var i in jsonRes['tracks']) {
      this._tracks.add(new _Tracks(i));
    }
    this._trackIds = new List<_TrackIds>();
    for(var i in jsonRes['trackIds']) {
      this._trackIds.add(new _TrackIds(i));
    }
    this._backgroundCoverId = jsonRes['backgroundCoverId'];
    this._titleImage = jsonRes['titleImage'];
    this._subscribedCount = jsonRes['subscribedCount'];
    this._cloudTrackCount = jsonRes['cloudTrackCount'];
    this._ordered = jsonRes['ordered'];
    this._tags = new List<String>();
    for(var i in jsonRes['tags']) {
      this._tags.add(i);
    }
    this._createTime = jsonRes['createTime'];
    this._highQuality = jsonRes['highQuality'];
    this._playCount = jsonRes['playCount'];
    this._trackNumberUpdateTime = jsonRes['trackNumberUpdateTime'];
    this._trackUpdateTime = jsonRes['trackUpdateTime'];
    this._userId = jsonRes['userId'];
    this._coverImgUrl = jsonRes['coverImgUrl'];
    this._trackCount = jsonRes['trackCount'];
    this._newImported = jsonRes['newImported'];
    this._coverImgId = jsonRes['coverImgId'];
    this._updateTime = jsonRes['updateTime'];
    this._specialType = jsonRes['specialType'];
    this._commentThreadId = jsonRes['commentThreadId'];
    this._privacy = jsonRes['privacy'];
    this._description = jsonRes['description'];
    this._adType = jsonRes['adType'];
    this._status = jsonRes['status'];
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._shareCount = jsonRes['shareCount'];
    this._commentCount = jsonRes['commentCount'];
  }

  List<_Subscribers> get subscribers => this._subscribers;
  set subscribers(List<_Subscribers> subscribers) => this._subscribers = subscribers;

  bool get subscribed => this._subscribed;
  set subscribed(bool subscribed) => this._subscribed = subscribed;

  _Subscribers get creator => this._creator;
  set creator(_Subscribers creator) => this._creator = creator;

  List<_Tracks> get tracks => this._tracks;
  set tracks(List<_Tracks> tracks) => this._tracks = tracks;

  List<_TrackIds> get trackIds => this._trackIds;
  set trackIds(List<_TrackIds> trackIds) => this._trackIds = trackIds;

  num get backgroundCoverId => this._backgroundCoverId;
  set backgroundCoverId(num backgroundCoverId) => this._backgroundCoverId = backgroundCoverId;

  num get titleImage => this._titleImage;
  set titleImage(num titleImage) => this._titleImage = titleImage;

  num get subscribedCount => this._subscribedCount;
  set subscribedCount(num subscribedCount) => this._subscribedCount = subscribedCount;

  num get cloudTrackCount => this._cloudTrackCount;
  set cloudTrackCount(num cloudTrackCount) => this._cloudTrackCount = cloudTrackCount;

  bool get ordered => this._ordered;
  set ordered(bool ordered) => this._ordered = ordered;

  List<String> get tags => this._tags;
  set tags(List<String> tags) => this._tags = tags;

  num get createTime => this._createTime;
  set createTime(num createTime) => this._createTime = createTime;

  bool get highQuality => this._highQuality;
  set highQuality(bool highQuality) => this._highQuality = highQuality;

  num get playCount => this._playCount;
  set playCount(num playCount) => this._playCount = playCount;

  num get trackNumberUpdateTime => this._trackNumberUpdateTime;
  set trackNumberUpdateTime(num trackNumberUpdateTime) => this._trackNumberUpdateTime = trackNumberUpdateTime;

  num get trackUpdateTime => this._trackUpdateTime;
  set trackUpdateTime(num trackUpdateTime) => this._trackUpdateTime = trackUpdateTime;

  num get userId => this._userId;
  set userId(num userId) => this._userId = userId;

  String get coverImgUrl => this._coverImgUrl;
  set coverImgUrl(String coverImgUrl) => this._coverImgUrl = coverImgUrl;

  num get trackCount => this._trackCount;
  set trackCount(num trackCount) => this._trackCount = trackCount;

  bool get newImported => this._newImported;
  set newImported(bool newImported) => this._newImported = newImported;

  num get coverImgId => this._coverImgId;
  set coverImgId(num coverImgId) => this._coverImgId = coverImgId;

  num get updateTime => this._updateTime;
  set updateTime(num updateTime) => this._updateTime = updateTime;

  num get specialType => this._specialType;
  set specialType(num specialType) => this._specialType = specialType;

  String get commentThreadId => this._commentThreadId;
  set commentThreadId(String commentThreadId) => this._commentThreadId = commentThreadId;

  num get privacy => this._privacy;
  set privacy(num privacy) => this._privacy = privacy;

  String get description => this._description;
  set description(String description) => this._description = description;

  num get adType => this._adType;
  set adType(num adType) => this._adType = adType;

  num get status => this._status;
  set status(num status) => this._status = status;

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  num get shareCount => this._shareCount;
  set shareCount(num shareCount) => this._shareCount = shareCount;

  num get commentCount => this._commentCount;
  set commentCount(num commentCount) => this._commentCount = commentCount;
}

class _Subscribers {
  bool _defaultAvatar;
  num _province;
  num _authStatus;
  bool _followed;
  String _avatarUrl;
  num _accountStatus;
  num _gender;
  num _city;
  num _birthday;
  num _userId;
  num _userType;
  String _nickname;
  String _signature;
  String _description;
  String _detailDescription;
  num _avatarImgId;
  num _backgroundImgId;
  String _backgroundUrl;
  num _authority;
  bool _mutual;
  num _djStatus;
  num _vipType;
  String _avatarImgIdStr;
  String _backgroundImgIdStr;

  _Subscribers(jsonRes) {
    this._defaultAvatar = jsonRes['defaultAvatar'];
    this._province = jsonRes['province'];
    this._authStatus = jsonRes['authStatus'];
    this._followed = jsonRes['followed'];
    this._avatarUrl = jsonRes['avatarUrl'];
    this._accountStatus = jsonRes['accountStatus'];
    this._gender = jsonRes['gender'];
    this._city = jsonRes['city'];
    this._birthday = jsonRes['birthday'];
    this._userId = jsonRes['userId'];
    this._userType = jsonRes['userType'];
    this._nickname = jsonRes['nickname'];
    this._signature = jsonRes['signature'];
    this._description = jsonRes['description'];
    this._detailDescription = jsonRes['detailDescription'];
    this._avatarImgId = jsonRes['avatarImgId'];
    this._backgroundImgId = jsonRes['backgroundImgId'];
    this._backgroundUrl = jsonRes['backgroundUrl'];
    this._authority = jsonRes['authority'];
    this._mutual = jsonRes['mutual'];
    this._djStatus = jsonRes['djStatus'];
    this._vipType = jsonRes['vipType'];
    this._avatarImgIdStr = jsonRes['avatarImgIdStr'];
    this._backgroundImgIdStr = jsonRes['backgroundImgIdStr'];
  }

  bool get defaultAvatar => this._defaultAvatar;
  set defaultAvatar(bool defaultAvatar) => this._defaultAvatar = defaultAvatar;

  num get province => this._province;
  set province(num province) => this._province = province;

  num get authStatus => this._authStatus;
  set authStatus(num authStatus) => this._authStatus = authStatus;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  String get avatarUrl => this._avatarUrl;
  set avatarUrl(String avatarUrl) => this._avatarUrl = avatarUrl;

  num get accountStatus => this._accountStatus;
  set accountStatus(num accountStatus) => this._accountStatus = accountStatus;

  num get gender => this._gender;
  set gender(num gender) => this._gender = gender;

  num get city => this._city;
  set city(num city) => this._city = city;

  num get birthday => this._birthday;
  set birthday(num birthday) => this._birthday = birthday;

  num get userId => this._userId;
  set userId(num userId) => this._userId = userId;

  num get userType => this._userType;
  set userType(num userType) => this._userType = userType;

  String get nickname => this._nickname;
  set nickname(String nickname) => this._nickname = nickname;

  String get signature => this._signature;
  set signature(String signature) => this._signature = signature;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get detailDescription => this._detailDescription;
  set detailDescription(String detailDescription) => this._detailDescription = detailDescription;

  num get avatarImgId => this._avatarImgId;
  set avatarImgId(num avatarImgId) => this._avatarImgId = avatarImgId;

  num get backgroundImgId => this._backgroundImgId;
  set backgroundImgId(num backgroundImgId) => this._backgroundImgId = backgroundImgId;

  String get backgroundUrl => this._backgroundUrl;
  set backgroundUrl(String backgroundUrl) => this._backgroundUrl = backgroundUrl;

  num get authority => this._authority;
  set authority(num authority) => this._authority = authority;

  bool get mutual => this._mutual;
  set mutual(bool mutual) => this._mutual = mutual;

  num get djStatus => this._djStatus;
  set djStatus(num djStatus) => this._djStatus = djStatus;

  num get vipType => this._vipType;
  set vipType(num vipType) => this._vipType = vipType;

  String get avatarImgIdStr => this._avatarImgIdStr;
  set avatarImgIdStr(String avatarImgIdStr) => this._avatarImgIdStr = avatarImgIdStr;

  String get backgroundImgIdStr => this._backgroundImgIdStr;
  set backgroundImgIdStr(String backgroundImgIdStr) => this._backgroundImgIdStr = backgroundImgIdStr;
}

class _Tracks {
  String _name;
  num _id;
  num _pst;
  num _t;
  List<_Ar> _ar;
  num _pop;
  num _st;
  String _rt;
  num _fee;
  num _v;
  String _cf;
  _Al _al;
  num _dt;
  _H _h;
  _H _m;
  _H _l;
  String _cd;
  num _no;
  num _ftype;
  num _djId;
  num _copyright;
  num _sId;
  num _mark;
  num _mv;
  num _rtype;
  num _mst;
  num _cp;
  num _publishTime;

  _Tracks(jsonRes) {
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._pst = jsonRes['pst'];
    this._t = jsonRes['t'];
    this._ar = new List<_Ar>();
    for(var i in jsonRes['ar']) {
      this._ar.add(new _Ar(i));
    }
    this._pop = jsonRes['pop'];
    this._st = jsonRes['st'];
    this._rt = jsonRes['rt'];
    this._fee = jsonRes['fee'];
    this._v = jsonRes['v'];
    this._cf = jsonRes['cf'];
    this._al = new _Al(jsonRes['al']);
    this._dt = jsonRes['dt'];
    this._h = new _H(jsonRes['h']);
    this._m = new _H(jsonRes['m']);
    this._l = new _H(jsonRes['l']);
    this._cd = jsonRes['cd'];
    this._no = jsonRes['no'];
    this._ftype = jsonRes['ftype'];
    this._djId = jsonRes['djId'];
    this._copyright = jsonRes['copyright'];
    this._sId = jsonRes['sId'];
    this._mark = jsonRes['mark'];
    this._mv = jsonRes['mv'];
    this._rtype = jsonRes['rtype'];
    this._mst = jsonRes['mst'];
    this._cp = jsonRes['cp'];
    this._publishTime = jsonRes['publishTime'];
  }

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  num get pst => this._pst;
  set pst(num pst) => this._pst = pst;

  num get t => this._t;
  set t(num t) => this._t = t;

  List<_Ar> get ar => this._ar;
  set ar(List<_Ar> ar) => this._ar = ar;

  num get pop => this._pop;
  set pop(num pop) => this._pop = pop;

  num get st => this._st;
  set st(num st) => this._st = st;

  String get rt => this._rt;
  set rt(String rt) => this._rt = rt;

  num get fee => this._fee;
  set fee(num fee) => this._fee = fee;

  num get v => this._v;
  set v(num v) => this._v = v;

  String get cf => this._cf;
  set cf(String cf) => this._cf = cf;

  _Al get al => this._al;
  set al(_Al al) => this._al = al;

  num get dt => this._dt;
  set dt(num dt) => this._dt = dt;

  _H get h => this._h;
  set h(_H h) => this._h = h;

  _H get m => this._m;
  set m(_H m) => this._m = m;

  _H get l => this._l;
  set l(_H l) => this._l = l;

  String get cd => this._cd;
  set cd(String cd) => this._cd = cd;

  num get no => this._no;
  set no(num no) => this._no = no;

  num get ftype => this._ftype;
  set ftype(num ftype) => this._ftype = ftype;

  num get djId => this._djId;
  set djId(num djId) => this._djId = djId;

  num get copyright => this._copyright;
  set copyright(num copyright) => this._copyright = copyright;

  num get sId => this._sId;
  set sId(num sId) => this._sId = sId;

  num get mark => this._mark;
  set mark(num mark) => this._mark = mark;

  num get mv => this._mv;
  set mv(num mv) => this._mv = mv;

  num get rtype => this._rtype;
  set rtype(num rtype) => this._rtype = rtype;

  num get mst => this._mst;
  set mst(num mst) => this._mst = mst;

  num get cp => this._cp;
  set cp(num cp) => this._cp = cp;

  num get publishTime => this._publishTime;
  set publishTime(num publishTime) => this._publishTime = publishTime;
}

class _Ar {
  num _id;
  String _name;

  _Ar(jsonRes) {
    this._id = jsonRes['id'];
    this._name = jsonRes['name'];
  }

  num get id => this._id;
  set id(num id) => this._id = id;

  String get name => this._name;
  set name(String name) => this._name = name;
}

class _Al {
  num _id;
  String _name;
  String _picUrl;
  num _pic;

  _Al(jsonRes) {
    this._id = jsonRes['id'];
    this._name = jsonRes['name'];
    this._picUrl = jsonRes['picUrl'];
    this._pic = jsonRes['pic'];
  }

  num get id => this._id;
  set id(num id) => this._id = id;

  String get name => this._name;
  set name(String name) => this._name = name;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  num get pic => this._pic;
  set pic(num pic) => this._pic = pic;
}

class _H {
  num _br;
  num _fid;
  num _size;
  num _vd;

  _H(jsonRes) {
    this._br = jsonRes['br'];
    this._fid = jsonRes['fid'];
    this._size = jsonRes['size'];
    this._vd = jsonRes['vd'];
  }

  num get br => this._br;
  set br(num br) => this._br = br;

  num get fid => this._fid;
  set fid(num fid) => this._fid = fid;

  num get size => this._size;
  set size(num size) => this._size = size;

  num get vd => this._vd;
  set vd(num vd) => this._vd = vd;
}

class _TrackIds {
  num _id;
  num _v;

  _TrackIds(jsonRes) {
    this._id = jsonRes['id'];
    this._v = jsonRes['v'];
  }

  num get id => this._id;
  set id(num id) => this._id = id;

  num get v => this._v;
  set v(num v) => this._v = v;
}