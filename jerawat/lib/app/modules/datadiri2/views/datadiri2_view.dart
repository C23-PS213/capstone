import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttondatadiriback.dart';
import 'package:jerawat/app/modules/widgets/formdatadiri.dart';
import 'package:jerawat/constants/constants.dart';

import '../../../routes/app_pages.dart';
import '../controllers/datadiri2_controller.dart';

// class Datadiri2View extends GetView<Datadiri2Controller> {
//   const Datadiri2View({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final Datadiri2Controller controller = Get.put(Datadiri2Controller());
//     SizeConfig().init(context);
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: Container(
//         margin: EdgeInsets.all(24),
//         child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: getPropertionateScreenHeight(89),),
//                 Center(
//                   child: Text(
//                     'Nama Panggilan Anda',
//                     style: primaryTextStyle.copyWith(
//                       fontSize: 20,
//                       fontWeight: semiBold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: getPropertionateScreenHeight(45),),
//                 FormDataDiri(form: 'Masukkan nama Panggilan anda',kontrol: controller.namaPanggilanC,),
//                 SizedBox(height: getPropertionateScreenHeight(445),),
//                 ButtonDataDiriBack(
//                   judul: 'Lanjut',
//                   back: (){
//                     Get.toNamed(Routes.DATADIRI1);
//                   },
//                   onTap: (){
//                     controller.addData();
//                   },
//                 ),
//               ],
//             ),
//         ),
//       ),
//     );
//   }
// }
