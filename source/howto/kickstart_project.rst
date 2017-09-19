Kickstart new project
=====================

Adding *Uplift* to a new project is simple.

1. Add either *source* or *compiled DLL* in the ``Assets/``
   directory in your project.  Once this happened, *Uplift* is going to generate ``Upfile.xml`` for you
   in the project root [#upfile_location]_.

2. Once you've done this step you can `add your first repository <add_repository>` and start adding packages.

3. Finally, from Unity 3D select :menuselection:`Uplift --> Install Dependencies` to see all fall in place.


You might want to see also:

- `../recommendations/working_with_modules` guide, on how to work with modularized project
  efficiently
- `caveats-dllcode`

.. [#upfile_location] ``Upfile.xml`` is outside of ``Assets/`` directory, which means it is **not
                      visible** in Unity 3D. Please open file manually in your favorite editor.
