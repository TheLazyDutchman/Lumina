#ifndef cLumina_type_header
#define cLumina_type_header

typedef struct {
	char* name;
} Type;

Type *initType(char* name);
void freeType(Type *type);

#endif
