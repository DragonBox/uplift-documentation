Finding and Resolving GUID Issues
=================================

For various reasons, you might end up having GUID issues in your project while using Uplift. Let's see some of these scenarios.

Why GUIDs are fragile?
----------------------

If you don't track GUIDs, or lose them, Unity will generate a new one and most probably it will generate a different ID for the same asset.

Another breakage can happen if you reuse an asset to do something else.

Let's say you installed a module that came with some examples. You decided you didn't need the examples but prefered to create a feature out of them. After all they might be almost what you need!

To get started you moved out the Examples files into a different area, and started modifying the examples to do what you do.

**Wrong!**

Both Unity and Uplift expects a GUID to be attached to a specific asset. Your new asset is still seen conceptually as the original example code.

If you upgrade your package using Unity, it will try to get the newer version of the Example asset onto your working code. If you ask Uplift to nuke or upgrade you asset, the same conflict will happen.

How to detect and correct issues?
---------------------------------

If something unexpected happens with GUIDs, Uplift will detect issues and propose solutions.

For example before importing dependencies, it checks for potential GUID duplicates and stops the import process right away. Note while Uplfit does its best to not install a dependency with conflicting GUIDs, a `GUID conflict<guid_conflicts>` currently can be discovered in the middle of installing multiple dependencies. In this case, follow Uplift instructions (remove the offending duplicates), before running the Install process again.

When trying to nuke a package, it tries to delete all the file it contained. If for some reason you already have deleted the file, or changed its GUID, Uplift will complain and log in the console. You might have to do some manual cleanup. As always, you shouldn't modify files that Uplift has imported `../uplift/paradigm_shift`.

Not sure what to do?
--------------------

Currently, the easiest way to fix GUID issues is to Nuke and Reinstall all your dependencies. This might take a bit of time though. Of course, you'd better make sure your `project is properly under version control <../howto/prepare_project_for_uplift>`.