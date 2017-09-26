Publish Package
===============

*Uplift* doesn't have any specific format for your package. In order for *Uplift* to work with your
packages it only needs two things:

- Asset files (code, images, anything that you want to be in your project)
- `./files/upset`

You might wonder how to pack those things together and the answer for this is, that depends on
`used repository type <../repository/supported_repositories>`.

For example, `../repository/file_repository` expects your asset files to be packed as
``.unitypackage`` and the ``Upset.xml`` file to be renamed so it would match the basename for Unity
package, for example:

    SomePackage~1.0.0.unitypackage  # this is where asset files are
    SomePackage~1.0.0.xml           # this is renamed Upset.xml file
    OtherPackage~0.3.2.unitypackage
    OtherPackage~0.3.2.xml
    abc~0.0.1.unitypackage
    abc~0.0.1.xml

So when you're preparing your package you need to figure out first, for which repository type you
want to publish it first.

As repositories type publish procedure complexity can range from being  as simple as putting file in
a specified directory to having to go through multi-step publishing procedure it's best to consult
specified ``repository docs<../repository/supported_repositories>``.
