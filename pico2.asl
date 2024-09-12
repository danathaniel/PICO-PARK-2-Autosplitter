state("pico_park_2") {
    //change below
    string15 levelName: 0xB5CE20, 0xA8, 0x38, 0x134;
}

start {
    return current.levelName.StartsWith("WORLD") || current.levelName.StartsWith("DARK");
}

split {
    return !old.levelName.Equals("CLEAR") && current.levelName.Equals("CLEAR");
}
