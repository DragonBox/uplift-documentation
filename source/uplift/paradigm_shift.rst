Letting Uplift Manage Your Dependencies
=======================================

Before you go on, learn the rule #1 of letting **Uplift** be your Unity package manager.

In the world of software development, Unity is a bit special. Without package manager, assets are often shared in source format and imported into your project as is. This has several benefits like:

* it allows you to modify / fix an imported asset in place

* it allows you to let Unity upgrade APIs accross both your project and its imported dependencies

* it removes the need to prepare a per-platform compiled version of a package, in particular if your package makes uses of per platform defines, such as **UNITY_ANDROID** and the like.

But the fact that these quick operations exist go against the idea of clean module separations. It also can you make forget to fix the issues in a single place, inside your module, where these change belong.

A Paradigm Shift
----------------

When taking over the management of your dependencies, *Uplift requires a little paradigm shift*.

Here's a rule that you should try to follow to make your life easier:

	**Code imported through Uplift shouldn't be modified (by you or Unity) inside your project. A newer version of your dependency should be imported instead**

	(First rule of the book of Uplift)

As you see, this requires you to change your way of working a bit. But you will gain the ability to reuse packages properly accross multiple projects.

If you want to perform the aforementionned quick operations that Unity allows, Uplift might be in the way and you might break it. Don't worry, if you version your code, you should be able to recover easily. And in the future, Uplift will contain features to detect and prevent you from doing things you shouldn't be doing.

Basic Uplift Flow
-----------------

To reiterate, here's the basic uplift flow:

* You add/modify your dependencies
* You ask uplift to install them. Uplift installs them and tracks the assets they contain (thanks to their `GUIDs<../unity/guids>`)
* **You do not touch, move, erase the assets that uplift installed**

Good to go!
-----------

Uplift is there to lift you and your Unity Packages up. Learn how to use it. Learn to follow its flow.

If you understand that, you are now ready to learn more about uplift and try uplift on a project.