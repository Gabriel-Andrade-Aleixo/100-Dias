switch (state){
	case JogadorState.FREE: JogadorStateFree(); break;
	case JogadorState.PAUSE: JogadorStatePause(); break;
}

if (keyboard_check_pressed(vk_escape)) {
    if (state == JogadorState.FREE) {
        state = JogadorState.PAUSE;
    } else if (state == JogadorState.PAUSE) {
        state = JogadorState.FREE;
    }
}

