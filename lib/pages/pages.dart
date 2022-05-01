import 'package:flutter/material.dart';
import 'package:getx/screens/bottom_sheet_getx.dart';
import 'package:getx/screens/navigator_named_getx.dart';
import 'package:getx/screens/navigator_un_named.dart';
import 'package:getx/screens/show_dialog_getx.dart';
import 'package:getx/screens/snack_bar.dart';


// ignore: must_be_immutable
class Pages extends StatelessWidget {
  Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("GetX",style: TextStyle(color: Colors.indigoAccent),),
      ),
      body: ListView.builder(
          itemCount: namesLIst.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigoAccent,
                      fixedSize: const Size(300, 50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => navigator[index]));
                  },
                  child: Text(namesLIst[index])),
            );
          }),
    );
  }

  List namesLIst = ["Snack Bar", "Show Dialog", 'Bottom Sheet', 'Navigator un named','Navigator named'];
  List navigator = [
    const SnackBarPage(),
    const ShowDialogGetXPAge(),
    const BottomSheetGetXPage(),
    const NavigatorUnNamedGetXPage(),
    const NavigatorNamedGetXPage(),
  ];
}
