import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;
  final String country;
  final String job;
  const PersonCard(
      {required this.name,
      required this.age,
      required this.imageUrl,
      required this.country,
      required this.job,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ImgAndNameStack(imageUrl: imageUrl, name: name),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _createPersonInfoRow(
                    context: context, key: 'Age', value: age.toString()),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(context: context, key: 'Job', value: job),
                const SizedBox(
                  height: 4,
                ),
                _createPersonInfoRow(
                    context: context, key: 'Country', value: country),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _createPersonInfoRow(
      {required String key,
      required String value,
      required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            '$key : ',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}

class ImgAndNameStack extends StatelessWidget {
  const ImgAndNameStack({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white54,
          ),
          child: Center(
            child: Text(
              name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
      ],
    );
  }
}
