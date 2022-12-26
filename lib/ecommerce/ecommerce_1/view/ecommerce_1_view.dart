import 'package:draggable/components/e_commerce/e_commerce_1/custom_path.dart';
import 'package:draggable/components/e_commerce/e_commerce_1/e_commerce_1_text_field.dart';
import 'package:draggable/constants/app_constants.dart';
import 'package:draggable/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class ECommerce1 extends StatelessWidget {
  const ECommerce1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffb2dffe),
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  smallVerticalSpacer(context),
                  SvgPicture.asset(
                    'assets/svgs/login_bird.svg',
                    height: H(context) * 15,
                  ),
                  smallVerticalSpacer(context),
                  Stack(
                    children: [
                      ClipPath(
                        clipper: RoundedDiagonalPathClipper(),
                        child: Container(
                          //margin: const EdgeInsets.all(10),
                          height: H(context) * 45,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                mediumVerticalSpacer(context),
                                EcommerceTextField(
                                  hint: 'Email address',
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color(0xff0099fa),
                                  ),
                                  controller: context
                                      .read<LoginCubit>()
                                      .emailController,
                                ),
                                smallVerticalSpacer(context),
                                EcommerceTextField(
                                  hint: 'Password',
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Color(0xff0099fa),
                                  ),
                                  controller: context
                                      .read<LoginCubit>()
                                      .passwordController,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: 'Forgot Password'.text.make(),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff008aec),
                          radius: H(context) * 5,
                          child: Icon(
                            Icons.person,
                            size: H(context) * 3,
                            color: const Color(0xffd4c3ec),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: H(context) * 48.3,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: MaterialButton(
                            onPressed: () {},
                            color: const Color(0xff0099fa),
                            shape: const StadiumBorder(),
                            child: 'Login'
                                .text
                                .color(const Color(0xffb4e1fe))
                                .lg
                                .make(),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child:
                        'Sign up'.text.color(const Color(0xff0099fa)).xl.make(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
