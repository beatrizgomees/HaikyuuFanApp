// import 'package:app_rpg_demigods/src/modules/shared/design/card_menu.dart';
// import 'package:flutter/material.dart';

// import '../repository/home_repository_imp.dart';

// class ListViewTeams extends StatelessWidget {
//   ListViewTeams({super.key, required this.color});
//   final Color color;
//   PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Map<String, dynamic>>>(
//         stream: playersRepositoryImp.getListTeams(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           final teams = snapshot.data!;
//           print(teams);
//           return Flexible(
//             fit: FlexFit.tight,
//             child: Center(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 padding: EdgeInsets.all(8),
//                 itemCount: teams.length,
//                 itemBuilder: (context, index) => CardMenu(
//                   name: teams[index]['name'],
//                   color: color,
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
