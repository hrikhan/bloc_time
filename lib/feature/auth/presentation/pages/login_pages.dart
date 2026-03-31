import 'package:bloc_concept/feature/auth/presentation/bloc/auth_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';

import '../../../../injection_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<AuthBloc>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is AuthSuccess) {
              return Center(child: Text('Welcome ${state.user.name}'));
            } else if (state is AuthError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(
                    LoginEvent('test@test.com', '1234'),
                  );
                },
                child: const Text('Login'),
              ),
            );
          },
        ),
      ),
    );
  }
}
