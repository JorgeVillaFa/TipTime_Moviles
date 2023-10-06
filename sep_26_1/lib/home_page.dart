import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sep_26_1/providers/home_page_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? currentSelectedRadio;
  var radioGroup = {
    20: "Amazing (20%)",
    18: "Good (18%)",
    15: "Okay (15%)",
  };

  radioGroupGenerator() {
    return radioGroup.entries
        .map(
          (entry) => ListTile(
            title: Text("${entry.value}"),
            leading: Radio(
              value: entry.key,
              groupValue: currentSelectedRadio,
              onChanged: (newValue) {
                currentSelectedRadio = newValue;
                setState(() {});
              },
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Time'),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: context.watch<HomeProvider>().getCost,
              decoration: InputDecoration(
                labelText: "Cost of service",
                icon: Icon(
                  Icons.store,
                  color: Colors.green[900],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.room_service,
                  color: Colors.green[900],
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "How was the service?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: radioGroupGenerator(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_outward,
                      color: Colors.green[900],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Round up tip?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Switch(
                  value: context.watch<HomeProvider>().getSwitch,
                  onChanged: (bool value) {
                    context.read<HomeProvider>().changeSwitch(value);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              onPressed: () {
                context
                    .read<HomeProvider>()
                    .calculateTip(currentSelectedRadio!);
              },
              color: Colors.green[900],
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Tip Amount: ${context.watch<HomeProvider>().getTip}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
