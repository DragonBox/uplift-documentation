Extract Module
==============

When working with *Uplift*, at some point you might want to extract some part of your game into a
reusable module, that you are going to use when developing next game.

1. Identify module in your project

   First, you need to identify what exactly you would like to extract from your project.

   In order to do that you need to identify *complete* part of the code and assets, that are going
   to be shareable between your projects.

2. Find & isolate dependencies (possibly: modularize dependencies first)

   It might be that the code you would want to modularize depends on other pieces of code, that
   don't belong to the same package (for example your texts depend on translation, but you don't
   want to pack them both in the same package).

   If you have such dependencies, it would be best to work with them first and them down to your
   package. Optionally, you can ignore that and include them in your package

3. (Optional) Wrap in namespace

   While it's optional we highly recommend you do this. If you have only couple of files, wrapping
   them into C# namespaces is a great way to make sure your code stays isolated.

4. Extract code using Unity's export feature to .unitypackage

   It is important, because when creating package it's critical to provide ``.meta`` files, which
   contain GUIDs (asset identifiers to Unity). Without them *Uplift* relation between your files
   will be broken and most likely your package is going to stop working.

5. Open extracted module in Unity to verify that the module doesn't have not-found dependencies

   To make sure that you haven't missed anything it's for the best to create new project and put
newly exported ``.unitypackage`` inside. That way you can confirm if everything went fine before
`uplifting <uplifting_packages>`.

6. `Create Upset.xml file<../files/upset>`
7. `publish_package`
