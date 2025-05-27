import 'package:flutter/material.dart';
import 'package:insta_clone/Utility/colors.dart';

class SilverScreenWidget extends StatelessWidget {
  const SilverScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Shwapno",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.deepPurple,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                centerTitle: false,
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$1.000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Current Ranking",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                title: Text("Ranking", style: TextStyle(color: Colors.white)),
              ),
            ),
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              expandedHeight: 140,
              toolbarHeight: 140,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quick Actions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildQuickAction(icon: Icons.send, label: 'Send'),
                          _buildQuickAction(
                            icon: Icons.receipt,
                            label: 'Reciept',
                          ),
                          _buildQuickAction(icon: Icons.add, label: 'Add'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  " Recent Transaction",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return _buildTransactionTitle(
                  title: 'Transaction $index',
                  subtitle: 'Details',
                  ammount: (index.isEven ? '+' : '-') + '\$${(index + 1) * 20}',
                  isPositive: index.isEven,
                );
              }, childCount: 20),
            ),
            SliverFillRemaining(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.deepPurple.withOpacity(0.1),
          child: Icon(icon, color: Colors.deepPurple, size: 30),
        ),
        SizedBox(height: 10),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildTransactionTitle({
    required String title,
    required String subtitle,
    required String ammount,
    required isPositive,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple.withOpacity(0.1),
            child: Icon(
              isPositive ? Icons.arrow_upward : Icons.arrow_downward,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(subtitle),
          trailing: Text(
            ammount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
