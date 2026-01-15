import 'package:flutter/material.dart';

class RpViewContainerLayout extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget? footer;

  const RpViewContainerLayout({required this.header, required this.body, this.footer, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF1E1E2C),
      child: Column(
        children: [
          header,
          const SizedBox(height: 24),
          Expanded(child: body),
          if (footer != null) ...[const SizedBox(height: 24), footer!],
        ],
      ),
    );
  }
}
