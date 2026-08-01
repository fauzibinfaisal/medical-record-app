import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _identityNumberController =
      TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obscurePassword = true;

  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _identityNumberController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hai, ',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              height: 1.05,
                              letterSpacing: -1.0,
                              color: AppColors.primaryDark,
                            ),
                          ),
                          TextSpan(
                            text: 'Selamat Datang',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w800, // ExtraBold
                              fontSize: 28,
                              height: 1.05,
                              letterSpacing: -1.0,
                              color: AppColors.primaryDark,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Silahkan register untuk melanjutkan',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Transform.translate(
                    offset: const Offset(23, -20),
                    child: Image.asset(
                      'lib/assets/images/img-login.png',
                      height: 280,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              Transform.translate(
                offset: const Offset(0, -30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel(context, 'Nama Depan'),

                                const SizedBox(height: 10),

                                _buildTextField(
                                  controller: _firstNameController,
                                  hint: 'John',
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 16),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLabel(context, 'Nama Belakang'),

                                const SizedBox(height: 10),

                                _buildTextField(
                                  controller: _lastNameController,
                                  hint: 'Doe',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      _buildLabel(context, 'No. KTP'),

                      const SizedBox(height: 10),

                      _buildTextField(
                        controller: _identityNumberController,
                        hint: 'Masukkan nomor KTP anda',
                        keyboardType: TextInputType.number,
                      ),

                      const SizedBox(height: 24),

                      _buildLabel(context, 'Email'),

                      const SizedBox(height: 10),

                      _buildTextField(
                        controller: _emailController,
                        hint: 'Masukkan email anda',
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 24),

                      _buildLabel(context, 'No. Telepon'),

                      const SizedBox(height: 10),

                      _buildTextField(
                        controller: _phoneController,
                        hint: 'Masukkan nomor telepon anda',
                        keyboardType: TextInputType.phone,
                      ),

                      const SizedBox(height: 24),

                      _buildLabel(context, 'Password'),

                      const SizedBox(height: 10),

                      _buildPasswordField(
                        controller: _passwordController,
                        hint: 'Masukkan password anda',
                        obscureText: _obscurePassword,
                        onToggle: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),

                      const SizedBox(height: 24),

                      _buildLabel(context, 'Konfirmasi Password'),

                      const SizedBox(height: 10),

                      _buildPasswordField(
                        controller: _confirmPasswordController,
                        hint: 'Masukkan kembali password',
                        obscureText: _obscureConfirmPassword,
                        onToggle: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),

                      const SizedBox(height: 36),

                      SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0B2C6B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              const Center(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Positioned(
                                right: 0,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 36),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sudah punya akun ?',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: AppColors.textSecondary),
                          ),
                          TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text(
                              'Login sekarang',
                              style: TextStyle(
                                color: Color(0xFF002060),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      Center(
                        child: Text(
                          '© SILK. all right reserved.',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppColors.textSecondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: AppColors.primaryDark,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 24,
            color: Color(0x11000000),
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF597393)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String hint,
    required bool obscureText,
    required VoidCallback onToggle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 24,
            color: Color(0x11000000),
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF597393)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          suffixIcon: IconButton(
            onPressed: onToggle,
            icon: Icon(
              obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
