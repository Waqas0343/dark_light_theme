import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
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
        title:  CustomText(
          text: 'Login Account',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
        backgroundColor: isDark ? Colors.grey[900] : Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 40),
            CustomText(
              text:  'Welcome Back ',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
             SizedBox(height: 8),
            CustomText(
              text:   'Login to continue using the app',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),

             SizedBox(height: 40),

            CustomTextField(
              controller: controller.emailController,
              hintText: 'Email',
            ),
             SizedBox(height: 20),

            CustomTextField(
              controller: controller.passwordController,
              hintText: 'Password',
            ),
             SizedBox(height: 30),
            CustomButton(
              label: 'Login',
              onPressed: controller.login,
            ),
            SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.register);
                },
                child:  CustomText(
                  text: 'Dont have an account? Register',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
