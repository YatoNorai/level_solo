import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:level_solo/app/injector/models/home_model.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<HomeModel> contentList;
  final bool isOriginals;

  const ContentList({
    super.key,
    required this.title,
    required this.contentList,
    this.isOriginals = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                TextButton(
                  // style: TextButton.styleFrom(),
                  onPressed: () {},
                  child: Text(
                    'Ver tudo',
                    style: TextStyle(
                      color: Colors.redAccent[300],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: isOriginals ? 320.0 : 200.0,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final HomeModel content = contentList[index];
                return GestureDetector(
                  onTap: () => print(content.animeLink),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    height: isOriginals ? 320.0 : 200.0,
                    width: isOriginals ? 160.0 : 110.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 71, 69, 69),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: content.animeImage,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
