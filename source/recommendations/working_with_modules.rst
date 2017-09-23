Working with modules
====================

If your module has dependencies, you will end up with both an *Upfile.xml* and an *Upset.xml* in your project. Both contain a bit of similar information: the list of your dependencies.

There's one difference though: in your Upfile you might have other dependencies, maybe internal dependencies that you don't want to share to the world or only use during development.

**Upfile.xml**

    .. code-block:: xml

        <Dependencies>
            <!-- dev dependencies -->
            <Package Name="my.cool.dev.tool" Version="1.*" />
            <!-- runtime dependencies -->
            <Package Name="JsonDotNet" Version="1.3.*" />
        </Dependencies>

**Upset.xml**

    .. code-block:: xml

        <Dependencies>
            <!-- runtime dependencies -->
            <Package Name="JsonDotNet" Version="1.3.*" />
        </Dependencies>
