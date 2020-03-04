class Banners {
  List<_Banner> _banners;
  int _code;

  Banners(jsonRes) {
    this._banners = new List<_Banner>();
    for(var i in jsonRes['banners']) {
      this._banners.add(new _Banner(i));
    }
    this._code = jsonRes['code'];
  }

  List<_Banner> get banners => this._banners;
  set banners(List<_Banner> banners) => this._banners = banners;

  int get code => this._code;
  set code(int code) => this.code = code;
}

class _Banner {
  String _pic;
  int _targetId;
  String _typeTitle;

  _Banner(jsonRes) {
    this._pic = jsonRes['pic'];
    this._targetId = jsonRes['targetId'];
    this._typeTitle = jsonRes['typeTitle'];
  }

  String get pic => this._pic;
  set pic(String pic) => this._pic = pic;

  int get targetId => this._targetId;
  set targetId(int targetId) => this._targetId = targetId;

  String get typeTitle => this._typeTitle;
  set typeTitle(String typeTile) => this._typeTitle = typeTile;
}
