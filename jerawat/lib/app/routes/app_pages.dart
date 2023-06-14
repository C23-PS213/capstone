import 'package:get/get.dart';

import '../modules/datadiri1/bindings/datadiri1_binding.dart';
import '../modules/datadiri1/views/datadiri1_view.dart';
import '../modules/datadiri2/bindings/datadiri2_binding.dart';
import '../modules/datadiri2/views/datadiri2_view.dart';
import '../modules/datadiri3/bindings/datadiri3_binding.dart';
import '../modules/datadiri3/views/datadiri3_view.dart';
import '../modules/datadiri4/bindings/datadiri4_binding.dart';
import '../modules/datadiri4/views/datadiri4_view.dart';
import '../modules/datadiri5/bindings/datadiri5_binding.dart';
import '../modules/datadiri5/views/datadiri5_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/gantipassword/bindings/gantipassword_binding.dart';
import '../modules/gantipassword/views/gantipassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/informasi/bindings/informasi_binding.dart';
import '../modules/informasi/views/informasi_view.dart';
import '../modules/informasipribadi/bindings/informasipribadi_binding.dart';
import '../modules/informasipribadi/views/informasipribadi_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/lupapassword/bindings/lupapassword_binding.dart';
import '../modules/lupapassword/views/lupapassword_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/pengaturan/bindings/pengaturan_binding.dart';
import '../modules/pengaturan/views/pengaturan_view.dart';
import '../modules/produk/bindings/produk_binding.dart';
import '../modules/produk/views/produk_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/scanwajah1/bindings/scanwajah1_binding.dart';
import '../modules/scanwajah1/views/scanwajah1_view.dart';
import '../modules/scanwajah2/bindings/scanwajah2_binding.dart';
import '../modules/scanwajah2/views/scanwajah2_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SCANWAJAH1,
      page: () => const Scanwajah1View(),
      binding: Scanwajah1Binding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LUPAPASSWORD,
      page: () => const LupapasswordView(),
      binding: LupapasswordBinding(),
    ),
    GetPage(
      name: _Paths.DATADIRI1,
      page: () => const Datadiri1View(),
      binding: Datadiri1Binding(),
    ),
    GetPage(
      name: _Paths.DATADIRI2,
      page: () => const Datadiri2View(),
      binding: Datadiri2Binding(),
    ),
    GetPage(
      name: _Paths.DATADIRI3,
      page: () => const Datadiri3View(),
      binding: Datadiri3Binding(),
    ),
    GetPage(
      name: _Paths.DATADIRI4,
      page: () => const Datadiri4View(),
      binding: Datadiri4Binding(),
    ),
    GetPage(
      name: _Paths.DATADIRI5,
      page: () => const Datadiri5View(),
      binding: Datadiri5Binding(),
    ),
    GetPage(
      name: _Paths.PRODUK,
      page: () => const ProdukView(),
      binding: ProdukBinding(),
    ),
    GetPage(
      name: _Paths.INFORMASI,
      page: () => const InformasiView(),
      binding: InformasiBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.INFORMASIPRIBADI,
      page: () => const InformasipribadiView(),
      binding: InformasipribadiBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.PENGATURAN,
      page: () => const PengaturanView(),
      binding: PengaturanBinding(),
    ),
    GetPage(
      name: _Paths.GANTIPASSWORD,
      page: () => const GantipasswordView(),
      binding: GantipasswordBinding(),
    ),
    GetPage(
      name: _Paths.SCANWAJAH2,
      page: () => const Scanwajah2View(),
      binding: Scanwajah2Binding(),
    ),
  ];
}
