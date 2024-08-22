import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Completer<NaverMapController> mapControllerCompleter = Completer();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Page'),
      ),
      body: NaverMap(

        options: const NaverMapViewOptions(
          initialCameraPosition:
            const NCameraPosition(target: NLatLng(37.286828, 127.0577689), zoom: 15),
          zoomGesturesEnable: true,
          indoorEnable: true,             // 실내 맵 사용 가능 여부 설정
          locationButtonEnable: true,    // 위치 버튼 표시  여부 설정
          consumeSymbolTapEvents: false,  // 심볼 탭 이벤트 소비 여부 설정
          maxZoom: 18,
          minZoom: 10,
        ),
        onMapReady: (controller) {
          // print("성공?!");
          final marker = NMarker(
              id: 'test',
              position: const NLatLng(37.286828, 127.0577689)
          );
          controller.addOverlayAll({marker});
          NInfoWindow.onMap(id: marker.info.id, text: 'text', position: const NLatLng(37.286828, 127.0577689));
          mapControllerCompleter.complete(controller);

        },
      ),
    );
  }
}
