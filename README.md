# GameMaker Mod Manager

This extension provides an interface in GameMaker for installing [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool) projects as mods. It is currently Windows-only.


## DO NOT USE THIS EXTENSION IN YOUR GAME

**This extension is intended for use exclusively by modders.** Decompilation isn't *explicitly* against GameMaker's current Terms of Service or End User Licence Agreement, but it has been in the past. If you're a developer, exposing yourself to even the most remote possibility of being hit with cease and desist order or having your license terminated by packaging a decompiler with your game is not worth it. **There are also no protections against installing mods that execute malicious code!** Anyone using this extension to create a mod management interface should advise users to only install mods from trusted sources.


## Building

Place UndertaleModTool's `Underanalyzer.dll` and `UndertaleModLib.dll` files in the `ExtensionSource` folder, then open the `GameMakerModManager.sln` solution in Visual Studio. Use the Release configuration and set the appropriate platform, then build `ModManLib`. Building the library will create the necessary files for the extension, and you can then open the `ModManager` project in GameMaker.


## Testing

Export the `ModManager` project in GameMaker and rename the game's `data.win` file to `modman.win`. Then, export the `ModReceiver` project and place its `data.win` file in the same folder as the `ModManager` game. You can create a project using UTMT for `ModReceiver`'s `data.win` and place it in `%localappdata%/mods/TestMod` to check if the game is able to successfully install it as a mod.


## License

GameMaker Mod Manager is licensed under the GNU General Public License v3.0. It is based on [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool), which is distributed under the same license.
