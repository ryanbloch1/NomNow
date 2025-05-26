import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ChefRegistrationScreen extends StatefulWidget {
  const ChefRegistrationScreen({super.key});

  @override
  State<ChefRegistrationScreen> createState() => _ChefRegistrationScreenState();
}

class _ChefRegistrationScreenState extends State<ChefRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _kitchenNameController = TextEditingController();
  final _cookingStyleController = TextEditingController();
  final List<String> _selectedStyles = [];

  final List<String> _cookingStyles = [
    'Cape Malay',
    'Italian',
    'Asian',
    'Mediterranean',
    'Indian',
    'Mexican',
    'African',
    'Vegan',
    'Bakery',
    'BBQ',
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _kitchenNameController.dispose();
    _cookingStyleController.dispose();
    super.dispose();
  }

  void _showCookingStyleDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Cooking Styles'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _cookingStyles.length,
            itemBuilder: (context, index) {
              final style = _cookingStyles[index];
              return CheckboxListTile(
                title: Text(style),
                value: _selectedStyles.contains(style),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      _selectedStyles.add(style);
                    } else {
                      _selectedStyles.remove(style);
                    }
                  });
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: 80,
                    height: 80,
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
                  const SizedBox(height: 24),
                  // Headline
                  Text(
                    'Tell us about your kitchen!',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  // Name Field
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Your Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.person_outline),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  // Kitchen Name Field
                  TextFormField(
                    controller: _kitchenNameController,
                    decoration: InputDecoration(
                      labelText: 'Your Kitchen Name (Optional)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.restaurant_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Cooking Style Field
                  InkWell(
                    onTap: _showCookingStyleDialog,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Your Primary Cooking Style(s)',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(Icons.restaurant_menu_outlined),
                      ),
                      child: Text(
                        _selectedStyles.isEmpty
                            ? 'Select cooking styles'
                            : _selectedStyles.join(', '),
                        style: TextStyle(
                          color: _selectedStyles.isEmpty
                              ? Colors.grey[600]
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Next Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // TODO: Navigate to next registration step
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
