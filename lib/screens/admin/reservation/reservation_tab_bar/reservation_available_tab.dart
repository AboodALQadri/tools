import 'package:flutter/material.dart';
import 'package:tools/widgets/adminWidgets/reservation/reservation_list_tile_widget.dart';

class ReservationAvailableTab extends StatelessWidget {
  const ReservationAvailableTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 530,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/reservation_product_details');
                  },
                  child: reservationListTileWidget(
                      imageUrl:
                          'https://images.unsplash.com/photo-1653954728092-4268b4f08d6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                      title: 'طلب حجز ',
                      subtitle: 'من عبوود القادري',
                      state: 'قبول'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
