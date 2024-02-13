import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:level_solo/app/(public)/widgets/content_header.dart';
import 'package:level_solo/app/(public)/widgets/content_list.dart';

import 'package:level_solo/app/(public)/widgets/custom_appbar.dart';

import '../injector/atoms/home_atoms.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double offSet = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          offSet = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return RxBuilder(
      builder: (context) {
        final animesDublados = dubladoAnimesState.value;
        final animesTop = topAnimesState.value;
        final animesUpdated = updatedAnimesState.value;
        final animesTrending = trendingAnimesState.value;
        final animesLegendados = legendadosAnimesState.value;
        return animesDublados.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                extendBodyBehindAppBar: true,
                backgroundColor: const Color.fromARGB(255, 21, 21,
                    21) /*   .withOpacity((offSet).clamp(0, 1).toDouble()) */,
                appBar: PreferredSize(
                  preferredSize: Size(size.width, 60.0),
                  child: CustomAppBar(
                    scrollOffset: offSet,
                  ),
                ),
                body: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 80.0,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: ContentHeader(
                          featuredContent: animesTrending[0],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: ContentList(
                          title: 'Em lançamento',
                          contentList: animesTrending,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: ContentList(
                          title: 'Animes dublados',
                          contentList: animesDublados,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: ContentList(
                          isTop: true,
                          title: 'Top animes',
                          contentList: animesTop,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: ContentList(
                          // isOriginals: true,
                          title: 'Ultimos atualizados',
                          contentList: animesUpdated,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(top: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: ContentList(
                          // isOriginals: true,
                          title: 'Legendados',
                          contentList: animesLegendados,
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
