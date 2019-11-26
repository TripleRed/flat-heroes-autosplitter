state("flat heroes")
{
  int levelno : "mono.dll", 0x001F62CC, 0x54, 0x78C, 0xC, 0x28, 0x1C;
}
startup
{
  print("Script initialising...");
  print("Printing current.levelno...");
  print(current.levelno);
  print("Ready to run.");
}
split
{
  return current.levelno != old.levelno;
}
