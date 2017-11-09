===========================
 Caveats of using *Uplift*
===========================

.. _caveats-dllcode:

Using binary (.dll) vs source code
==================================

When using binary:

- When upgrading, you have to restart Unity 3D before new version take effect
- For security reason, it's best for you to actually compile binary by yourself
  (yet, we promise we will take the most precautions to make binary safe for you)

When using source code:

- If you have any errors in your code *Uplift* won't be runnable/reachable from menu
- If you have any unfulfilled dependencies *Uplift* won't be runnable/reachable from menu
- Unless you take care of the staging, Unity will be pre-compiled every time with your software.

Version control cautioness
==========================

If you use source control, you will have to be sure that you are aware of the potential caveats of
Uplift. Because it does not keep your installed packages in version control (see
:ref:`version_control`), you may face situations where you feel like something is broken.

Let's take a look at a practical example using Git:

- I work on a project on branch ``master`` with a dependency on package ``MyCoolPackage`` version ``1.2.8``.
- I create a branch ``update_MyCoolPackage``, so I can update it and make sure I can use the updated version.
- I update my package to version ```1.3.0`` on branch ``update_MyCoolPackage``
- I close Unity if it was open
- I checkout ``master``
- In this specific scenario, it can look like there is an issue, because if I run ``git status``, ``Assets/UPackages`` is mark as untracked (or whatever install destination).

What is the issue there? Because we ignore files from version control, git (or your version control
software) does not handle your packages. Therefore, it doesn't know how to deal with them when
switching branches, and will not put the correct version of the package in your project.

Thankfully, Uplift knows how to handle that. If you reopen Unity, Uplift will automatically install
the last recorded state of the dependencies (see `../files/lockfile`) therefore restoring the
correct state.

In conclusion, when switching branches in version control, it is good practice to reopen Unity, or
to force installation from lockfile ``Tools > Uplift > Debug > Install from lockfile``.