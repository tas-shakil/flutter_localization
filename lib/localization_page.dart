import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localizationflutter/widget/language_swicher.dart';

class localizatipnPage extends StatefulWidget {
  @override
  State<localizatipnPage> createState() => _localizatipnPageState();
}

class _localizatipnPageState extends State<localizatipnPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text( AppLocalizations.of(context)?.appTitle ?? "Title"),
       actions: [
         LanguageSwitcher()
       ],
       centerTitle: true,
     ),
     body: Center(
       child:
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Center(
               child: ListView(
                 children: [
                   Center(
                     child: Text(
                       AppLocalizations.of(context)?.language ?? "Language",
                       style: const TextStyle(fontSize: 18),

                     ),
                   ),
                   const SizedBox(height: 20,),

                   Text(
                     AppLocalizations.of(context)?.quotes1 ?? "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
                     style: const TextStyle(fontSize: 18),
                   ),
                   
                 ],
               ),
             ),
           ),

           // LanguagePicker()


     ),
   );
  }
}