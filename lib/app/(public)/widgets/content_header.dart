import 'package:flutter/material.dart';

import 'package:level_solo/app/injector/models/home_model.dart';
//import 'package:video_player/video_player.dart';
import 'responsive.dart';
import 'vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  final HomeModel featuredContent;

  const ContentHeader({
    super.key,
    required this.featuredContent,
  });

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: _ContentHeaderMobile(featuredContent: featuredContent),
      desktop: _ContentHeaderDesktop(featuredContent: featuredContent),
    );
  }
}

class _ContentHeaderMobile extends StatelessWidget {
  final HomeModel featuredContent;

  const _ContentHeaderMobile({
    super.key,
    required this.featuredContent,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.2, color: Colors.grey[600]!),
            image: DecorationImage(
              image: NetworkImage(featuredContent.animeImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.2, color: Colors.grey[600]!),
            gradient: const LinearGradient(
              colors: [Color.fromARGB(255, 29, 29, 29), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        const Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            // child: Image.asset(featuredContent.animeName),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                color: const Color.fromARGB(255, 200, 196, 196),
                icon: Icons.play_arrow_rounded,
                title: 'Assistir',
                onTap: () => print('Info'),
              ),
              VerticalIconButton(
                icon: Icons.add,
                color: const Color.fromARGB(255, 71, 69, 69),
                title: 'Minha lista',
                onTap: () => print('Minha lista'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContentHeaderDesktop extends StatefulWidget {
  final HomeModel featuredContent;

  const _ContentHeaderDesktop({
    super.key,
    required this.featuredContent,
  });

  @override
  __ContentHeaderDesktopState createState() => __ContentHeaderDesktopState();
}

class __ContentHeaderDesktopState extends State<_ContentHeaderDesktop> {
  // VideoPlayerController _videoController;
  final bool _isMuted = true;

  @override
  void initState() {
    super.initState();
/*     _videoController =
        VideoPlayerController.network(widget.featuredContent.videoUrl)
          ..initialize().then((_) => setState(() {}))
          ..setVolume(0)
          ..play(); */
  }

  @override
  void dispose() {
    // _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*   onTap: () => _videoController.value.isPlaying
          ? _videoController.pause()
          : _videoController.play(), */
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          AspectRatio(
            aspectRatio: /*  _videoController.value.initialized
                ? _videoController.value.aspectRatio
                : */
                2.344,
            child: /*  _videoController.value.initialized
                ? VideoPlayer(_videoController)
                :  */
                Image.network(
              widget.featuredContent.animeImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -1.0,
            child: AspectRatio(
              aspectRatio: /* _videoController.value.initialized
                  ? _videoController.value.aspectRatio
                  : */
                  2.344,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 60.0,
            right: 60.0,
            bottom: 150.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 250.0,
                  // child: Image.asset(widget.featuredContent.animeName),
                ),
                const SizedBox(height: 15.0),
                Text(
                  widget.featuredContent.animeName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(2.0, 4.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    _PlayButton(),
                    const SizedBox(width: 16.0),
                    TextButton.icon(
                      /*   padding:
                          const EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0), */
                      onPressed: () => print('More Info'),
                      // color: Colors.white,
                      icon: const Icon(Icons.info_outline, size: 30.0),
                      label: const Text(
                        'More Info',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    /*   if (_videoController.value.initialized)
                      IconButton(
                        icon: Icon(
                          _isMuted ? Icons.volume_off : Icons.volume_up,
                        ),
                        color: Colors.white,
                        iconSize: 30.0,
                        onPressed: () => setState(() {
                          _isMuted
                              ? _videoController.setVolume(100)
                              : _videoController.setVolume(0);
                          _isMuted = _videoController.value.volume == 0;
                        }),
                      ), */
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      /*  padding: !Responsive.isDesktop(context)
          ? const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0)
          : const EdgeInsets.fromLTRB(25.0, 10.0, 30.0, 10.0), */
      onPressed: () => print('Play'),
      //  color: Colors.white,
      icon: const Icon(Icons.play_arrow, size: 30.0),
      label: const Text(
        'Play',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
