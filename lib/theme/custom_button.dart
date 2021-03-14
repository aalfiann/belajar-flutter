import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final String type;

  CustomButton(
      {@required this.onPressed, @required this.child, @required this.type});

  @override
  Widget build(BuildContext context) {
    switch(type) {
      case 'danger':
        return _CustomButton(
        onPressed: onPressed,
        gradient: LinearGradient(
          colors: [
            Colors.red[400].withOpacity(0.8),
            Colors.red[900].withOpacity(0.8),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        child: child);
      case 'success':
        return _CustomButton(
        onPressed: onPressed,
        gradient: LinearGradient(
          colors: [
            Colors.teal[400].withOpacity(0.8),
            Colors.teal[900].withOpacity(0.8),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        child: child);
      default:
        return _CustomButton(
        onPressed: onPressed,
        gradient: LinearGradient(
          colors: [
            Colors.blue[400].withOpacity(0.8),
            Colors.blue[900].withOpacity(0.8),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        child: child);
    }
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    Key key,
    @required this.onPressed,
    @required this.gradient,
    @required this.child,
  }) : super(key: key);

  final Function onPressed;
  final Gradient gradient;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: child),
      ),
      splashColor: Colors.black12,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(32.0),
      ),
    );
  }
}
