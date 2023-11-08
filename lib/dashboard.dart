import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 10,
                color: Colors.blue,
                child: const SizedBox(height: 160, width: double.infinity),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "DAILY SPENDS",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Text("See all", style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      for (int i = 0; i < 3; i++)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.red[500],
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "Net Banking",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            const Text("Today"),
                          ],
                        )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "WISH LIST",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Text("See all", style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.blue[500],
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
