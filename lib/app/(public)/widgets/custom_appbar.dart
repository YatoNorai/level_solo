import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:level_solo/app/(public)/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    super.key,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      color: const Color.fromARGB(255, 21, 21, 21)
          .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(
              'assets/icons/app_bar_image.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /*  _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                ), */
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amberAccent,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          // Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  onTap: () => print('Home'),
                ),
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'Latest',
                  onTap: () => print('Latest'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Search'),
                ),
                _AppBarButton(
                  title: 'KIDS',
                  onTap: () => print('KIDS'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => print('DVD'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print('Notifications'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const _AppBarButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
