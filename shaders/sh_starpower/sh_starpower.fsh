//
// Fragment Shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D gm_BaseTexture;
uniform float time; // Variable para el tiempo

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Cambiar el color basado en el tiempo
    float r = sin(time + 0.0) * 0.5 + 0.5; // Rojo
    float g = sin(time + 2.0) * 0.5 + 0.5; // Verde
    float b = sin(time + 4.0) * 0.5 + 0.5; // Azul
    
    // Aplicar el nuevo color
    gl_FragColor = v_vColour * vec4(texColor.r * r, texColor.g * g, texColor.b * b, texColor.a);
}