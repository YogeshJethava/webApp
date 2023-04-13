import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:webapp/Controller/new_project/right_bar/properties/properties_controller.dart';
import 'package:webapp/Routes/route_constants.dart';

class PropertiesPage extends StatelessWidget {
  PropertiesPage({Key? key}) : super(key: key);

  late ThemeData _themeData;
  late BuildContext _context;

  ///Create the instance of [PropertiesController] class.
  final PropertiesController _controller = Get.find(tag:RouteConstants.properties);
  @override
  Widget build(BuildContext context) {
    _context = context;
    _themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildBody(),
    );
  }

  ///build the body
  Widget buildBody() {
    return Column(
      children: [
        buildMainArtBoard(),
        buildSmartLayout(),
        Flexible(child: buildBackgroundColor())
      ],
    );
  }

  Container buildMainArtBoard() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Main artboard",
            style: _themeData.textTheme.titleMedium!
                .merge(const TextStyle(color: Colors.white, fontSize: 14)),
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.crop_portrait_outlined,
                  color: Colors.white,
                ),
                iconSize: 16,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.crop_landscape_outlined,
                  color: Colors.white,
                ),
                iconSize: 16,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildSmartLayout() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Smart Layout',
            style: _themeData.textTheme.titleMedium!
                .merge(TextStyle(color: Colors.white, fontSize: 14)),
          ),
          Switch(value: false, onChanged: (value) {})
        ],
      ),
    );
  }

  Widget buildBackgroundColor() {
    return Padding(
      padding: EdgeInsets.only(left: 8,right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Background color",
            style: _themeData.textTheme.titleMedium!
                .merge(TextStyle(color: Colors.white, fontSize: 14)),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),elevation: MaterialStateProperty.all(0)),
              onPressed: () {
                openColorPicker();
              },
              child: Obx(() =>Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(color: _controller.selectedColor.value),
              )))
        ],
      ),
    );
  }

  void openColorPicker() {
    showDialog(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.centerRight,
            scrollable: true,
            titlePadding: const EdgeInsets.all(0),
            contentPadding: const EdgeInsets.all(0),
            content: ColorPicker(
              pickerColor: _controller.selectedColor.value,
              onColorChanged: (color) {
                print("on Change $color");
                _controller.selectedColor.value = color;
              },
              colorPickerWidth: 300,
              pickerAreaHeightPercent: 0.7,
              enableAlpha: true, // hexInputController will respect it too.
              displayThumbColor: true,
              paletteType: PaletteType.rgbWithBlue,
              labelTypes: const [ColorLabelType.hex,ColorLabelType.rgb,ColorLabelType.hsl,ColorLabelType.hsv],
              pickerAreaBorderRadius: const BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2),
              ),
              portraitOnly:true,
            ));
      },
    );
  }
}
