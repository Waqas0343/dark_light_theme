import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/app_button.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
   const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ?  Color(0xFF121212) : Colors.white,
      appBar: AppBar(
        title:  AppText('Login', fontWeight: FontWeight.bold),
        backgroundColor:
        isDark ? Colors.blueGrey.shade900 :  Color(0xFF3876F2),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 40),
             AppText(
              'Welcome Back 👋',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
             SizedBox(height: 8),
            AppText(
              'Login to continue using the app',
              color: isDark ? Colors.grey[400] : Colors.grey[600],
            ),
             SizedBox(height: 40),

            AppTextField(
              controller: controller.emailController,
              label: 'Email',
              icon: Icons.email,
            ),
             SizedBox(height: 20),

            Obx(() => AppTextField(
              controller: controller.passwordController,
              label: 'Password',
              icon: Icons.lock,
              obscureText: !controller.isPasswordVisible.value,
              showSuffix: true,
              onSuffixTap: controller.togglePasswordVisibility,
            )),

             SizedBox(height: 30),

            Obx(() => AppButton(
              label: 'Login',
              isLoading: controller.isLoading.value,
              onPressed: controller.login,
            )),
          ],
        ),
      ),
    );
  }
}
