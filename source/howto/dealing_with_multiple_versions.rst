Deal with multiple Unity versions
====================================

As for now, there are no strict guidelines as for which Unity versions and which are not.
The ``.unitypackage`` generated from Unity 4, are, however not supported at all.

From the package perspective, thing that is checked is Unity version specified in `../files/upset`.

If you want your package to work with multiple Unity versions you can either:

a) Make sure that your package works for every version you want to support (and provide minimal requirement in `../files/upset`)
b) Provide multiple versions for different Unity versions, for example:
   - ``MyPackage 1.x`` supports Unity 5+
   - ``MyPackage 2.x`` supports Unity 5.4+
   - ``MyPackage 3.x`` supports Unity 2017.1+

.. note::

   At some point we might enforce specific Unity versions, this will be noted both in release notes and *Uplift* itself.
