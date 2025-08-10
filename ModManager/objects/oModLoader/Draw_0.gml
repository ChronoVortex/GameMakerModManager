switch (state) {

    case 0:
        draw_text(x, y, "Inside mod manager\nPress ENTER to install mod");
        break;
    
    case 1:
        draw_text(x, y, "Mod installed\nPress ENTER to switch to modded game");
        break;
    
    case 2:
        draw_text(x, y, "ERROR - mod not installed\nPress ENTER to close");
        break;

}
