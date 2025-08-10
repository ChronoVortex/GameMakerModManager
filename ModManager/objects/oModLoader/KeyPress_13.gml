switch (state) {

    case 0:
        var gameData = "data.win";

        if (modman_backup_exists(gameData)) {
            if (!modman_backup_restore(gameData))
                show_error("Unable to restore backup for \"" + gameData + "\"", true);
        } else {
            if (!modman_backup_create(gameData))
                show_error("Unable to create backup for \"" + gameData + "\"", true);
        }

        state = modman_install_mod(gameData, "mods\\TestMod\\project.json") ? 1 : 2;
        break;
    
    case 1:
        if (run_program(program_directory + "\\" + game_project_name + ".exe"))
            game_end();
        break;
    
    case 2:
        game_end();
        break;

}
