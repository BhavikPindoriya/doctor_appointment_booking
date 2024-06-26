import 'package:doctor_appoinment_booking/utils/textThemes/textThemes.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Center(
                child: TicketWidget(
                    width: 310,
                    height: 430,
                    isCornerRounded: true,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Booked Successfully",
                            style: TextThemes.subHeadingTitle
                                .copyWith(color: Colors.black, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 25, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Name",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                "Booking Date",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sreejith",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "05-05-2024",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Doctor",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                "Booked Slot",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.grey, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Dr. John Doe",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                "5:30Pm",
                                style: TextThemes.subHeadingTitle
                                    .copyWith(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 30, right: 30),
                                child: Image.asset('assets/barcode.png'))),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 1, left: 20, right: 20, bottom: 10),
                          child: Text('Developer:www.linkedin.com/sreejithhkm'),
                        )
                      ],
                    ))),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextThemes.subHeadingTitle
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
