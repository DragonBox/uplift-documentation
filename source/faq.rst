============================
 Frequently Asked Questions
============================

.. _faq-upfile:

Where is my ``Upfile.xml`` file?
================================

``Upfile.xml`` is located in the root of your Project.  Note, that, as
it isn't located under ``Assets/`` directory, you won't be able to see
it in Unity.


Where is my ``.Upfile.xml`` file?
=================================

Your ``.Upfile.xml`` override file is located in Home directory (that is the directory pointed to by
the *HOME* environment variable).

Why can't Uplift use out of box unity packages?
===============================================

Standard unitypackages need to be repackaged together with an *Upset* file in order for Uplift to
work with them. Uplift needs extra information such as name, version, license, dependencies, license
to do its work. See `../files/upset` for more information about the Upset file.

.. _faq-unity-instances:

How to run multiple instances of Unity?
=======================================

We recommend using command line ``u3d``, which is awesome [#u3d]_. You can also run second instance
by running Unity once again, and then select different project to run. For this to work, however,
you need to have :menuselection:`Edit --> Preferences --> General --> Load previous project on start up` **unchecked**


.. _faq-filesystem-linking:

How can I link file system for different projects?
==================================================

For Linux/OSX you can use symbolic links. It's easily done from console using ``ln -s TARGET SOURCE``.

For Windows, symbolic links are available as well (for NTFS filesystems), however they require admin access.
Command, from ``cmd.exe`` to create it is ``mklink /D SOURCE TARGET``.

In case, when admin access is not possible or desired, one can try to use Junction feature instead with command
``mklink /J SOURCE TARGET``.


.. [#u3d] ``u3d`` is a tool that we use that helps with: maintaining multiple unity version,
          automate installation and runs the proper Unity instance for your project
