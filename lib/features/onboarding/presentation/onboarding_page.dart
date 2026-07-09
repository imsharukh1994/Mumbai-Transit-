import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/onboarding_controller.dart';
import '../domain/onboarding_slide.dart';

/// Onboarding flow with paged feature highlights.
class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _animateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final slides = ref.watch(onboardingSlidesProvider);
    final currentPage = ref.watch(onboardingControllerProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to Mumbai Transit+',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Stay ahead of weather, trains, metro, traffic and community alerts.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: PageView.builder(
                  itemCount: slides.length,
                  controller: _pageController,
                  onPageChanged: (index) => ref.read(onboardingControllerProvider.notifier).setPage(index),
                  itemBuilder: (context, index) {
                    final slide = slides[index];
                    return _OnboardingSlideCard(slide: slide);
                  },
                ),
              ),
              const SizedBox(height: 24),
              _OnboardingIndicator(currentIndex: currentPage, itemCount: slides.length),
              const SizedBox(height: 24),
              Row(
                children: <Widget>[
                  if (currentPage > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          ref.read(onboardingControllerProvider.notifier).previousPage();
                          _animateToPage(currentPage - 1);
                        },
                        child: const Text('Back'),
                      ),
                    ),
                  if (currentPage > 0) const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        if (currentPage == slides.length - 1) {
                          ref.read(onboardingControllerProvider.notifier).finish(context);
                        } else {
                          ref.read(onboardingControllerProvider.notifier).nextPage(slides.length);
                          _animateToPage(currentPage + 1);
                        }
                      },
                      child: Text(currentPage == slides.length - 1 ? 'Get Started' : 'Next'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingSlideCard extends StatelessWidget {
  const _OnboardingSlideCard({required this.slide});

  final OnboardingSlide slide;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: primary.withAlpha((0.12 * 255).round()),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.travel_explore,
            size: 72,
            color: primary,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          slide.title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          slide.subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _OnboardingIndicator extends StatelessWidget {
  const _OnboardingIndicator({required this.currentIndex, required this.itemCount});

  final int currentIndex;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        itemCount,
        (index) {
          final isActive = index == currentIndex;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: isActive ? 20 : 10,
            height: 10,
            decoration: BoxDecoration(
              color: isActive ? Theme.of(context).colorScheme.primary : Colors.grey.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
