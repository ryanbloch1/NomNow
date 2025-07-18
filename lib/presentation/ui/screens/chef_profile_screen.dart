import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ChefProfileScreen extends StatelessWidget {
  const ChefProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // AppBar Row
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.router.maybePop(),
                  ),
                  const Spacer(),
                  const Text(
                    'Chef Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const SizedBox(height: 8),
              // Chef Image
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=facearea&w=256&q=80',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Chef Name & Info
              Center(
                child: Column(
                  children: const [
                    Text(
                      'Chef Isabella',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '4.8 · 120+ ratings',
                      style: TextStyle(
                        color: Color(0xFFB98080),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Italian Cuisine',
                      style: TextStyle(
                        color: Color(0xFFB98080),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Menu Section
              const Text(
                'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              _MenuList(),
              const SizedBox(height: 24),
              // Availability Section
              const Text(
                'Availability',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              _AvailabilityList(),
              const Spacer(),
              // Order Now Button
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE53935),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    onPressed: () {
                      // TODO: Implement order action
                    },
                    child: const Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuList extends StatelessWidget {
  const _MenuList();

  @override
  Widget build(BuildContext context) {
    final menu = [
      {
        'name': 'Pasta Carbonara',
        'price': '15',
        'image': 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=80&q=80',
      },
      {
        'name': 'Margherita Pizza',
        'price': '12',
        'image': 'https://images.unsplash.com/photo-1542281286-9e0a16bb7366?auto=format&fit=crop&w=80&q=80',
      },
      {
        'name': 'Tiramisu',
        'price': '10',
        'image': 'https://images.unsplash.com/photo-1519864600265-abb23847ef2c?auto=format&fit=crop&w=80&q=80',
      },
    ];
    return Column(
      children: menu.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item['image']!,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      ' 24${item['price']}',
                      style: const TextStyle(
                        color: Color(0xFFE53935),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _AvailabilityList extends StatelessWidget {
  const _AvailabilityList();

  @override
  Widget build(BuildContext context) {
    final availability = [
      'Monday: 6 PM - 10 PM',
      'Tuesday: 6 PM - 10 PM',
      'Wednesday: 6 PM - 10 PM',
      'Thursday: 6 PM - 10 PM',
      'Friday: 6 PM - 11 PM',
      'Saturday: 6 PM - 11 PM',
      'Sunday: 6 PM - 10 PM',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: availability.map((day) => Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Text(
          day,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
      )).toList(),
    );
  }
} 