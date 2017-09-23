Make your package support multiple Unity versions
=================================================

From the package perspective, the information provided by the user is the UnityVersion element found under `../files/upset`. This element is mostly for information purpose. As for now, there are no strict guidelines as for which Unity versions are supported by a package and which are not. This means that Uplift will not fail if you try to import a package not supported by it.

The ``.unitypackage`` generated from Unity 4, are, however not supported at all.

If you want your package to work with multiple Unity versions you can either:

a) Make sure that your package works for every version you want to support (and provide minimal requirement in `../files/upset`). Use `Unity Preprocessor Directives` whenever needed.

b) Provide multiple versions for different Unity versions, for example:
   - ``MyPackage`` supports Unity 5+
   - ``MyPackage_5.6`` supports Unity 5.6+
   - ``MyPackage_2017`` supports Unity 2017.1+

   This is obviously not a long term solution and we are investigating adding multiple unity version support into the repositories (tracked internally as UP-111).

.. note::

   At some point we might enforce specific Unity versions, this will be noted both in release notes and *Uplift* itself.

_Unity Preprocessor Directives: https://docs.unity3d.com/Manual/PlatformDependentCompilation.html