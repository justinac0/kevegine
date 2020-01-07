#ifndef WINDOW_H
#define WINDOW_H

#include <iostream>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

class Window {
    private:
        GLFWwindow* handle;

    public:
        Window(void);
        ~Window(void);

        void create(uint32_t width, uint32_t height, const char* title);

        GLFWwindow* getHandle();
};

#endif // WINDOW_H
