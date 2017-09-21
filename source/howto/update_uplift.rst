.. _howto-update-uplift:

Update Uplift
=============

Method of updating *Uplift* is dependent on how you have it installed.

**If you have it installed as a binary package**, just replace old ``Uplift.dll`` with the new one,
restart Unity 3D and you're good to go.

.. warning::

   On Microsoft Windows systems you might not be able to update ``Uplift.dll`` in place.  Shut down
   Unity 3D before trying to do so in this case.

.. warning::

   On OSX/Linux new DLL won't take effect unless you restart Unity 3D.


**If you have it installed as a source code**, the best way to replace it is to remove *Uplift*
source directory from the place, where you have installed, and then unpack new release to the same
place.

You don't have to restart. New version should start working right away.

.. note::

   We will have auto-code update someday in future, so stay tuned!
