Maintain modules
================

Altough a bit out of scope of Uplift itself, here are some tips to follow when maintaining your modules. This is important as you will be making them available through Uplift:

Module layout
--------------

Consistency is important here and we will be adding proper guidelines for module layout and maybe let Uplift help you either generate or check your module layout. In the mean time here are a few tips.

Don't forget that someone might use your package outside of Uplift, so making sure you do not have file or directory conflicts is still important.

So until everyone uses Uplift, make sure to move your files under a directory that will not clash with someone else's project.

API stability
-------------

Namespaces are important. Use them!

Keeping some backward compatibility is also important. Your users. If everyone was following similar versioning rules it would make the task of defining your dependencies and their versions easier.

Be careful with GUIDs. They are to be treated as part of your API. I.e. Don't modify an asset to be something completely different. E.g. if you rename a file and change its content (whether code or media) to be something completely incompatible, it will cause problems for its users.

Versioning of your modules
--------------------------

Use `Semantic Versioning`_.  See `howto-package-versioning`.

Contents / size of your module
------------------------------

Here no specific recommendations regarding size. Sometimes you will have a very small module (e.g. a few assets), sometimes very large. It all depends on the granularity of it.

If your module contains some DLLs, consider moving them out in their own packages and making them dependencies.

Dependencies of your modules
----------------------------

*Which dependencies to list*: only list direct dependencies. If your module doesn't directly depend on a dependency, and only its modules do, do not add it to the list of dependencies.

If your dependency changes and extract a module out of it so that a direct dependency isn't needed anymore, do not forget to revise your dependency list.

*Which version requirement to use*: Uplift supports various types of version requirements. You sometimes need a fixed version ("1.2.3!") to ensure you use a particular version. This means you won't be able to change it. This could cause conflicts if another dependency needs a different version. So be careful when selecting it. 

Most of the time you will prefer a more flexible requirement so that uplift will be able to resolve the proper dependencies based on all those available. In this case you might opt for a:

* lose requirement ("1.2")
* minimal requirement ("1.2+")
* bounded requirement ("1.2.*")

If the module you depend upon follow Semantic Versioning, then you can most probably use a version range similar to "major.*".

Futher reading
--------------

* https://unity3d.com/asset-store/sell-assets/submission-guidelines, in particular section 3
* https://docs.microsoft.com/en-us/dotnet/standard/design-guidelines/index
* https://www.youtube.com/watch?v=heh4OeB9A-c "How To Design A Good API and Why it Matters"

.. _Semantic Versioning: http://semver.org/