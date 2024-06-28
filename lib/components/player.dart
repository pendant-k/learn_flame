import 'package:flame/components.dart';
import 'package:flutter/material.dart';

// game screen 상에서 사이즈와 위치가 있는 모든 컴포넌트는
// PositionComponent를 상속받아야 한다.
class Player extends PositionComponent {
  static final _paint = Paint()..color = Colors.white;

  @override
  void render(Canvas canvas) {
    canvas.drawRect(size.toRect(), _paint);
  }

  void move(Vector2 delta) {
    position.add(delta);
  }
}
