state("flat heroes")
{
  int levelno : "mono.dll", 0x0020C574, 0x10, 0x78C, 0xC, 0x28, 0x1C;
}
split
{
  return current.levelno != old.levelno;
}
