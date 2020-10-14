#include "projectOne.h"

void draw() {
	glBegin(GL_TRIANGLE_STRIP);

	
	for (int i = 0; i < 100; i++) {
		glColor3f(i / 100.0, i / 100.0, 0);
		glVertex3f((i * 2.0) / 100.0, i / 100.0, (i / 2.0) / 100.0);
	}
	glEnd();
}