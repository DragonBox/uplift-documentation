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
