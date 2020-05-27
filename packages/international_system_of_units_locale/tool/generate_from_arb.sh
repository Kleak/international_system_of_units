pub run intl_translation:generate_from_arb --output-dir lib/src/i18n \
        ../international_system_of_units/lib/src/locale/length_per_time.dart \
        ../international_system_of_units/lib/src/locale/length_per_volume.dart \
        ../international_system_of_units/lib/src/locale/length.dart \
        ../international_system_of_units/lib/src/locale/mass_per_length.dart \
        ../international_system_of_units/lib/src/locale/mass.dart \
        ../international_system_of_units/lib/src/locale/pressure.dart \
        ../international_system_of_units/lib/src/locale/temperature.dart \
        ../international_system_of_units/lib/src/locale/time.dart \
        ../international_system_of_units/lib/src/locale/volume_per_length.dart \
        ../international_system_of_units/lib/src/locale/volume.dart \
        --codegen_mode release \
        lib/src/i18n/intl_*.arb