.. _howto-add-external-dependency:

Add External Dependency
=======================

**Note:** This guide assumes that Dependency you want to add to your Project had already been repackaged into Uplift package. If that's not true, you might have to repackage code yourself, see `repackaging`.

1. (Optional) Add repository at which package resides. See: `add_repository`
2. `Open Upfile.xml <faq-upfile>`
3. In ``<Dependencies></Dependencies>`` node add ``<Package />`` node with *name* and (optionally) *version* such as:

   .. code-block:: xml

      <Dependencies>
        <Package Name="SomePackage" />
      </Dependencies>

4. In Unity select :menuselection:`Uplift --> Install Dependencies`


**Requirements:** dependencies need to contain meta files. When you install a dependency through Uplift, Uplift will make use of the asset GUIDs created by Unity. Those GUIDs are found in the .meta files. It is thus **critical** that all the assets found in your dependencies come with their meta files. See `prepare_project_for_uplift` to make the meta visibles and `../unity/guids` for more information about unity GUIDs. If Uplift doesn't find the asset's meta, it won't be able to track the asset and will stop at the dependency import.
