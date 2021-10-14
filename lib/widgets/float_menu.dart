import 'package:flutter/material.dart';
class FloatMenu extends StatefulWidget {
  const FloatMenu({Key? key}) : super(key: key);

  @override
  _FloatMenuState createState() => _FloatMenuState();
}

class _FloatMenuState extends State<FloatMenu> with SingleTickerProviderStateMixin {
  //当前选中的页面
  int _activeIndex = 0;

  //导航栏高度
  double _height = 52.0;

  //悬浮图标半径
  late double _floatRadius;

  //移动补间
  double _moveTween = 0.0;

  //浮动图标与圆弧之间的间隙
  double _padding = 10.0;

  //动画控制器
  late AnimationController _animationController;

  //移动动画
  late Animation<double> _moveAnimation;

  //导航栏使用到的图标
  final List _icons = [
  Icons.message,
  Icons.supervised_user_circle_sharp,
  ];
//导航栏使用到的标题
  final _titles = ["消息", "通讯录"];
  @override
  void initState() {
    _floatRadius=_height*2/3;
    _animationController=AnimationController(vsync: this,duration: const Duration(milliseconds: 400));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double bottomPadding = MediaQuery.of(context).padding.bottom;
    double width = MediaQuery.of(context).size.width;
    double singleWidth = width / _icons.length;
    double posTop = _animationController.value <= 0.5
        ? (_animationController.value * _height * _padding / 2) -
        _floatRadius / 3 * 2
        : (1 - _animationController.value) * _height * _padding / 2 -
        _floatRadius / 3 * 2;
    print("posTop " + posTop.toString());
    if (posTop > 0) {
      posTop = 0;
    }
    print("posTop--- " + posTop.toString());
    print("bottomPadding "+bottomPadding.toString());
    return Container();
  }
}
