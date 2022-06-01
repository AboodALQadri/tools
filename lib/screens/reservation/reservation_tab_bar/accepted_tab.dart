import 'package:flutter/material.dart';
import 'package:tools/widgets/reservation/list_tile_widget.dart';

class AcceptedTab extends StatefulWidget {
  const AcceptedTab({Key? key}) : super(key: key);

  @override
  State<AcceptedTab> createState() => _AcceptedTabState();
}

class _AcceptedTabState extends State<AcceptedTab> {
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
                    'https://images.unsplash.com/photo-1653954728092-4268b4f08d6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
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
