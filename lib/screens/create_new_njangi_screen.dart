import 'package:flutter/material.dart';
import 'package:njangi/components/post_requests.dart';  

TextEditingController njangiNameController = TextEditingController();
TextEditingController njangiAmountController = TextEditingController();
TextEditingController njangiNumberController = TextEditingController();
TextEditingController njangiTimelineController = TextEditingController();

class CreateNewNjangi extends StatefulWidget {
  const CreateNewNjangi({super.key});

  @override
  State<CreateNewNjangi> createState() => _CreateNewNjangiState();
}

class _CreateNewNjangiState extends State<CreateNewNjangi> {
  
  String _dropDownValue = 'Enter timeline of njangi';

  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(
      builder: (context, box){
        return Scaffold(
          body: SafeArea(
            child:  Padding(
              padding:   EdgeInsets.all(box.maxHeight * .025),
              child: ListView(  
                children: [
                  const Center(
                    child: Text('Create new njangi',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28
                    ),),
                  ),
                  SizedBox(
                    height: box.maxHeight * .025,
                  ),
                  TextFormField(
                    controller: njangiNameController,
                    decoration:const InputDecoration( 
                      hintText: 'Enter name of njangi',
                    ),
                    
                  ),
                  SizedBox(
                    height: box.maxHeight * .025,
                  ),
                  TextFormField(
                    controller: njangiAmountController,
                    decoration:const InputDecoration( 
                      hintText: 'Enter amount to be contributed',
                    ),
                    
                  ),
                  SizedBox(
                    height: box.maxHeight * .025,
                  ),
                  TextFormField(
                    controller: njangiNumberController,
                    decoration:const InputDecoration( 
                      hintText: 'Enter number of people in njangi (optional)',
                    ),
                    
                  ),
                SizedBox(
                    height: box.maxHeight * .025,
                  ),
              DropdownButton( 
                underline: const Divider(
                  color: Colors.black,
                  thickness: .5,
                ),
      // ignore: unnecessary_null_comparison
      hint: _dropDownValue == null
          ? const Text('Dropdown')
          : Text(
              _dropDownValue,
            ),
      isExpanded: true,
      iconSize: 30.0,
       
      items: ['Daily', 'Weekly', 'Monthly'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue = val!;
          },
        );
      },
    ),
             SizedBox(
                    height: box.maxHeight * .025,
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: const InputDecoration(
                      hintText: 'Invite others to njangi by adding their phone numbers',

                    ),
                  ),
            SizedBox(
                    height: box.maxHeight * .33,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(  
                          borderRadius: BorderRadius.circular(box.maxHeight * .035)
                        )
                      )
                    ),
                    onPressed: ( ){ 
                      createNjangi(njangiNameController.text, njangiAmountController.text, _dropDownValue, context);
                    }, 
                    child: const Text('Create'),
                    )
                ],
              ),
            )
            ),
         );
      },
    );
  }
}