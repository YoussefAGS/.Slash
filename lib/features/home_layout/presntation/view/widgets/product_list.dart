import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/features/home_layout/presntation/view/widgets/product_Item.dart';
import '../../../domain/entities/product_entity.dart';
import '../../bloc_logic/product_cupit/product_bloc.dart';
import 'custom_sectionTitle.dart';

class CustomProductList extends StatelessWidget {
   CustomProductList({super.key,required this.title});
  String title ;


  @override
  Widget build(BuildContext context) {
    return    BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(state is ProductError){
          return Center(
            child: Text("Error"),
          );

        }
        else if(state is ProductLoaded) {
          List<ProductEntity> products;
          if(title=="Best Selling"){
            products=state.bestSelling;
          }
          else if(title=="New Arrival"){
            products=state.newArrival;
          }
          else{
            products=state.recommendedForYou;
          }
          return Column(
            children: [
              CustomSectionTitle(title: title),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) => Container(
                    width: 116,
                    child: ProductItem(product: products[index]),
                  ),
                  separatorBuilder:
                      (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              )
            ],
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    )
    ;
  }
}
