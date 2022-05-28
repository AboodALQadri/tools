import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/screens/accepted_tab.dart';
import 'package:tools/screens/all_app_tab.dart';
import 'package:tools/screens/under_review_tab.dart';
import 'package:tools/widgets/text_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.kPrimaryColor,
        elevation: 0,
        toolbarHeight: 20,
        bottom: TabBar(
          indicatorColor: MyColors.kTabColor,
          controller: _tabController,
          onTap: (int value) {
            setState(() {
              _tabController.index = value;
            });
          },
          tabs: const [
            Tab(
              child: TextUtils(
                text: 'الكل',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                underLine: TextDecoration.none,
              ),
            ),
            Tab(
              child: TextUtils(
                text: 'قيد المراجعة',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                underLine: TextDecoration.none,
              ),
            ),
            Tab(
              child: TextUtils(
                text: 'المقبولة',
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,
                underLine: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AllAppTab(),
          UnderReviewTab(),
          AcceptedTab(),

        ],
      ),
    );
  }
}
