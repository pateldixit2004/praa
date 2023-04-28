import 'package:flutter/material.dart';
import 'package:praa/Date_time/provider/date_time_provider.dart';
import 'package:provider/provider.dart';

class Data_view extends StatefulWidget {
  const Data_view({Key? key}) : super(key: key);

  @override
  State<Data_view> createState() => _Data_viewState();
}

class _Data_viewState extends State<Data_view> {
  dateprovider? providerF;
  dateprovider? providerT;
  var scaffoldkey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<dateprovider>(context, listen: false);
    providerT = Provider.of<dateprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {

                showModalBottomSheet(context: context, builder: (context) {
                  return BottomSheet(onClosing: () {

                  }, builder: (context) {
                    return Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.lightBlue,
                      child: Center(child: Text("Jay Shree Krishna")),
                    );
                  },);
                },);

              }, child: Text("show Botton sheet")),

              SizedBox(height: 20,),

              ElevatedButton(
                  onPressed: () async {
                    DateTime? pickdate = await showDatePicker(
                        context: context,
                        initialDate: providerT!.data,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030));
                  providerT!.changedate(pickdate!);
                  },
                  child: Text("Date ")),
              SizedBox(height: 20,),
              Text(
                  "${providerT!.data.day}-${providerT!.data.month}-${providerT!.data.year}"),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                TimeOfDay? picktime= await showTimePicker(context: context, initialTime: TimeOfDay.now(),);

                providerT!.chanetime(picktime!);
              }, child: Text("time")),
              SizedBox(height: 20,),
              Text("${providerT!.time.hour}-${providerT!.time.minute}")
            ],
          ),
        ),
      ),
    );
  }
}
