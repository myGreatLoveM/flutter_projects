import 'package:flutter/material.dart';

import 'widgets/avatar_network_image.dart';
import 'widgets/first_column_container.dart';
import 'widgets/layout_builder_child_container.dart';
import 'widgets/media_query_container.dart';
import 'widgets/person_card.dart';
import 'widgets/row_expanded.dart';
import 'widgets/second_column_container.dart';
import 'widgets/second_page_button.dart';
import 'widgets/snack_bar_example.dart';
import 'widgets/stack_image_asset_caption.dart';
import 'package:demo_app/presentation/components/custom_button.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Basics',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Container(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const RowExpanded(),
              const SizedBox(
                height: 30,
              ),
              const FirstColumnContainer(),
              const SizedBox(
                height: 30,
              ),
              const SecondColumnContainer(),
              const SizedBox(
                height: 30,
              ),
              const StackImageAssetCaption(),
              const SizedBox(
                height: 30,
              ),
              const AvatarNetworkImage(),
              const SizedBox(
                height: 30,
              ),
              const MediaQueryContainer(),
              const SizedBox(
                height: 30,
              ),
              Builder(
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.teal,
                    child: const Center(
                      child: Text('Free Builder function'),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const LayoutBuilderChildContainer(),
              const SizedBox(
                height: 30,
              ),
              const SecondPageButton(),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, '/screenOne');
                },
                icon: Icons.home_filled,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, '/screenTwo');
                },
                icon: Icons.local_cafe,
                iconColor: Colors.black54,
              ),
              const SizedBox(
                height: 30,
              ),
              const PersonCard(
                name: 'Prem',
                age: 25,
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/e/e7/Leucanthemum_vulgare_%27Filigran%27_Flower_2200px.jpg',
                country: 'India',
                job: 'Govt Servent',
              ),
              const SizedBox(
                height: 30,
              ),
              const PersonCard(
                name: 'Radhe',
                age: 23,
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/en/3/3f/Oxalis_tetraphylla_flower.jpg',
                country: 'India',
                job: 'I am not a lover, I am a Rebel',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavigationBarExample(),
      floatingActionButton: const SnackBarExample(),
    );
  }
}
