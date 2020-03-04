class Daily {
  int _code;
  List<_Recommend> _recommend;

  Daily(jsonRes) {
    this._code = jsonRes['code'];
    this._recommend = new List<_Recommend>();
    for(var i in jsonRes['recommend']) {
      this._recommend.add(new _Recommend(i));
    }
  }

  int get code => this._code;
  set code(int code) => this._code = code;

  List<_Recommend> get recommend => this._recommend;
  set recommend(List<_Recommend> recommend) => this._recommend = recommend;
}

class _Recommend {
  String _name;
  num _id;
  num _position;
  num _status;
  num _fee;
  num _copyrightId;
  String _disc;
  num _no;
  List<_Artists> _artists;
  _Album _album;
  bool _starred;
  num _popularity;
  num _score;
  num _starredNum;
  num _duration;
  num _playedNum;
  num _dayPlays;
  num _hearTime;
  String _copyFrom;
  String _commentThreadId;
  num _ftype;
  num _copyright;
  num _mark;
  _HMusic _hMusic;
  _HMusic _mMusic;
  _HMusic _lMusic;
  _HMusic _bMusic;
  num _mvid;
  num _rtype;
  String _reason;
  _Privilege _privilege;
  String _alg;

  _Recommend(jsonRes) {
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._position = jsonRes['position'];
    this._status = jsonRes['status'];
    this._fee = jsonRes['fee'];
    this._copyrightId = jsonRes['copyrightId'];
    this._disc = jsonRes['disc'];
    this._no = jsonRes['no'];
    this._artists = new List<_Artists>();
    for(var i in jsonRes['artists']) {
      this._artists.add(new _Artists(i));
    }
    this._album = new _Album(jsonRes['album']);
    this._starred = jsonRes['starred'];
    this._popularity = jsonRes['popularity'];
    this._score = jsonRes['score'];
    this._starredNum = jsonRes['starredNum'];
    this._duration = jsonRes['duration'];
    this._playedNum = jsonRes['playedNum'];
    this._dayPlays = jsonRes['dayPlays'];
    this._hearTime = jsonRes['hearTime'];
    this._copyFrom = jsonRes['copyFrom'];
    this._commentThreadId = jsonRes['commentThreadId'];
    this._ftype = jsonRes['ftype'];
    this._copyright = jsonRes['copyright'];
    this._mark = jsonRes['mark'];
    this._hMusic = jsonRes['hMusic'] != null ? new _HMusic(jsonRes['hMusic']) : null;
    this._mMusic = jsonRes['mMusic'] != null ? new _HMusic(jsonRes['mMusic']) : null;
    this._lMusic = jsonRes['lMusic'] != null ? new _HMusic(jsonRes['lMusic']) : null;
    this._bMusic = jsonRes['bMusic'] != null ? new _HMusic(jsonRes['bMusic']) : null;
    this._mvid = jsonRes['mvid'];
    this._rtype = jsonRes['rtype'];
    this._reason = jsonRes['reason'];
    this._privilege = new _Privilege(jsonRes['privilege']);
    this._alg = jsonRes['alg'];
  }

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  num get position => this._position;
  set position(num position) => this._position = position;

  num get status => this._status;
  set status(num status) => this._status = status;

  num get fee => this._fee;
  set fee(num fee) => this._fee = fee;

  num get copyrightId => this._copyrightId;
  set copyrightId(num copyrightId) => this._copyrightId = copyrightId;

  String get disc => this._disc;
  set disc(String disc) => this._disc = disc;

  num get no => this._no;
  set no(num no) => this._no = no;

  List<_Artists> get artists => this._artists;
  set artists(List<_Artists> artists) => this._artists = artists;

  _Album get album => this._album;
  set album(_Album album) => this._album = album;

  bool get starred => this._starred;
  set starred(bool starred) => this._starred = starred;

  num get popularity => this._popularity;
  set popularity(num popularity) => this._popularity = popularity;

  num get score => this._score;
  set score(num score) => this._score = score;

  num get starredNum => this._starredNum;
  set starredNum(num starredNum) => this._starredNum = starredNum;

  num get duration => this._duration;
  set duration(num duration) => this._duration = duration;

  num get playedNum => this._playedNum;
  set playedNum(num playedNum) => this._playedNum = playedNum;

  num get dayPlays => this._dayPlays;
  set dayPlays(num dayPlays) => this._dayPlays = dayPlays;

  num get hearTime => this._hearTime;
  set hearTime(num hearTime) => this._hearTime = hearTime;

  String get copyFrom => this._copyFrom;
  set copyFrom(String copyFrom) => this._copyFrom = copyFrom;

  String get commentThreadId => this._commentThreadId;
  set commentThreadId(String commentThreadId) => this._commentThreadId = commentThreadId;

  num get ftype => this._ftype;
  set ftype(num ftype) => this._ftype = ftype;

  num get copyright => this._copyright;
  set copyright(num copyright) => this._copyright = copyright;

  num get mark => this._mark;
  set mark(num mark) => this._mark = mark;

  _HMusic get hMusic => this._hMusic;
  set hMusic(_HMusic hMusic) => this._hMusic = hMusic;

  _HMusic get mMusic => this._mMusic;
  set mMusic(_HMusic mMusic) => this._mMusic = mMusic;

  _HMusic get lMusic => this._lMusic;
  set lMusic(_HMusic lMusic) => this._lMusic = lMusic;

  _HMusic get bMusic => this._bMusic;
  set bMusic(_HMusic bMusic) => this._bMusic = bMusic;

  num get mvid => this._mvid;
  set mvid(num mvid) => this._mvid = mvid;

  num get rtype => this._rtype;
  set rtype(num rtype) => this._rtype = rtype;

  String get reason => this._reason;
  set reason(String reason) => this._reason = reason;

  _Privilege get privilege => this._privilege;
  set privilege(_Privilege privilege) => this._privilege = privilege;

  String get alg => this._alg;
  set alg(String alg) => this._alg = alg;
}

class _Artists {
  String _name;
  num _id;
  num _picId;
  num _img1v1Id;
  String _briefDesc;
  String _picUrl;
  String _img1v1Url;
  num _albumSize;
  String _trans;
  num _musicSize;
  num _topicPerson;

  _Artists(jsonRes) {
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._picId = jsonRes['picId'];
    this._img1v1Id = jsonRes['img1v1Id'];
    this._briefDesc = jsonRes['briefDesc'];
    this._picUrl = jsonRes['picUrl'];
    this._img1v1Url = jsonRes['img1v1Url'];
    this._albumSize = jsonRes['albumSize'];
    this._trans = jsonRes['trans'];
    this._musicSize = jsonRes['musicSize'];
    this._topicPerson = jsonRes['topicPerson'];
  }

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  num get picId => this._picId;
  set picId(num picId) => this._picId = picId;

  num get img1v1Id => this._img1v1Id;
  set img1v1Id(num img1v1Id) => this._img1v1Id = img1v1Id;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  String get img1v1Url => this._img1v1Url;
  set img1v1Url(String img1v1Url) => this._img1v1Url = img1v1Url;

  num get albumSize => this._albumSize;
  set albumSize(num albumSize) => this._albumSize = albumSize;

  String get trans => this._trans;
  set trans(String trans) => this._trans = trans;

  num get musicSize => this._musicSize;
  set musicSize(num musicSize) => this._musicSize = musicSize;

  num get topicPerson => this._topicPerson;
  set topicPerson(num topicPerson) => this._topicPerson = topicPerson;
}

class _Album {
  String _name;
  num _id;
  String _type;
  num _size;
  num _picId;
  String _blurPicUrl;
  num _companyId;
  num _pic;
  String _picUrl;
  num _publishTime;
  String _description;
  String _tags;
  String _company;
  String _briefDesc;
  num _status;
  num _copyrightId;
  String _commentThreadId;
  List<_Artists> _artists;
  String _subType;
  num _mark;
  String _picIdStr;

  _Album(jsonRes) {
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._type = jsonRes['type'];
    this._size = jsonRes['size'];
    this._picId = jsonRes['picId'];
    this._blurPicUrl = jsonRes['blurPicUrl'];
    this._companyId = jsonRes['companyId'];
    this._pic = jsonRes['pic'];
    this._picUrl = jsonRes['picUrl'];
    this._publishTime = jsonRes['publishTime'];
    this._description = jsonRes['description'];
    this._tags = jsonRes['tags'];
    this._company = jsonRes['company'];
    this._briefDesc = jsonRes['briefDesc'];
    this._status = jsonRes['status'];
    this._copyrightId = jsonRes['copyrightId'];
    this._commentThreadId = jsonRes['commentThreadId'];
    this._artists = new List<_Artists>();
    for(var i in jsonRes['artists']) {
      this._artists.add(new _Artists(i));
    }
    this._subType = jsonRes['subType'];
    this._mark = jsonRes['mark'];
    this._picIdStr = jsonRes['picIdStr'];
  }

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  String get type => this._type;
  set type(String type) => this._type = type;

  num get size => this._size;
  set size(num size) => this._size = size;

  num get picId => this._picId;
  set picId(num picId) => this._picId = picId;

  String get blurPicUrl => this._blurPicUrl;
  set blurPicUrl(String blurPicUrl) => this._blurPicUrl = blurPicUrl;

  num get companyId => this._companyId;
  set companyId(num companyId) => this._companyId = companyId;

  num get pic => this._pic;
  set pic(num pic) => this._pic = pic;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  num get publishTime => this._publishTime;
  set publishTime(num publishTime) => this._publishTime = publishTime;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get tags => this._tags;
  set tags(String tags) => this._tags = tags;

  String get company => this._company;
  set company(String company) => this._company = company;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  num get status => this._status;
  set status(num status) => this._status = status;

  num get copyrightId => this._copyrightId;
  set copyrightId(num copyrightId) => this._copyrightId = copyrightId;

  String get commentThreadId => this._commentThreadId;
  set commentThreadId(String commentThreadId) => this._commentThreadId = commentThreadId;

  List<_Artists> get artists => this._artists;
  set artists(List<_Artists> artists) => this._artists = artists;

  String get subType => this._subType;
  set subType(String subType) => this._subType = subType;

  num get mark => this._mark;
  set mark(num mark) => this._mark = mark;

  String get picIdStr => this._picIdStr;
  set picIdStr(String picIdStr) => this._picIdStr = picIdStr;
}

class _HMusic {
  String _name;
  num _id;
  num _size;
  String _extension;
  num _sr;
  num _dfsId;
  num _bitrate;
  num _playTime;
  num _volumeDelta;

  _HMusic(jsonRes) {
    if(jsonRes['name'] == null) {
      this.name = " ";
    }
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._size = jsonRes['size'];
    this._extension = jsonRes['extension'];
    this._sr = jsonRes['sr'];
    this._dfsId = jsonRes['dfsId'];
    this._bitrate = jsonRes['bitrate'];
    this._playTime = jsonRes['playTime'];
    this._volumeDelta = jsonRes['volumeDelta'];
  }

  String get name => this._name;
  set name(String name) => this._name = name;

  num get id => this._id;
  set id(num id) => this._id = id;

  num get size => this._size;
  set size(num size) => this._size = size;

  String get extension => this._extension;
  set extension(String extension) => this._extension = extension;

  num get sr => this._sr;
  set sr(num sr) => this._sr = sr;

  num get dfsId => this._dfsId;
  set dfsId(num dfsId) => this._dfsId = dfsId;

  num get bitrate => this._bitrate;
  set bitrate(num bitrate) => this._bitrate = bitrate;

  num get playTime => this._playTime;
  set playTime(num playTime) => this._playTime = playTime;

  num get volumeDelta => this._volumeDelta;
  set volumeDelta(num volumeDelta) => this._volumeDelta = volumeDelta;
}

class _Privilege {
  num _id;
  num _fee;
  num _payed;
  num _st;
  num _pl;
  num _dl;
  num _sp;
  num _cp;
  num _subp;
  bool _cs;
  num _maxbr;
  num _fl;
  bool _toast;
  num _flag;
  bool _preSell;

  _Privilege(jsonRes) {
    this._id = jsonRes['id'];
    this._fee = jsonRes['fee'];
    this._payed = jsonRes['payed'];
    this._st = jsonRes['st'];
    this._pl = jsonRes['pl'];
    this._dl = jsonRes['dl'];
    this._sp = jsonRes['sp'];
    this._cp = jsonRes['cp'];
    this._subp = jsonRes['subp'];
    this._cs = jsonRes['cs'];
    this._maxbr = jsonRes['maxbr'];
    this._fl = jsonRes['fl'];
    this._toast = jsonRes['toast'];
    this._flag = jsonRes['flag'];
    this._preSell = jsonRes['preSell'];
  }

  num get id => this._id;
  set id(num id) => this._id = id;

  num get fee => this._fee;
  set fee(num fee) => this._fee = fee;

  num get payed => this._payed;
  set payed(num payed) => this._payed = payed;

  num get st => this._st;
  set st(num st) => this._st = st;

  num get pl => this._pl;
  set pl(num pl) => this._pl = pl;

  num get dl => this._dl;
  set dl(num dl) => this._dl = dl;

  num get sp => this._sp;
  set sp(num sp) => this._sp = sp;

  num get cp => this._cp;
  set cp(num cp) => this._cp = cp;

  num get subp => this._subp;
  set subp(num subp) => this._subp = subp;

  bool get cs => this._cs;
  set cs(bool cs) => this._cs = cs;

  num get maxbr => this._maxbr;
  set maxbr(num maxbr) => this._maxbr = maxbr;

  num get fl => this._fl;
  set fl(num fl) => this._fl = fl;

  bool get toast => this._toast;
  set toast(bool toast) => this._toast = toast;

  num get flag => this._flag;
  set flag(num flag) => this._flag = flag;

  bool get preSell => this._preSell;
  set preSell(bool preSell) => this._preSell = preSell;
}

class Resource {
  int _code;
  bool _featureFirst;
  bool _haveRcmdSongs;
  List<_Recommend2> _recommend;

  Resource(jsonRes) {
    this._code = jsonRes['code'];
    this._featureFirst = jsonRes['featureFirst'];
    this._haveRcmdSongs = jsonRes['haveRcmdSongs'];
    this._recommend = new List<_Recommend2>();
    for(var i in jsonRes['recommend']) {
      this._recommend.add(new _Recommend2(i));
    }
  }

  int get code => this._code;
  set code(int code) => this._code = code;

  bool get featureFirst => this._featureFirst;
  set featureFirst(bool featureFirst) => this._featureFirst = featureFirst;

  bool get haveRcmdSongs => this._haveRcmdSongs;
  set haveRcmdSongs(bool haveRcmdSongs) => this._haveRcmdSongs = haveRcmdSongs;

  List<_Recommend2> get recommend => this._recommend;
  set recommend(List<_Recommend2> recommend) => this._recommend = recommend;
}

class _Recommend2 {
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
  
  _Recommend2(jsonRes) {
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
  String _remarkName;
  bool _mutual;
  int _avatarImgId;
  int _backgroundImgId;
  String _detailDescription;
  bool _defaultAvatar;
  List _expertTags;
  int _djStatus;
  bool _followed;
  String _backgroundUrl;
  String _backgroundImgIdStr;
  String _avatarImgIdStr;
  int _accountStatus;
  int _userId;
  int _vipType;
  int _province;
  String _avatarUrl;
  int _authStatus;
  int _userType;
  String _nickname;
  int _gender;
  int _birthday;
  int _city;
  String _description;
  String _signature;
  int _authority;

  _Creator(jsonRes) {
    this._remarkName = jsonRes['remarkName'];
    this._mutual = jsonRes['mutual'];
    this._avatarImgId = jsonRes['avatarImgId'];
    this._backgroundImgId = jsonRes['backgroundImgId'];
    this._detailDescription = jsonRes['detailDescription'];
    this._defaultAvatar = jsonRes['defaultAvatar'];
    this._expertTags = jsonRes['expertTags'];
    this._djStatus = jsonRes['djStatus'];
    this._followed = jsonRes['followed'];
    this._backgroundUrl = jsonRes['backgroundUrl'];
    this._backgroundImgIdStr = jsonRes['backgroundImgIdStr'];
    this._avatarImgIdStr = jsonRes['avatarImgIdStr'];
    this._accountStatus = jsonRes['accountStatus'];
    this._userId = jsonRes['userId'];
    this._vipType = jsonRes['vipType'];
    this._province = jsonRes['province'];
    this._avatarUrl = jsonRes['avatarUrl'];
    this._authStatus = jsonRes['authStatus'];
    this._userType = jsonRes['userType'];
    this._nickname = jsonRes['nickname'];
    this._gender = jsonRes['gender'];
    this._birthday = jsonRes['birthday'];
    this._city = jsonRes['city'];
    this._description = jsonRes['description'];
    this._signature = jsonRes['signature'];
    this._authority = jsonRes['authority'];
  }

  String get remarkName => this._remarkName;
  set remarkName(String remarkName) => this._remarkName = remarkName;

  bool get mutual => this._mutual;
  set mutual(bool mutual) => this._mutual = mutual;

  int get avatarImgId => this._avatarImgId;
  set avatarImgId(int avatarImgId) => this._avatarImgId = avatarImgId;

  int get backgroundImgId => this._backgroundImgId;
  set backgroundImgId(int backgroundImgId) => this._backgroundImgId = backgroundImgId;

  String get detailDescription => this._detailDescription;
  set detailDescription(String detailDescription) => this._detailDescription = detailDescription;

  bool get defaultAvatar => this._defaultAvatar;
  set defaultAvatar(bool defaultAvatar) => this._defaultAvatar = defaultAvatar;

  List get expertTags => this._expertTags;
  set expertTags(List expertTags) => this._expertTags = expertTags;

  int get djStatus => this._djStatus;
  set djStatus(int djStatus) => this._djStatus = djStatus;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  String get backgroundUrl => this._backgroundUrl;
  set backgroundUrl(String backgroundUrl) => this._backgroundUrl = backgroundUrl;

  String get backgroundImgIdStr => this._backgroundImgIdStr;
  set backgroundImgIdStr(String backgroundImgIdStr) => this._backgroundImgIdStr = backgroundImgIdStr;

  String get avatarImgIdStr => this._avatarImgIdStr;
  set avatarImgIdStr(String avatarImgIdStr) => this._avatarImgIdStr = avatarImgIdStr;

  int get accountStatus => this._accountStatus;
  set accountStatus(int accountStatus) => this._accountStatus = accountStatus;

  int get userId => this._userId;
  set userId(int userId) => this._userId = userId;

  int get vipType => this._vipType;
  set vipType(int vipType) => this._vipType = vipType;

  int get province => this._province;
  set province(int province) => this._province = province;

  String get avatarUrl => this._avatarUrl;
  set avatarUrl(String avatarUrl) => this._avatarUrl = avatarUrl;

  int get authStatus => this._authStatus;
  set authStatus(int authStatus) => this._authStatus = authStatus;

  int get userType => this._userType;
  set userType(int userType) => this._userType = userType;

  String get nickname => this._nickname;
  set nickname(String nickname) => this._nickname = nickname;

  int get gender => this._gender;
  set gender(int gender) => this._gender = gender;

  int get birthday => this._birthday;
  set birthday(int birthday) => this._birthday = birthday;

  int get city => this._city;
  set city(int city) => this._city = city;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get signature => this._signature;
  set signature(String signature) => this._signature = signature;

  int get authority => this._authority;
  set authority(int authority) => this._authority = authority;
}
