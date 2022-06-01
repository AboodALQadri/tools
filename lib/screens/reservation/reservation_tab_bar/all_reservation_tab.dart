import 'package:flutter/material.dart';
import 'package:tools/widgets/reservation/list_tile_widget.dart';

class AllReservationTab extends StatefulWidget {
  const AllReservationTab({Key? key}) : super(key: key);

  @override
  State<AllReservationTab> createState() => _AllReservationTabState();
}

class _AllReservationTabState extends State<AllReservationTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/order_details');
                  },
                  child: listTileWidget(
                    imageUrl:
                        'https://images.unsplash.com/photo-1653940355946-5e92f3c53e1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                    title: 'طلب الجهاز الأول',
                    subtitle: 'تم الارسال قبل 15 ساعة',
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
