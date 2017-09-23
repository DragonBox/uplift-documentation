Use Version Control With Uplift
===============================

Uplift is a work in progress, so not all has been tested in that area.

There are currently 2 ways to use version control with Uplift:

* **complete**: you version everything Uplift do

	|    Upfile.xml
	|    UPackages/Upbring.xml
	|    UPackages/*                          # all your dependencies
	|    Assets/<YOUR LOCATION>/UPackages/*   # all your dependencies as seen by Unity

	*Advantages*:

	* full control

	*Drawbacks*:

	* you might have conflicts in your Upbring.xml
	* you will have weird meta changes in directories if you nuke/reinstall



* **minimalist**: you only version the Upfile configuration.

	|    Upfile.xml

	*Advantages*:

	* no conflicts

	*Drawbacks*:

	* you need to install/update your dependencies before you build
	* **not fully supported by the Uplift team right now**

In the near future, we will make working with Uplift easier and the the minimalist solution will be the one to work with.