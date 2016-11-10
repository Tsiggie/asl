// 1.1.1.0 - 2016-10-15
// unknown pointer

state("ShadowWarrior2", "1.1.2.0")
{
    // 1.1.2.0 - 2016-10-15
    bool isGameplay : 0x1811908;
}

state("ShadowWarrior2", "1.1.3.0")
{
    // 1.1.3.0 - 2016-10-22
    bool isGameplay : 0x18189E8;
}

state("ShadowWarrior2", "1.1.4.0")
{
    // 1.1.4.0 - 2016-10-26
    bool isGameplay : 0x18202D8;
}

state("ShadowWarrior2", "1.1.4.1")
{
    // 1.1.4.1 - 2016-10-27
    bool isGameplay : 0x181F2D8;
}

state("ShadowWarrior2")
{
    // 1.1.5.0 - 2016-11-09
    bool isGameplay : 0x18273B8;
}

init
{
    version = modules.First().FileVersionInfo.FileVersion;
    // print(version);
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
    return !current.isGameplay;
}
