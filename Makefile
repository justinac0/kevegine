CC		= gcc
CFLAGS 	= -w -std=c99

OBJ = $(wildcard src/*.c) \
	  deps/glad/glad.c

INCLUDES = -Ideps/glfw/include

EXEC_NAME = kevin

ifeq ($(OS), Windows_NT)
	DEL_CMD = del

	TARGET_NAME = $(EXEC_NAME).exe
else
	DEL_CMD = rm

	UNAME = $(shell uname -s)
	ifeq ($(UNAME), Linux)
		TARGET_NAME = $(EXEC_NAME)
		LDFLAGS = -lglfw -lGL -lGLU -lX11 -lXi -lXrandr -lXxf86vm -lXinerama -lpthread -ldl -lXcursor -lm
	else ifeq ($(UNAME), Darwin)
		TARGET_NAME = $(EXEC_NAME).app
	endif

endif

all: $(OBJ)
	$(CC) $(CFLAGS) -o  bin/$(TARGET_NAME) $(OBJ) $(LDFLAGS)

.PHONY: clean
clean:
	$(DEL_CMD) bin/$(TARGET_NAME)
