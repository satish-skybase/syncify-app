import 'package:data_sync_flutter/controller/home_page_controller.dart';
import 'package:data_sync_flutter/widget/custom/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/homescreen';
  HomeScreen({super.key});
  final hpc = Get.find<HomeScreencontroller>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(235, 62, 65, 75),
          title: const Text("Text Syncer"),
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextField(
                    hintText: "Add title...",
                    textEditingController: hpc.titleEditingController.value,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            hintText: "Last Updated...",
                            enabled: false,
                            textEditingController: hpc.updatedDateController.value,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 117, 184, 119)),
                          onPressed: () {
                            // hpc.createReferenceAddData();

                            hpc.titleValue.value = hpc.titleEditingController.value.text;
                            hpc.getDetail();
                          },
                          child: const Text("Sync"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    maxLine: 23,
                    hintText: "Write message...",
                    textEditingController: hpc.messageEditingController.value,
                    onChange: hpc.dataChange,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
