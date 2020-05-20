pub run intl_translation:generate_from_arb --output-dir lib/src/i18n \
        lib/src/locale/length_per_time.dart \
        lib/src/locale/length_per_volume.dart \
        lib/src/locale/length.dart \
        lib/src/locale/mass_per_length.dart \
        lib/src/locale/mass.dart \
        lib/src/locale/pressure.dart \
        lib/src/locale/temperature.dart \
        lib/src/locale/time.dart \
        lib/src/locale/volume_per_length.dart \
        lib/src/locale/volume.dart \
        --codegen_mode release \
        lib/src/i18n/intl_*.arb