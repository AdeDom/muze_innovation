import 'package:flutter/material.dart';
import 'package:muze_innovation/domain/models/home/home_model.dart';
import 'package:muze_innovation/presentation/widget/thump_up_widget.dart';

class DramaCardWidget extends StatelessWidget {
  const DramaCardWidget({
    super.key,
    required this.drama,
    this.id,
  });

  final HomeModel drama;
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        top: 8,
        right: 8,
      ),
      child: Card(
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  drama.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        drama.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        drama.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ThumpUpWidget(id: id),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
