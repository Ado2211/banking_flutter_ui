import 'package:banking_flutter_ui/app/modules/home/bindings/home_binding.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:banking_flutter_ui/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyMedium: GoogleFonts.manrope(textStyle: textTheme.bodyMedium),
          ),
        ),
        title: 'Autoskola quiz app',
        getPages: AppPages.routes,
        initialRoute: Routes.ONBOARDING,
        initialBinding: OnboardingBinding(),
      ),
    );
  }
}
