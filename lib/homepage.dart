import 'package:flutter/material.dart';
import 'package:frinzy_chat/chatmessage.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final List<Chatmessage> _messages = <Chatmessage> [];

  void _handlesubmitted(String text)
  {
    _textcontroller.clear();
    Chatmessage message = new Chatmessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  final TextEditingController _textcontroller = new TextEditingController();

  Widget _textcomposerWidget()
  {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Send message',
              ),
              controller: _textcontroller,
              onSubmitted: _handlesubmitted,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
                  onPressed: (){
                    _handlesubmitted(_textcontroller.text);
                    },
                  icon: Icon(Icons.send),
               ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
              itemBuilder: (_,int index) => _messages[index] ,
            itemCount: _messages.length,
            padding: EdgeInsets.all(8.0),
              reverse: true,
            ),
        ),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textcomposerWidget(),
        ),
      ],
    );
  }
}
