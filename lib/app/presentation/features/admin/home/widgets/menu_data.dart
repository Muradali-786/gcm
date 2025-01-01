import 'package:gcm/app/presentation/models/menu_model.dart';
import '../../../../../../gen/assets.gen.dart';

class MenuData {
  List<MenuModel> menuList = [
    MenuModel(svgIconAsset: Assets.icons.menuDashboard, title: 'Dashboard'),
    MenuModel(svgIconAsset: Assets.icons.menuTran, title: 'Transactions'),
    MenuModel(svgIconAsset: Assets.icons.menuTask, title: 'Task'),
    MenuModel(svgIconAsset: Assets.icons.menuDoc, title: 'Documents'),
  ];
}
