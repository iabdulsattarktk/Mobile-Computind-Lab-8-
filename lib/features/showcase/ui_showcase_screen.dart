import 'package:flutter/material.dart';
import 'web_page_panel.dart';

class UiShowcaseScreen extends StatelessWidget {
  const UiShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(title: const Text('UI Showcase')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          Text(
            'Flutter Widget Gallery',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          const Text('Common widgets and layout patterns'),
          const SizedBox(height: 16),

          // Container + Row + Icon + Expanded
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF0C4A5E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFF118AB2), width: 1.5),
            ),
            child: const Row(
              children: [
                Icon(Icons.widgets, size: 32, color: Color(0xFF06D6A0)),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Container, Icon and Expanded',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Card with buttons
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Buttons and Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton(
                        onPressed: () => ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                              content: Text('Filled button pressed'),
                            )),
                        child: const Text('Filled Button'),
                      ),
                      OutlinedButton(
                        onPressed: () => ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                              content: Text('Outlined button pressed'),
                            )),
                        child: const Text('Outlined Button'),
                      ),
                      IconButton(
                        tooltip: 'Favorite',
                        onPressed: () => ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                              content: Text('Favorite tapped'),
                            )),
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFFEF476F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Image INSIDE a Card/Container widget (bounded)
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 150,
                    alignment: Alignment.center,
                    color: Colors.black12,
                    child: const Text(
                      'Image could not be loaded',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Image inside a Card widget',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Image.network is placed inside a Card with bounded height (150px) and BoxFit.cover.',
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Flexible example (Lab requires it)
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF0C4A5E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                Icon(Icons.star, color: Color(0xFFFFD166)),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'Flexible: this text takes only the space it needs and wraps if it runs out of room.',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Stack + Positioned
          SizedBox(
            height: 130,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF118AB2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const Positioned(
                  left: 16,
                  top: 16,
                  child: Icon(Icons.school, color: Colors.white, size: 34),
                ),
                const Positioned(
                  left: 16,
                  bottom: 16,
                  child: Text(
                    'Stack: widgets can overlap',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Positioned(
                  right: 16,
                  top: 16,
                  child: Icon(Icons.star, color: Colors.amber, size: 28),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // Responsive GridView
          GridView.count(
            crossAxisCount: width >= 600 ? 4 : 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5,
            children: const [
              _GridTile(icon: Icons.book, label: 'Courses'),
              _GridTile(icon: Icons.event, label: 'Events'),
              _GridTile(icon: Icons.task_alt, label: 'Tasks'),
              _GridTile(icon: Icons.person, label: 'Profile'),
            ],
          ),
          const SizedBox(height: 16),

          const _InfoCard(
            title: 'Responsive Layout',
            text: 'The grid shows 2 columns on narrow screens and 4 columns on wide screens using MediaQuery.sizeOf.',
          ),
          const SizedBox(height: 16),

          // WebView at bottom
          const Text(
            'Embedded Web Page',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          const WebPagePanel(),

          const SizedBox(height: 24),

          // End of Showcase footer (scroll yahan khatam)
          const Center(
            child: Column(
              children: [
                Icon(Icons.check_circle, color: Color(0xFF06D6A0), size: 28),
                SizedBox(height: 6),
                Text(
                  'End of UI Showcase',
                  style: TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _GridTile extends StatelessWidget {
  final IconData icon;
  final String label;
  const _GridTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF0C4A5E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF06D6A0).withValues(alpha: 0.4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: const Color(0xFF06D6A0)),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String text;
  const _InfoCard({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(text, style: const TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}
