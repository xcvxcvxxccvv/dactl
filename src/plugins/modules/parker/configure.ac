# --enable-parker-plugin=yes/no
AC_ARG_ENABLE([parker-plugin],
              [AS_HELP_STRING([--enable-parker-plugin=@<:@yes/no@:>@],
                              [Build a plugin for a Parker servo drive.])],
              [enable_parker_plugin=$enableval],
              [enable_parker_plugin=no])

# for if ENABLE_PARKER_PLUGIN in Makefile.am
AM_CONDITIONAL(ENABLE_PARKER_PLUGIN, test x$enable_parker_plugin != xno)

# Ensure our makefile is generated by autoconf
AC_CONFIG_FILES([src/plugins/parker/Makefile])
