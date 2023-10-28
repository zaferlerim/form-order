import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikit/const/app_palette.dart';

typedef Place = ({String country, String city, String address, int postcode});

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.fullname,
    required this.place,
  });

  final String fullname;
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: AppPalette.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "${place.country}, ${place.city}, ${place.address}, ${place.postcode}",
                  style: const TextStyle(
                    color: Color(0xffFFFBF9),
                  ),
                )
              ],
            ),
          ),
          SvgPicture.asset('assets/icons/edit.svg')
        ],
      ),
    );
  }
}
