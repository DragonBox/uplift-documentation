Switching from source codes scripts to DLL
==========================================

Using DLLs into Unity: Pros & Cons
----------------------------------

There are major differences between using source code and DLLs for your project, so here is a quick rundown (not exhaustive) of the pros and cons to using DLLs inside Unity:

**Pros:**

- Tidiness: When using DLLs, you will not have hundreds of scripts laying around and cluttering your project. You could have a single ``Modules`` folder with all of your DLLs inside it.
- Reusability: Creating DLLs may be one of the best ways to ensure that your code isn't necessarily tied to your project and is reusable in other projects as well, which could speed up your future projects by quite a lot.
- Code Redistributing: Using DLLs as a package creator offers some major advantages:
    - when releasing an update to a .unitypackage, if you deleted some scripts between the different releases, the users of the package will have to manually delete them. If they're packed into a DLL, the DLL will get updated and the user won't have to do a thing.
    - they can hide in a very basic way your code if you do not want to make it public. Because DLLs are precompiled, users will not have a direct access to your source code and they will neither be able to mess with it or take a look at it. Do not that in most cases, it will not keep motivated users from having access to the code, thanks to the many decompiling tools available.

**Cons:**

- Interoperability: DLLs require a lot of care when using them on different platforms, and you may encounter errors you wouldn't when using source code. Moreover, you do not have access to Unity's conditional compilation (``#if UNITY_EDITOR``...), which could limit the flexibility of your plugin. Because you do not have access to the directives you may have to do platform-specific DLL compilation. For instance to make up for the fact that you do not have access to ``#if ANDROID`` you may have to compile a generic DLL and an Android-specific DLL.
- Harder debugging
- Security issues: DLLs could be replaced with ill-purposed ones by potential hackers.
- [ALLEGED] Performance issues: I have read at multiple occasions that using DLLs instead of source code could have a small but noticeable performance impact on your project.

How to switch between one another
---------------------------------

**NOTE:** The following assumes that you have all your ``.asset`` files serialized as text files and not as binaries. To do so you can open the Editor Settings window, by going into the menu :menuselection:`Edit --> Project Settings --> Editor` and select the ``Mode`` in ``Asset Serialization`` to ``Force Text``.

If you decide that you want to switch between source code and DLLs for some reason, you need to do it very carefully. The main issue that you will encounter are GUIDs. Unity uses them to reference all kinds of Assets in prefabs, scenes or GameObjects. If you want to precompile MonoBehaviours, then all GUIDs will be modified, breaking the prefabs, scenes and GameObjects using it. Let's take a look at a precise example: if you have an ScriptableObject using a MonoBehaviour with guid ``1a1578b9753d2604f98d608cb4239e2``, and the script is not in a DLL yet then you will see in you ``myscriptableobject.asset`` file:

    .. code-block:: yaml

        MonoBehaviour:
            m_ObjectHideFlags: 0
            m_PrefabParentObject: {fileID: 0}
            m_PrefabInternal: {fileID: 0}
            m_GameObject: {fileID: 0}
            m_Enabled: 1
            m_EditorHideFlags: 0
            m_Script: {fileID: 11500000, guid: 1a1578b9753d2604f98d608cb4239e2, type: 3}
            m_Name: Some Name
            m_EditorClassIdentifier: 
            hashCode: -1290730340

You can see that there is a direct reference to the guid of the script you are using. If you then compile this MonoBehaviour into a DLL, your asset file will not change, still referencing the object with GUID ``1a1578b9753d2604f98d608cb4239e2``, which no longer exists, breaking your ScriptableObject.

You could fix this by going to your asset inspector, which will indicate that there is a missing script, and selecting the script from inside the DLL. But this would break all the parameters used by your script as Unity believes that you are using a totally different script and will remove every serialized parameters in your asset, so you would have to re-enter everything by hand. The simplest way to correct the referencing would be to edit the ``m_Script: {fileID: 11500000, guid: 1a1578b9753d2604f98d608cb4239e2, type: 3}`` line to point towards the new location of the script.

The correct values that you will be using will be:

- **guid**: you will have to replace the guid of the script by the guid of the DLL. This alone will not solve your issue, as it only points towards the DLL wich is not enough.
- **fileID**: the fileID is the way that DLLs keep track of the scripts that are inside them. To find the fileID value of your script you can do it
    - manually by adding your MonoBehaviour to a dummy GameObject, saving said GameObject and copy the line with ``m_Script: {fileID: somefileID, guid: guidofthedll, type: 3}`` to replace all the references to the MonoBehaviour with that.
    - programmatically as someone reverse-engineered the way that the fileID is generated by Unity: `forum link <https://forum.unity.com/threads/yaml-fileid-hash-function-for-dll-scripts.252075/#post-1695479>`_, which you could use to automatize the replacement of the references.

In my previous example, the only line I had to replace in my files was the ``m_Script`` and the assets looked like this after it:

    .. code-block:: yaml
    
        MonoBehaviour:
            m_ObjectHideFlags: 0
            m_PrefabParentObject: {fileID: 0}
            m_PrefabInternal: {fileID: 0}
            m_GameObject: {fileID: 0}
            m_Enabled: 1
            m_EditorHideFlags: 0
            m_Script: {fileID: -667331979, guid: 89f0137620f6af44b9ba852b4190e64e, type: 3}
            m_Name: Some Name
            m_EditorClassIdentifier: 
            hashCode: -1290730340

And the asset was working as intended.