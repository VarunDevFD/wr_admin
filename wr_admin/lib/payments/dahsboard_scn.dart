import 'package:flutter/material.dart';
import 'package:wr_admin/items_approval/widgets/dropdown_model.dart';
import 'package:wr_admin/theme/app_theme.dart';
import 'package:wr_admin/widgets/side_bar_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    final List<String> items = [
      "UPI ID",
      "Name",
    ];
    final List<String> items2 = ["Status", "Completed"];

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 240,
            height: h,
            color: AppTheme.primaryShadowColor,
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Icon(Icons.ac_unit),
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SidebarItem(icon: Icons.dashboard, title: "Dashboard"),
                      SidebarItem(icon: Icons.people, title: "Users"),
                      SidebarItem(icon: Icons.shopping_cart, title: "Orders"),
                      SidebarItem(icon: Icons.inventory, title: "Products"),
                      SidebarItem(icon: Icons.bar_chart, title: "Reports"),
                      SidebarItem(icon: Icons.analytics, title: "Analytics"),
                      SidebarItem(icon: Icons.message, title: "Messages"),
                      SidebarItem(
                          icon: Icons.notifications, title: "Notifications"),
                      SidebarItem(icon: Icons.settings, title: "Settings"),
                      SidebarItem(icon: Icons.payment, title: "Billing"),
                      SidebarItem(icon: Icons.support_agent, title: "Support"),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 120,
                  child: SidebarItem(
                    icon: Icons.logout,
                    title: "Logout",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              SizedBox(
                width: w,
                height: 56,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Payments Management",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 48,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(145, 158, 158, 158),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromARGB(255, 228, 226, 226),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: AppTheme.blackShadow,
                          ),
                          Expanded(
                            child: Text(
                              "Search user by name, email and phone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.blackShadow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    IconButton(
                      icon: Icon(Icons.notifications_none_rounded),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 50),
                          padding: EdgeInsets.all(12),
                          height: 48,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color.fromARGB(255, 228, 226, 226),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: AppTheme.blackShadow,
                              ),
                              Expanded(
                                child: Text(
                                  "Search user by name, email and phone",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppTheme.blackShadow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: DropdownModel(
                            controller: items[0],
                            hintText: 'Categorys',
                            items: items,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: DropdownModel(
                            controller: items2[0],
                            hintText: 'Providers',
                            items: items2,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                'assets/images/empty_scn.png',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            Positioned.fill(
                              child: Container(
                                color: Colors.white.withValues(alpha: 0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
