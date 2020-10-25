import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideableWidget extends StatelessWidget {
  final Function deleteFunction;
  final Widget child;

  const SlideableWidget(
      {Key key, @required this.deleteFunction, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableStrechActionPane(),
        child: child,
        actions: <Widget>[
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: deleteFunction,
          )
        ],
      );
}
