import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jerawat/app/config/size_config.dart';
import 'package:jerawat/app/modules/widgets/buttondatadiriback.dart';
import 'package:jerawat/app/modules/widgets/formdatadiri.dart';
import 'package:jerawat/constants/constants.dart';
import '../../../routes/app_pages.dart';
import '../controllers/datadiri1_controller.dart';

// class Datadiri1View extends GetView<Datadiri1Controller> {
//   const Datadiri1View({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//
//     final Datadiri1Controller controller = Get.put(Datadiri1Controller());
//
//     SizeConfig().init(context);
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       body: Container(
//         margin: EdgeInsets.all(24),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: getPropertionateScreenHeight(89),),
//               Center(
//                 child: Text(
//                   'Nama Lengkap Anda',
//                   style: primaryTextStyle.copyWith(
//                     fontSize: 20,
//                     fontWeight: semiBold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: getPropertionateScreenHeight(45),),
//               FormDataDiri(form: 'Masukkan nama anda',kontrol: controller.namaLengkapC,),
//               SizedBox(height: getPropertionateScreenHeight(445),),
//               ButtonDataDiriBack(
//                   judul: 'Lanjut',
//                   back: (){
//                     Get.toNamed(Routes.REGISTER);
//                   },
//                   onTap: (){
//                     controller.addData();
//                   },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
