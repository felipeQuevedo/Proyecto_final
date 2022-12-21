
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Proveedor/darkt_tema_proveedor.dart';

class Utils{
  BuildContext context;
  Utils(this.context);

  bool get getTheme => Provider.of<DarkTemaProveedor>(context).getDarktema;
  Color get color => getTheme ? Colors.white: Colors.black;
  Size get getScreenSize => MediaQuery.of(context).size;
}