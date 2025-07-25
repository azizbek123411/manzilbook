import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:manzilbook/helper/padding/app_padding.dart';
import 'package:manzilbook/helper/route/animateroute.dart';
import 'package:manzilbook/view/widgets/categories_widget/cardbycategory.dart';
import 'package:manzilbook/view/widgets/categories_widget/category_chips.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final h=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: theme.primaryColor,
        title: Text('Category Name'),
        leading: IconButton(
          onPressed: () => goBack(context),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedArrowLeft01,
            color: theme.colorScheme.primary,
          ),
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: h*.08,
            child: CategoryChips()),
          SizedBox(
            height: h*.79,
            child: ListView.builder(
              padding: Dis.only(lr: 10,tb: 8),
              itemCount: 5,
              itemBuilder: (context,index){
              return SizedBox(
                height:h*.42,
                child: Cardbycategory());
            }),
          ),
        ],
      ),
    );
  }
}
