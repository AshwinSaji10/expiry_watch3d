import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class CustomListTile extends StatelessWidget {
  final void Function()? onTap;
  const CustomListTile({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/placeholder.png',
                width: 30,
                height: 30,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [Text('Item Name'), Text('Expiry Date')],
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: onTap,
          ),
        ],
      ),
    );
  }
}
