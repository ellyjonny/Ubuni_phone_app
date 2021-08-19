// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:ubuni_phone_app/app_state/phones_state.dart';
// import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';
// import 'package:ubuni_phone_app/models/phones_ui_model/phones_ui.dart';

// class Phones extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<PhonesState>(
//         builder: (BuildContext context, phonesState, child) {
//       return Container(
//           child: Column(
//               children: phonesState.phonesLists.length < 1
//                   ? [Text("Loading...")]
//                   : phonesState.phonesLists.map((PhonesModel phonesModel) {
//                       return PhonesUI(
//                           phonename: phonesModel.phonename,
//                           brandname: phonesModel.brandname,
//                           phoneimage: NetworkImage(phonesModel.imageurl),
//                           );
//                     }).toList())
//                     );
//     });
//   }
// }
