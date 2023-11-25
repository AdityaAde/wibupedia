import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../component/theme/theme.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widgets/widgets.dart';
import '../../../../extensions/extension.dart';

import '../../authentication.dart';

class FormFieldSignupWidget extends StatefulWidget {
  const FormFieldSignupWidget({
    super.key,
  });

  @override
  State<FormFieldSignupWidget> createState() => _FormFieldSignupWidgetState();
}

class _FormFieldSignupWidgetState extends State<FormFieldSignupWidget> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final ValueNotifier<bool> _obsecurePasswordText;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _obsecurePasswordText = ValueNotifier<bool>(false);
  }

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthenticationCubit>();
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'Create to Your Account',
            style: AppStyle.materialTextStyle.headlineLarge,
          ),
          const SizedBox(height: 32),
          TextfieldElipticalWidget(
            hint: 'Email',
            prefixIcon: Assets.icons.emailIcon.image(),
            controller: _emailController,
            validator: (value) {
              if (value?.isValidEmail() ?? false) {
                return null;
              } else {
                return 'Please enter a valid email address';
              }
            },
          ),
          const SizedBox(height: 20),
          ValueListenableBuilder<bool>(
            valueListenable: _obsecurePasswordText,
            builder: (context, value, _) => TextfieldElipticalWidget(
              hint: 'Password',
              obsecureText: value,
              prefixIcon: Assets.icons.lockIcon.image(),
              suffixIcon: InkWell(
                child: Icon(
                  value ? Icons.visibility_off : Icons.visibility,
                  color: AppColor.ink03,
                ),
                onTap: () =>
                    _obsecurePasswordText.value = !_obsecurePasswordText.value,
              ),
              controller: _passwordController,
              validator: (value) {
                if (value!.length < 6) {
                  return 'Password must 6 characters';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                authCubit.signUpWithEmail(
                  _emailController.text,
                  _passwordController.text,
                );
              }
            },
            child: const Text('Sign up'),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
