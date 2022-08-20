import peanut;

extern (C) int hi() { return 1; }

extern (C) Peanut return_peanut() { 
  auto p = new Peanut(); 
  p.a = 69;
  return p;
}
