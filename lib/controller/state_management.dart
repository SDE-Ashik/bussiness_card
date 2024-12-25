import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateProvider to manage the selected template globally
final selectedTemplateProvider = StateProvider<Widget?>((ref) => null);
