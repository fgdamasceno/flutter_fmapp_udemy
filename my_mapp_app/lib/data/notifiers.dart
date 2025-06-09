// Needs: ValueNotifier (holds the data) and ValueListenableBuilder (listen to the data)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDakModeNotifier = ValueNotifier(true);
