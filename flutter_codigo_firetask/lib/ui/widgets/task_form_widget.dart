import 'package:flutter/material.dart';
import 'package:flutter_codigo_firetask/models/task_model.dart';
import 'package:flutter_codigo_firetask/services/my_service_firestore.dart';
import 'package:flutter_codigo_firetask/ui/general/colors.dart';
import 'package:flutter_codigo_firetask/ui/widgets/button_normal_widget.dart';
import 'package:flutter_codigo_firetask/ui/widgets/general_widgets.dart';
import 'package:flutter_codigo_firetask/ui/widgets/textfield_normal_widget.dart';

class TaskFormWidget extends StatefulWidget {
  const TaskFormWidget({super.key});

  @override
  State<TaskFormWidget> createState() => _TaskFormWidgetState();
}

class _TaskFormWidgetState extends State<TaskFormWidget> {
  final formKey = GlobalKey<FormState>();
  MyServiceFirestore taskService = MyServiceFirestore(collection: "tasks");
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String categorySelect = "Personal";

  showSelectDate() async {
    DateTime? datetime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      cancelText: "Cancelar",
      confirmText: "Aceptar",
      helpText: "Seleccionar fecha",
      builder: (BuildContext context, Widget? widget) {
        return Theme(
          data: ThemeData.light().copyWith(
            dialogBackgroundColor: Colors.white,
            dialogTheme: DialogTheme(
              elevation: 0,
              backgroundColor: kBrandSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            colorScheme: ColorScheme.light(
              primary: kBrandPrymaryColor,
            ),
          ),
          child: widget!,
        );
      },
    );

    _dateController.text = datetime.toString().substring(0, 10);
    setState(() {});
    }

  registerTask() {
    if (formKey.currentState!.validate()) {
      //
      TaskModel taskModel = TaskModel(
        title: _titleController.text,
        description: _descriptionController.text,
        date: _dateController.text,
        category: categorySelect,
        status: true,
      );
      taskService.addTask(taskModel).then((value) {
        if (value.isNotEmpty) {
          //
          Navigator.pop(context);
          showSnackBarSuccess(context, "La tarea fue registrada con éxito");
        }
      }).catchError((error) {
        //
        showSnackBarError(
            context, "Hubo un inconvenient, inténtalo nuevamente");
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22.0),
          topRight: Radius.circular(22.0),
        ),
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Agregar tarea",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            divider10(),
            TextFieldNormalWidget(
              hintText: "Titulo",
              icon: Icons.text_fields,
              controller: _titleController,
            ),
            divider10(),
            divider10(),
            TextFieldNormalWidget(
              hintText: "Descripción",
              icon: Icons.description,
              controller: _descriptionController,
            ),
            divider10(),
            const Text("Categorías: "),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              spacing: 10.0,
              children: [
                FilterChip(
                  selected: categorySelect == "Personal",
                  backgroundColor: kBrandSecondaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  selectedColor: categoryColor[categorySelect],
                  checkmarkColor: Colors.white,
                  labelStyle: TextStyle(
                    color: categorySelect == "Personal"
                        ? Colors.white
                        : kBrandPrymaryColor,
                  ),
                  label: const Text("Personal"),
                  onSelected: (bool value) {
                    categorySelect = "Personal";
                    setState(() {});
                  },
                ),
                FilterChip(
                  selected: categorySelect == "Trabajo",
                  backgroundColor: kBrandSecondaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  selectedColor: categoryColor[categorySelect],
                  checkmarkColor: Colors.white,
                  labelStyle: TextStyle(
                    color: categorySelect == "Trabajo"
                        ? Colors.white
                        : kBrandPrymaryColor,
                  ),
                  label: const Text("Trabajo"),
                  onSelected: (bool value) {
                    categorySelect = "Trabajo";
                    setState(() {});
                  },
                ),
                FilterChip(
                  selected: categorySelect == "Otro",
                  backgroundColor: kBrandSecondaryColor,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  selectedColor: categoryColor[categorySelect],
                  checkmarkColor: Colors.white,
                  labelStyle: TextStyle(
                    color: categorySelect == "Otro"
                        ? Colors.white
                        : kBrandPrymaryColor,
                  ),
                  label: const Text("Otro"),
                  onSelected: (bool value) {
                    categorySelect = "Otro";
                    setState(() {});
                  },
                ),
              ],
            ),
            divider10(),
            TextFieldNormalWidget(
              hintText: "Fecha",
              icon: Icons.date_range,
              onTap: () {
                showSelectDate();
              },
              controller: _dateController,
            ),
            divider20(),
            ButtonNormalWidget(
              onPressed: () {
                registerTask();
              },
            ),
          ],
        ),
      ),
    );
  }
}
