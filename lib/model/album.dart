class NewAlbum {
  int _total;
  List<_Album> _albums;
  int _code;

  NewAlbum(jsonRes) {
    this._total = jsonRes['total'];
    this._albums = new List<_Album>();
    for(var i in jsonRes['albums']) {
      this._albums.add(new _Album(i));
    }
    this._code = jsonRes['code'];
  }

  int get total => this._total;
  set total(int total) => this._total = total;

  List<_Album> get albums => this._albums;
  set albums(List<_Album> albums) => this._albums = albums;

  int get code => this._code;
  set code(int code) => this._code = code;
}

class _Album {
  List _songs;
  bool _paid;
  bool _onSale;
  int _mark;
  List<_Artists> _artists;
  List _alias;
  int _copyrightId;
  int _picId;
  _Artist _artist;
  String _commentThreadId;
  String _briefDesc;
  int _publishTime;
  String _company;
  String _picUrl;
  String _blurPicUrl;
  int _companyId;
  int _pic;
  String _tags;
  int _status;
  String _subType;
  String _description;
  String _name;
  int _id;
  String _type;
  int _size;
  String _picId_str;

  _Album(jsonRes) {
    this._songs = jsonRes['songs'];
    this._paid = jsonRes['paid'];
    this._onSale = jsonRes['onSale'];
    this._mark = jsonRes['mark'];
    this._artists = new List<_Artists>();
    for(var i in jsonRes['artists']) {
      this._artists.add(new _Artists(i));
    }
    this._alias = jsonRes['alias'];
    this._copyrightId = jsonRes['copyrightId'];
    this._picId = jsonRes['picId'];
    this._artist = new _Artist(jsonRes['artist']);
    this._commentThreadId = jsonRes['commentThreadId'];
    this._briefDesc = jsonRes['briefDesc'];
    this._publishTime = jsonRes['publishTime'];
    this._company = jsonRes['company'];
    this._picUrl = jsonRes['picUrl'];
    this._blurPicUrl = jsonRes['blurPicUrl'];
    this._companyId = jsonRes['companyId'];
    this._pic = jsonRes['pic'];
    this._tags = jsonRes['tags'];
    this._status = jsonRes['status'];
    this._subType = jsonRes['subType'];
    this._description = jsonRes['description'];
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._type = jsonRes['type'];
    this._size = jsonRes['size'];
    this._picId_str = jsonRes['picIdstr'];
  }

  List get songs => this._songs;
  set songs(List songs) => this._songs = songs;

  bool get paid => this._paid;
  set paid(bool paid) => this._paid = paid;

  bool get onSale => this._onSale;
  set onSale(bool onSale) => this._onSale = onSale;

  int get mark => this._mark;
  set mark(int mark) => this._mark = mark;

  List<_Artists> get artists => this._artists;
  set artists(List<_Artists> artists) => this._artists = artists;

  List get alias => this._alias;
  set alias(List alias) => this._alias = alias;

  int get copyrightId => this._copyrightId;
  set copyrightId(int copyrightId) => this._copyrightId = copyrightId;

  int get picId => this._picId;
  set picId(int picId) => this._picId = picId;

  _Artist get artist => this._artist;
  set artist(_Artist artist) => this._artist = artist;

  String get commentThreadId => this._commentThreadId;
  set commentThreadId(String commentThreadId) => this._commentThreadId = commentThreadId;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  int get publishTime => this._publishTime;
  set publishTime(int publishTime) => this._publishTime = publishTime;

  String get company => this._company;
  set company(String company) => this._company = company;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  String get blurPicUrl => this._blurPicUrl;
  set blurPicUrl(String blurPicUrl) => this._blurPicUrl = blurPicUrl;

  int get companyId => this._companyId;
  set companyId(int companyId) => this._companyId = companyId;

  int get pic => this._pic;
  set pic(int pic) => this._pic = pic;

  String get tags => this._tags;
  set tags(String tags) => this._tags = tags;

  int get status => this._status;
  set status(int status) => this._status = status;

  String get subType => this._subType;
  set subType(String subType) => this._subType = subType;

  String get description => this._description;
  set description(String description) => this._description = description;

  String get name => this._name;
  set name(String name) => this._name = name;

  int get id => this._id;
  set id(int id) => this._id = id;

  String get type => this._type;
  set type(String type) => this._type = type;

  int get size => this._size;
  set size(int size) => this._size = size;

  String get picId_str => this._picId_str;
  set picId_str(String picId_str) => this._picId_str = picId_str;
}

class _Artists {
  int _img1v1Id;
  int _topicPerson;
  List _alias;
  int _picId;
  int _albumSize;
  bool _followed;
  String _briefDesc;
  int _musicSize;
  String _img1v1Url;
  String _trans;
  String _picUrl;
  String _name;
  int _id;
  String _img1v1Id_str;

  _Artists(jsonRes) {
    this._img1v1Id = jsonRes['img1v1Id'];
    this._topicPerson = jsonRes['topicPerson'];
    this._alias = jsonRes['alias'];
    this._picId = jsonRes['picId'];
    this._albumSize = jsonRes['albumSize'];
    this._followed = jsonRes['followed'];
    this._briefDesc = jsonRes['briefDesc'];
    this._musicSize = jsonRes['musicSize'];
    this._img1v1Url = jsonRes['img1v1Url'];
    this._trans = jsonRes['trans'];
    this._picUrl = jsonRes['picUrl'];
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._img1v1Id_str = jsonRes['img1v1Id_str'];
  }

  int get img1v1Id => this._img1v1Id;
  set img1v1Id(int img1v1Id) => this._img1v1Id = img1v1Id;

  int get topicPerson => this._topicPerson;
  set topicPerson(int topicPerson) => this._topicPerson = topicPerson;

  List get alias => this._alias;
  set alias(List alias) => this._alias = alias;

  int get picId => this._picId;
  set picId(int picId) => this._picId = picId;

  int get albumSize => this._albumSize;
  set albumSize(int albumSize) => this._albumSize = albumSize;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  int get musicSize => this._musicSize;
  set musicSize(int musicSize) => this._musicSize = musicSize;

  String get img1v1Url => this._img1v1Url;
  set img1v1Url(String img1v1Url) => this._img1v1Url = img1v1Url;

  String get trans => this._trans;
  set trans(String trans) => this._trans = trans;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  String get name => this._name;
  set name(String name) => this._name = name;

  int get id => this._id;
  set id(int id) => this._id = id;

  String get img1v1Id_str => this._img1v1Id_str;
  set img1v1Id_str(String img1v1Id_str) => this._img1v1Id_str = img1v1Id_str;
}

class _Artist {
  int _img1v1Id;
  int _topicPerson;
  List _alias;
  int _picId;
  int _albumSize;
  bool _followed;
  String _briefDesc;
  int _musicSize;
  String _img1v1Url;
  String _trans;
  String _picUrl;
  String _name;
  int _id;
  String _picId_str;
  List _transNames;
  String _img1v1Id_str;

  _Artist(jsonRes) {
    this._img1v1Id = jsonRes['img1v1Id'];
    this._topicPerson = jsonRes['topicPerson'];
    this._alias = jsonRes['alias'];
    this._picId = jsonRes['picId'];
    this._albumSize = jsonRes['albumSize'];
    this._followed = jsonRes['followed'];
    this._briefDesc = jsonRes['briefDesc'];
    this._musicSize = jsonRes['musicSize'];
    this._img1v1Url = jsonRes['img1v1Url'];
    this._trans = jsonRes['trans'];
    this._picUrl = jsonRes['picUrl'];
    this._name = jsonRes['name'];
    this._id = jsonRes['id'];
    this._picId_str = jsonRes['picId_str'];
    this._transNames = jsonRes['transNames'];
    this._img1v1Id_str = jsonRes['img1v1Id_str'];
  }

  int get img1v1Id => this._img1v1Id;
  set img1v1Id(int img1v1Id) => this._img1v1Id = img1v1Id;

  int get topicPerson => this._topicPerson;
  set topicPerson(int topicPerson) => this._topicPerson = topicPerson;

  List get alias => this._alias;
  set alias(List alias) => this._alias = alias;

  int get picId => this._picId;
  set picId(int picId) => this._picId = picId;

  int get albumSize => this._albumSize;
  set albumSize(int albumSize) => this._albumSize = albumSize;

  bool get followed => this._followed;
  set followed(bool followed) => this._followed = followed;

  String get briefDesc => this._briefDesc;
  set briefDesc(String briefDesc) => this._briefDesc = briefDesc;

  int get musicSize => this._musicSize;
  set musicSize(int musicSize) => this._musicSize = musicSize;

  String get img1v1Url => this._img1v1Url;
  set img1v1Url(String img1v1Url) => this._img1v1Url = img1v1Url;

  String get trans => this._trans;
  set trans(String trans) => this._trans = trans;

  String get picUrl => this._picUrl;
  set picUrl(String picUrl) => this._picUrl = picUrl;

  String get name => this._name;
  set name(String name) => this._name = name;

  int get id => this._id;
  set id(int id) => this._id = id;

  String get picId_str => this._picId_str;
  set picId_str(String picId_str) => this._picId_str = picId_str;

  List get transNames => this._transNames;
  set transNames(List transNames) => this._transNames = transNames;

  String get img1v1Id_str => this._img1v1Id_str;
  set img1v1Id_str(String img1v1Id_str) => this._img1v1Id_str = img1v1Id_str;
}
