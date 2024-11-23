import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:flutter/material.dart';

enum SearchCriteriaType { name, number, vehicle, brand }

extension OnSearchCriteriaType on SearchCriteriaType {
  String name(BuildContext context) {
    switch (this) {
      case SearchCriteriaType.name:
        return context.tr.name;
      case SearchCriteriaType.number:
        return context.tr.number;
      case SearchCriteriaType.vehicle:
        return context.tr.vehicle;
      case SearchCriteriaType.brand:
        return context.tr.brand;
      default:
        return context.tr.name;
    }
  }
}
