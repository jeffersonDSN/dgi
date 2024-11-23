import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'brand_overview_view_bloc.freezed.dart';
part 'brand_overview_view_event.dart';
part 'brand_overview_view_state.dart';

class BrandOverviewViewBloc
    extends Bloc<BrandOverviewViewEvent, BrandOverviewViewState> {
  BrandOverviewViewBloc({
    required CRUDController<Brand> controller,
  }) : super(const BrandOverviewViewState.empty()) {
    on<BrandOverviewViewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const BrandOverviewViewState.loading());

          var brands = await controller.getAll();

          emit(
            BrandOverviewViewState.loaded(
              brands: brands,
            ),
          );
        },
      );
    });
  }
}
