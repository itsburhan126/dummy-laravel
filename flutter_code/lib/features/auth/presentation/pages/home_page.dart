import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _bannerController =
      PageController(viewportFraction: 0.92);
  int _currentBanner = 0;
  int _selectedCategoryIndex = 0;

  final List<String> _categories = [
    'Hot',
    'New',
    'Categories',
    'Rankings',
    'Originals',
  ];

  final List<_SeriesItem> _featuredBanners = [
    _SeriesItem(
      title: 'Baby Daddy',
      subtitle: 'That\'s Not Your Kid!',
      tag: 'Hot',
      accentColor: const Color(0xFFFF6B6B),
      imageUrl:
          'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Midnight Stories',
      subtitle: 'Secrets in the City',
      tag: 'New',
      accentColor: const Color(0xFF6366F1),
      imageUrl:
          'https://images.pexels.com/photos/1092812/pexels-photo-1092812.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Hidden Affairs',
      subtitle: 'Love, Lies, Power',
      tag: 'Exclusive',
      accentColor: const Color(0xFFF97316),
      imageUrl:
          'https://images.pexels.com/photos/3290199/pexels-photo-3290199.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
  ];

  final List<_SeriesItem> _seriesList = [
    _SeriesItem(
      title: 'My Family Sold Me',
      subtitle: 'Hate-love',
      tag: 'Exclusive',
      accentColor: const Color(0xFFF97316),
      imageUrl:
          'https://images.pexels.com/photos/2837009/pexels-photo-2837009.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'A Blind Date',
      subtitle: 'Little Cupids',
      tag: 'Hot',
      accentColor: const Color(0xFFFB7185),
      imageUrl:
          'https://images.pexels.com/photos/935731/pexels-photo-935731.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Accidentally CEO',
      subtitle: 'Secret Identity',
      tag: 'Exclusive',
      accentColor: const Color(0xFF22C55E),
      imageUrl:
          'https://images.pexels.com/photos/4065876/pexels-photo-4065876.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Friends with Benefit',
      subtitle: 'Sweet',
      tag: 'Exclusive',
      accentColor: const Color(0xFFE11D48),
      imageUrl:
          'https://images.pexels.com/photos/8275295/pexels-photo-8275295.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Victory is in Hand',
      subtitle: 'Counterattack',
      tag: 'Exclusive',
      accentColor: const Color(0xFF6366F1),
      imageUrl:
          'https://images.pexels.com/photos/799420/pexels-photo-799420.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
    _SeriesItem(
      title: 'Train Your CEO',
      subtitle: 'Interactive',
      tag: 'Interactive',
      accentColor: const Color(0xFFFACC15),
      imageUrl:
          'https://images.pexels.com/photos/1181579/pexels-photo-1181579.jpeg?auto=compress&cs=tinysrgb&w=640',
    ),
  ];

  void _showSearchSheet() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: const Color(0xFF020617),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  width: 36,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Search series',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 12),
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Type a title, tag or category',
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Colors.white54,
                  ),
                  filled: true,
                  fillColor: const Color(0xFF111827),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Search results coming soon. Showing curated picks on home for now.',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white60,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSeriesDetails(_SeriesItem item) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: const Color(0xFF020617),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 36,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                item.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      color: Colors.black.withValues(alpha: 0.45),
                    ),
                    child: Text(
                      item.tag,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.schedule_rounded,
                    color: Colors.white54,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Episodes: 12 • 6–8 min',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(this.context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Playing first episode of ${item.title}',
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.play_arrow_rounded),
                        label: const Text(
                          'Play',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 44,
                    width: 56,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white24,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(this.context).showSnackBar(
                          SnackBar(
                            content: Text(
                              '${item.title} added to My List',
                            ),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _bannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 360,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: PageView.builder(
                      controller: _bannerController,
                      itemCount: _featuredBanners.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentBanner = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final item = _featuredBanners[index];
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(12, 40, 12, 52),
                          child: _BannerCard(item: item),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 16,
                    right: 16,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: _showSearchSheet,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(999),
                                color: Colors.white.withValues(alpha: 0.14),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.search_rounded,
                                    color: Colors.white70,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'Baby Daddy That\'s Not Your Kid!',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: Colors.white70,
                                            fontSize: 13,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5722),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Stack(
                            children: [
                              const Center(
                                child: Icon(
                                  Icons.card_giftcard_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Positioned(
                                top: 2,
                                right: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                    vertical: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFF1744),
                                    borderRadius: BorderRadius.circular(999),
                                  ),
                                  child: const Text(
                                    '+30',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFACC15),
                                Color(0xFFF97316),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Text(
                            'VIP',
                            style:
                                Theme.of(context).textTheme.labelMedium?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 190,
                    child: SizedBox(
                      height: 32,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: _categories.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 24),
                        itemBuilder: (context, index) {
                          final selected = index == _selectedCategoryIndex;
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              setState(() {
                                _selectedCategoryIndex = index;
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      _categories[index],
                                      style: TextStyle(
                                        color: selected
                                            ? Colors.white
                                            : Colors.white70,
                                        fontWeight: selected
                                            ? FontWeight.w700
                                            : FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                    ),
                                    if (index == 0) ...[
                                      const SizedBox(width: 4),
                                      const Text(
                                        '🔥',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ],
                                ),
                                const SizedBox(height: 4),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: 2,
                                  width: selected ? 18 : 0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: selected
                                        ? Colors.white
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _featuredBanners.length,
                        (index) {
                          final active = index == _currentBanner;
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            height: 4,
                            width: active ? 18 : 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: active
                                  ? Colors.white
                                  : Colors.white.withValues(alpha: 0.3),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final item = _seriesList[index];
                          return _SeriesCard(
                            item: item,
                            onTap: () => _showSeriesDetails(item),
                          );
                        },
                        childCount: _seriesList.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.58,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 80),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _HomeBottomNav(),
    );
  }
}

class _HomeBottomNav extends StatefulWidget {
  @override
  State<_HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<_HomeBottomNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      _BottomItemData(Icons.home_filled, 'Discover'),
      _BottomItemData(Icons.ondemand_video_rounded, 'Shorts'),
      _BottomItemData(Icons.bookmark_rounded, 'My List'),
      _BottomItemData(Icons.person_rounded, 'My'),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF020617),
      ),
      padding: const EdgeInsets.only(top: 6, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          items.length,
          (index) {
            final selected = index == _currentIndex;
            final item = items[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
                if (index != 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${item.label} coming soon'),
                    ),
                  );
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    item.icon,
                    color: selected ? Colors.white : Colors.white54,
                    size: selected ? 24 : 22,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.label,
                    style: TextStyle(
                      color: selected ? Colors.white : Colors.white54,
                      fontSize: 11,
                      fontWeight:
                          selected ? FontWeight.w600 : FontWeight.w400,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _BannerCard extends StatelessWidget {
  final _SeriesItem item;

  const _BannerCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            item.imageUrl,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  item.accentColor.withValues(alpha: 0.2),
                  const Color(0xFF020617),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 18,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: Colors.black.withValues(alpha: 0.45),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.local_fire_department_rounded,
                    size: 16,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    item.tag,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            right: 18,
            bottom: 22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SeriesCard extends StatelessWidget {
  final _SeriesItem item;
  final VoidCallback onTap;

  const _SeriesCard({
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 0.68,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        color: Colors.black.withValues(alpha: 0.45),
                      ),
                      child: Text(
                        item.tag,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black87,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item.subtitle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.play_circle_fill_rounded,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            item.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _SeriesItem {
  final String title;
  final String subtitle;
  final String tag;
  final Color accentColor;
  final String imageUrl;

  const _SeriesItem({
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.accentColor,
    required this.imageUrl,
  });
}

class _BottomItemData {
  final IconData icon;
  final String label;

  const _BottomItemData(this.icon, this.label);
}

