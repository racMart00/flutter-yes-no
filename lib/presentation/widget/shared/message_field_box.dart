import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue
  });

  @override
  Widget build(BuildContext context) {
    final textControler = TextEditingController();
    final focusNode = FocusNode();

    // final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent ),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: (){
            final textValue = textControler.value.text;
            textControler.clear();
            onValue(textValue);
          },
        ),
      );

    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textControler,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          textControler.clear();
          focusNode.requestFocus();
          onValue(value);
        },
      ),
    );
  }
}