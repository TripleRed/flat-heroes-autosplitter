state("flatheroes")
{
  int levelno : "mono.dll", 0x001F62CC, 0x54, 0x78C, 0xC, 0x28, 0x1C;
}
startup
{
  int levelno : 0x0006D538, 0x7B0, 0x8, 0x54, 0x78C, 0xC, 0x28, 0x1C;
}
init
{
	vars.lvlprogress = 0;
	vars.split = 0;
	print("Flat Heroes Autosplitter running :D");
}
start
{
  if (current.levelno == 1)
  {
	vars.lvlprogress = 1;
	return true;
  }
  return false;
}
split
{
  if (current.levelno == old.levelno)
  {
	vars.split = 0;
  }
  if (current.levelno != 1 & current.levelno == vars.lvlprogress + 1)
  {
    vars.lvlprogress = current.levelno;
	return true;
  }
  return false;
}
