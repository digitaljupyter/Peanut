import core.sys.linux.dlfcn;
import peanut;
import std.stdio;

void main() {
  writeln("Hi");
  void *hndl = dlopen("./libmain1.so", RTLD_LAZY);
  
  Peanut function() p = cast(Peanut function())dlsym(hndl, "return_peanut");
  writeln(p().a);
}
