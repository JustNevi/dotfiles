#define BIN_PATH "~/.local/bin/env/statusbar/"

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", BIN_PATH "sb-keyboard",				5,		8},
	{"", BIN_PATH "sb-memory",					1,		7},
	{"", BIN_PATH "sb-internet",				1,		6},
	{"", BIN_PATH "sb-microphone",				5,		5},
	{"", BIN_PATH "sb-volume",					5,		4},
	{"", BIN_PATH "sb-brightness",				1,		3},
	{"", BIN_PATH "sb-battery",					1,		2},
	{"", BIN_PATH "sb-date",					1,		1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "⏽";
static unsigned int delimLen = 5;
