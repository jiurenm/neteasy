class TopMV {
  int _updateTime;
  List<_Data> _data;
  bool _hasMore;
  int _code;

  TopMV(jsonRes) {
    this._updateTime = jsonRes['updateTime'];
    this._data = new List<_Data>();
    for(var i in jsonRes['data']) {
      this._data.add(new _Data(i));
    }
    this._hasMore = jsonRes['hasMore'];
    this._code = jsonRes['code'];
  }

  int get updateTime => this._updateTime;
  set updateTime(int updateTime) => this._updateTime = updateTime;

  List<_Data> get data => this._data;
  set data(List<_Data> data) => this._data = data;

  bool get hasMore => this._hasMore;
  set hasMore(bool hasMore) => this._hasMore = hasMore;

  int get code => this._code;
  set code(int code) => this._code = code;
}

class _Data {
  int _id;
  String _cover;
  String _name;
  int _playCount;
  String _briefDesc;
  Null _desc;
  String _artistName;
  int _artistId;
  int _duration;
  int _mark;
  int _lastRank;
  int _score;
  List<_Artist> _artists;
  bool _subed;

  _Data(jsonRes) {
    this._id = jsonRes['id'];
    this._cover = jsonRes['cover'];
    this._name = jsonRes['name'];
    this._playCount = jsonRes['playCount'];
    this._briefDesc = jsonRes['briefDesc'];
    this._desc = jsonRes['desc'];
    this._artistName = jsonRes['artistName'];
    this._artistId = jsonRes['artistId'];
    this._duration = jsonRes['duration'];
    this._mark = jsonRes['mark'];
    this._lastRank = jsonRes['lastRank'];
    this._score = jsonRes['score'];
    this._artists = new List<_Artist>();
    for(var i in jsonRes['artists']) {
      this._artists.add(new _Artist(i));
    }
    this._subed = jsonRes['subed'];
  }

  int get id => this._id;
  set id(int id) => this._id = id;

  String get cover => this._cover;
  set cover(String cover) => this._cover = cover;

  String get name => this._name;
  set name(String name) => this._name = name;

  int get playCount => this._playCount;
  set playCount(int playCount) => this._playCount = playCount;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  Null get desc => this._desc;
  set desc(Null desc) => this._desc = desc;

  String get artistName => this._artistName;
  set artistName(String artistName) => this._artistName = artistName;

  int get artistId => this._artistId;
  set artistId(int artistId) => this._artistId = artistId;

  int get duration => this._duration;
  set duration(int duration) => this._duration = duration;

  int get mark => this._mark;
  set mark(int mark) => this._mark = mark;

  int get lastRank => this._lastRank;
  set lastRank(int lastRank) => this._lastRank = lastRank;

  int get score => this._score;
  set score(int score) => this._score = score;

  List<_Artist> get artists => this._artists;
  set artists(List<_Artist> artists) => this._artists = artists;

  bool get subed => this._subed;
  set subed(bool subed) => this._subed = subed;
}

class _Artist {
  int _id;
  String _name;

  _Artist(jsonRes) {
    this._id = jsonRes['id'];
    this._name = jsonRes['name'];
  }

  int get id => this._id;
  set id(int id) => this._id = id;

  String get name => this._name;
  set name(String name) => this._name = name;
}
