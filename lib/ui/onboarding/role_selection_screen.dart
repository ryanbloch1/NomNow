import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nom_now/app/router.gr.dart';
import 'package:nom_now/domain/models/enums/user_role.dart';
import 'package:nom_now/domain/services/I_credential_store_service.dart';
import 'package:nom_now/injection.dart';

part 'widgets/role_selection_card.dart';

@RoutePage()
class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Logo at top
              Container(
                padding: const EdgeInsets.all(12),
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/cooking-pot.png',
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 40),
              // Headline
              Text(
                'How would you like to use NomNow?',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Customer Card
              RoleSelectionCard(
                title: "I'm a Customer",
                icon: Icons.shopping_bag_outlined,
                onTap: () async {
                  await sl<ICredentialStoreService>()
                      .saveUserRole(UserRole.customer)
                      .then((_) {
                    context.router
                        .push(const CustomerRegistrationScreenRoute());
                  });
                },
              ),
              const SizedBox(height: 24),
              // Chef Card
              RoleSelectionCard(
                title: "I'm a Chef",
                icon: Icons.restaurant_menu_outlined,
                onTap: () async {
                  await sl<ICredentialStoreService>()
                      .saveUserRole(UserRole.chef)
                      .then((_) {
                    context.router.push(const ChefRegistrationScreenRoute());
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
