import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String titleappbar ;
  final void Function()? onPressedIcon ;
  final void Function()? onPressedSearch ;
  final void Function(String)? onChanged ;
  final TextEditingController mycontroller ;

  const CustomSearchBar({Key? key, required this.titleappbar, this.onPressedIcon, this.onPressedSearch, this.onChanged, required this.mycontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,

      //margin: EdgeInsets.only(top: 2),
      child: Row(children: [
        Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextFormField(
                controller: mycontroller,
                onChanged: onChanged,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: onPressedSearch,
                  ),
                  hintText: titleappbar,
                  hintStyle: const TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10), // تعيين padding للنص فقط
                ),
              ),
            )),
        const SizedBox(width: 10),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          width: 60,
          padding: const EdgeInsets.symmetric(vertical: 0.5),
          child: IconButton(
              onPressed: onPressedIcon,
              icon: const Icon(
                Icons.filter_list_outlined,
                size: 30,
                color: Colors.black,
              )),
        )
      ]),
    );
  }
}