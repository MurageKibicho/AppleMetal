#include <map>
#include <string>
#include <OpenGL/gl.h>
#include <OpenGL/glu.h>
#include <GLUT/glut.h>

class GLSLSHader{
public:
	GLSLSHader(void);
	~GLSLSHader(void);
	void loadFromString(GLenum whichShader, const& string source);
	void loadFromFile(GLenum whichShader, const& string fileName);
	void createAndLinkProgram();
	void use();
	void unUse();
	void addAttribute(const string& attribute);
	void addUniform(const string& uniform);
	GLuint operator[] (const string& attribute);
	GLuint operator() (const string& uniform);
	void deleteShaderProgram();


private: 
	enum ShaderTYpe{VERTEX_SHADER, FRAGMENT_SHADER, GEOMETRY_SHADER};
	GLuint _program;
	int _totalSHaders;
	GLuint _totalShaders[3];
	map<string, GLuint> _attributeList;
	map<string, GLuint> _uniformLocationList;
};






