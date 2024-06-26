/*
    Copyright 2020-2024. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of huawei_map;

@immutable
class Marker {
  final MarkerId markerId;
  final LatLng position;
  final InfoWindow infoWindow;
  final Offset anchor;
  final bool draggable;
  final bool flat;
  final BitmapDescriptor icon;
  final double rotation;
  final double alpha;
  final bool visible;
  final double zIndex;
  final bool clickable;
  final bool clusterable;
  final VoidCallback? onClick;
  final ValueChanged<LatLng>? onDragEnd;
  final ValueChanged<LatLng>? onDragStart;
  final ValueChanged<LatLng>? onDrag;
  final List<dynamic> animationSet;

  const Marker({
    required this.markerId,
    required this.position,
    this.infoWindow = InfoWindow.noText,
    this.anchor = const Offset(0.5, 1.0),
    this.draggable = false,
    this.flat = false,
    this.icon = BitmapDescriptor.defaultMarker,
    this.rotation = 0.0,
    this.alpha = 1.0,
    this.visible = true,
    this.zIndex = 0.0,
    this.clickable = false,
    this.clusterable = false,
    this.onClick,
    this.onDragEnd,
    this.onDragStart,
    this.onDrag,
    this.animationSet = const <dynamic>[],
  });

  Marker updateCopy({
    LatLng? position,
    InfoWindow? infoWindow,
    Offset? anchor,
    bool? draggable,
    bool? flat,
    BitmapDescriptor? icon,
    double? rotation,
    double? alpha,
    bool? visible,
    double? zIndex,
    bool? clickable,
    bool? clusterable,
    VoidCallback? onClick,
    ValueChanged<LatLng>? onDragEnd,
    ValueChanged<LatLng>? onDragStart,
    ValueChanged<LatLng>? onDrag,
    List<dynamic>? animations,
  }) {
    return Marker(
      markerId: markerId,
      position: position ?? this.position,
      infoWindow: infoWindow ?? this.infoWindow,
      anchor: anchor ?? this.anchor,
      draggable: draggable ?? this.draggable,
      flat: flat ?? this.flat,
      icon: icon ?? this.icon,
      rotation: rotation ?? this.rotation,
      alpha: alpha ?? this.alpha,
      visible: visible ?? this.visible,
      zIndex: zIndex ?? this.zIndex,
      clickable: clickable ?? this.clickable,
      clusterable: clusterable ?? this.clusterable,
      onClick: onClick ?? this.onClick,
      onDragEnd: onDragEnd ?? this.onDragEnd,
      onDragStart: onDragStart ?? this.onDragStart,
      onDrag: onDrag ?? this.onDrag,
      animationSet: animations ?? animationSet,
    );
  }

  Marker clone() => updateCopy();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (runtimeType != other.runtimeType) {
      return false;
    }
    return other is Marker &&
        markerId == other.markerId &&
        position == other.position &&
        infoWindow == other.infoWindow &&
        anchor == other.anchor &&
        draggable == other.draggable &&
        flat == other.flat &&
        icon == other.icon &&
        rotation == other.rotation &&
        alpha == other.alpha &&
        visible == other.visible &&
        clickable == other.clickable &&
        clusterable == other.clusterable &&
        listEquals(animationSet, other.animationSet) &&
        zIndex == other.zIndex;
  }

  @override
  int get hashCode => markerId.hashCode;
}
