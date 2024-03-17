import 'package:flutter/material.dart';
import 'package:pams_max_ng/ui/utilities/validation.dart';
import 'package:pams_max_ng/ui/views/login/login_view.form.dart';
import 'package:pams_max_ng/ui/widgets/common/primary_button/primary_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  //form key - for validation usecases
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(flex: 1, child: Container()),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Color(0xFF484848)),
                  child: const Text(
                    'PAMS',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Pipeline Activation',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF484848),
                  ),
                ),
                const Text(
                  'Management system',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF484848),
                  ),
                ),
                const Text(
                  'PAMS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF484848),
                  ),
                ),
                const SizedBox(height: 44),

                ///Email
                const Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF3E3E3E),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  autofillHints: const [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                  validator: Validation.validateEmail,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                ///Password
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF3E3E3E),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  obscureText: viewModel.hidePassword,
                  validator: Validation.validateField,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                ///Login
                PrimaryButton(
                  buttonText: 'LOGIN TO MY ACCOUNT',
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      viewModel.login();
                    }
                  },
                ),
                const SizedBox(height: 30),

                ///Forgot Password
                const Center(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFFE88E15),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFE88E15),
                    ),
                  ),
                ),

                ///Forgot Password
                Flexible(flex: 1, child: Container()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
