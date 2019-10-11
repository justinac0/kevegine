#ifndef MESH_H
#define MESH_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>

#include "../../../deps/glad/glad.h"
#include <GLFW/glfw3.h>

#include "../utility/util.h"
#include "../utility/math.h"

typedef struct {
    GLuint vaoID;
    GLuint iCount;
} mesh_t;

mesh_t mesh_wavefront_load(const char* fileLocation);
mesh_t mesh_primitive_triangle(void);

#endif // MESH_H
