import 'dart:async';

import 'package:flutter/material.dart';

class InfiniteScrollPage extends StatefulWidget {
  @override
  _InfiniteScrollPageState createState() => _InfiniteScrollPageState();
}

class _InfiniteScrollPageState extends State<InfiniteScrollPage> {
  List _list = [];
  int _ultimoItem = 0;
  bool _loading = false;
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    _agrega10();
    _scrollController.addListener(() {
      final scrollPosition = _scrollController.position;
      if (scrollPosition.pixels == scrollPosition.maxScrollExtent) {
        // _agrega10();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite Scroll'),
      ),
      body: Stack(
        children: [_crearLista(), _crearLoading()],
      ),
    );
  }

  Widget _crearLoading() {
    return _loading
        ? Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: CircularProgressIndicator(),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          )
        : Container();
  }

  Widget _crearLista() {
    // https://i.picsum.photos/id/1/200/300.jpg
    return RefreshIndicator(
        child: ListView.builder(
            controller: _scrollController,
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              final image = _list[index];

              return FadeInImage(
                  placeholder: AssetImage('assets/images/default-image.png'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=$image'));
            }),
        onRefresh: _recargarPagina);
  }

  void _agrega10() {
    for (int i = 1; i < 10; i++) {
      setState(() {
        _ultimoItem++;
        _list.add(_ultimoItem);
      });
    }
  }

  Future _recargarPagina() async {
    final duration = new Duration(seconds: 2);
    return new Timer(duration, () {
      _list.clear();
      _ultimoItem = 0;
      _agrega10();
    });
  }

  Future _fetchData() async {
    setState(() {
      _loading = true;
    });
    final duration = new Duration(seconds: 2);
    return new Timer(duration, _respuestaHttp);
  }

  void _respuestaHttp() {
    final offset = _scrollController.position.pixels + 200;
    _scrollController.animateTo(offset,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    setState(() {
      _loading = false;
      _agrega10();
    });
  }
}
