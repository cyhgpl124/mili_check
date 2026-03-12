// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:milicheck/features/security_check/data/datasources/local_db_datasource.dart'
    as _i119;
import 'package:milicheck/features/security_check/data/repositories/security_repository_impl.dart'
    as _i700;
import 'package:milicheck/features/security_check/domain/repositories/security_repository.dart'
    as _i546;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i119.AppDatabase>(() => _i119.AppDatabase());
    gh.lazySingleton<_i546.SecurityRepository>(
        () => _i700.SecurityRepositoryImpl(gh<_i119.AppDatabase>()));
    return this;
  }
}
