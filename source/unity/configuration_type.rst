.. _configuration_type:

Configuration types
===================

Uplift provides you with several "tags" to describe what is inside your package. They are the
following. They allow for better describing the content of a package, and empowers the package user
to use it the way he wants to.

The available types are:

* ``Base`` which describes the base of your package, its core.
* ``Media`` so you can separate whichever media file you want from the rest of your package.
* ``Docs`` which should be used to mark documentation, READMEs, or any other "meta" file that should
not be critical to the logical behaviour of your package.
* ``Examples`` is similar to Docs, but is used to mark examples and any other file that illustrates
the way your package works.
.. note:: The following types are linked with items that have a special behaviour. Please read https://docs.unity3d.com/Manual/SpecialFolders.html
* ``Plugin``
* ``EditorPlugin`` similar to Plugins, but for the EditorPlugin
* ``Gizmos``
..note:: The following type is internal only and you should not use it.
* ``Root``