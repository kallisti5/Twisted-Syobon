TwistedSyobon:main.o loadg.o DxLib.o
	g++ main.o loadg.o DxLib.o -o TwistedSyobon `sdl-config --libs` -lSDL_gfx -lSDL_image -lSDL_mixer -lSDL_ttf
main.o:main.cpp
	gcc -c main.cpp
loadg.o:loadg.cpp
	gcc -c loadg.cpp
DxLib.o:DxLib.cpp
	gcc -c DxLib.cpp
clean:
	rm -f *.o TwistedSyobon
