import 'package:flutter/material.dart';
import 'package:qr_app/helpers/appcolors.dart';

class ThemeButton extends StatelessWidget {
  String label;
  Function onclick;
  Color color;
  Color highlight;
  Widget icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({
    required this.label,
    this.labelColor = Colors.white,
    this.color = AppColors.MAIN_COLOR,
    this.highlight = AppColors.HIGHLIGHT_DEFAULT,
    required this.icon,
    this.borderColor = Colors.transparent,
    this.borderWidth = 4,
    required this.onclick,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
          color: this.color,
          child: InkWell(
            splashColor: this.highlight,
            highlightColor: this.highlight,
            onTap: () {
              this.onclick();
            },
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: this.borderColor, width: this.borderWidth)),
                child: this.icon == null
                    ? Text(this.label,
                        style: TextStyle(
                            fontSize: 16,
                            color: this.labelColor,
                            fontWeight: FontWeight.bold))
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          this.icon,
                          SizedBox(width: 10),
                          Text(this.label,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: this.labelColor,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
          ),
        ),
      ),
    );
  }
}
