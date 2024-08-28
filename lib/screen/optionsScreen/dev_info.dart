import 'package:flutter/material.dart';

class DevInfo extends StatefulWidget {
  const DevInfo({super.key});

  @override
  State<DevInfo> createState() => _DevInfoState();
}

class _DevInfoState extends State<DevInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  width: 150,
                  height: 150,
                  "https://img.freepik.com/free-vector/anonymous-hacker-concept-with-flat-design_23-2147897161.jpg?uid=R148727405&ga=GA1.1.1678511442.1719195487&semt=ais_hybrid",
                ),
              ),
              SizedBox(height: 20),
              Text("Develop by anonymous Team")
            ],
          ),
        ),
      ),
    );
  }
}
