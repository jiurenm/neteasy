import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/widgets/error.dart';

typedef ValueWidgetBuilder<T> = Widget Function(
  BuildContext context,
  T value,
);

class CustomFutureBuilder<T> extends StatefulWidget {
  final ValueWidgetBuilder<T> builder;
  final Function futureFunc;
  final Map<String, dynamic> params;
  final Widget loadingWidget;

  CustomFutureBuilder({
    @required this.futureFunc,
    @required this.builder,
    this.params,
    Widget loadingWidget,
  }) : loadingWidget = loadingWidget == null
      ? Container(
    alignment: Alignment.center,
    height: ScreenUtil().setWidth(200),
    child: CupertinoActivityIndicator(),
  )
      : loadingWidget;

  @override
  _CustomFutureBuilderState<T> createState() => _CustomFutureBuilderState<T>();
}

class _CustomFutureBuilderState<T> extends State<CustomFutureBuilder<T>> {
  Future<T> _future;
  String oldParams = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((call) {
      _request();
    });
  }

  void _request() {
    setState(() {
      if (widget.params == null)
        _future = widget.futureFunc(context);
      else {
        _future = widget.futureFunc(context, params: widget.params);
        oldParams = widget.params.values.join();
      }
    });
  }

  @override
  void didUpdateWidget(CustomFutureBuilder<T> oldWidget) {
    if (oldWidget.futureFunc != widget.futureFunc) {
      WidgetsBinding.instance.addPostFrameCallback((call) {
        _request();
      });
    }

    if ((oldWidget.futureFunc == widget.futureFunc) && oldWidget.params != null && widget.params != null) {
      if (oldParams != widget.params.values.join()) {
        oldParams = widget.params.values.join();
        WidgetsBinding.instance.addPostFrameCallback((call) {
          _request();
        });
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return _future == null
        ? widget.loadingWidget
        : FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
            return widget.loadingWidget;
          case ConnectionState.done:
            if (snapshot.hasData) {
              return widget.builder(context, snapshot.data);
            } else if (snapshot.hasError) {
              return null;
            }
        }
        return new Container(width: 0.0, height: 0.0);
      },
    );
  }
}

class CustomSliverFutureBuilder<T> extends StatefulWidget {
  final ValueWidgetBuilder<T> builder;
  final Function futureFunc;
  final Map<String, dynamic> params;

  CustomSliverFutureBuilder({
    @required this.futureFunc,
    @required this.builder,
    this.params,
  });

  @override
  _CustomSliverFutureBuilderState createState() => _CustomSliverFutureBuilderState();
}

class _CustomSliverFutureBuilderState<T> extends State<CustomSliverFutureBuilder> {
  Future<T> _future;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((call) {
      _request();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _future == null
        ? SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setWidth(200),
        child: CupertinoActivityIndicator(),
      ),
    )
        : FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
            return SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                height: ScreenUtil().setWidth(200),
                child: CupertinoActivityIndicator(),
              ),
            );
          case ConnectionState.done:
            if (snapshot.hasData) {
              return widget.builder(context, snapshot.data);
            } else if (snapshot.hasError) {
              return SliverToBoxAdapter(
                child: NetErrorWidget(
                  callback: () {
                    _request();
                  },
                ),
              );
            }
        }
        return Container();
      },
    );
  }

  void _request() {
    setState(() {
      if(widget.params == null) {
        _future = widget.futureFunc(context);
      } else {
        _future = widget.futureFunc(context, params: widget.params);
      }
    });
  }
}
