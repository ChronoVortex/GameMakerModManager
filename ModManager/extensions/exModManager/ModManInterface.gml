#define modman_backup_exists
return file_exists(game_save_id + EX_ModmanBackupFolder + argument0);

#define modman_backup_create
var pathEnd = string_last_pos("\\", argument0);
var pathBack = (pathEnd > 0) ? (EX_ModmanBackupFolder + string_copy(argument0, 1, pathEnd)) : EX_ModmanBackupFolder;
return EX_ModmanBackupCreate(program_directory + argument0, game_save_id + EX_ModmanBackupFolder + argument0, game_save_id + pathBack);

#define modman_backup_restore
return EX_ModmanBackupRestore(program_directory + argument0, game_save_id + EX_ModmanBackupFolder + argument0);

#define modman_install_mod
return EX_ModmanInstallMod(program_directory + argument0, game_save_id + argument1);
