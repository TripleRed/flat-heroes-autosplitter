state("flat heroes")
{
  int levelno : "mono.dll", 0x001F62CC, 0x54, 0x78C, 0xC, 0x28, 0x1C;
}
startup
{
  println("Script initialised.");
  println("Current levelno is saved as " + current.levelno);
}
split
{
  return current.levelno != old.levelno;
}
