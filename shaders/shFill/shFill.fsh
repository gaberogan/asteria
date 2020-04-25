varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 Colour;

void main() // broken opacity???
{
	vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	float rr = tex.r + (Colour.r - tex.r) * Colour.a;
	float gg = tex.g + (Colour.g - tex.g) * Colour.a;
	float bb = tex.b + (Colour.b - tex.b) * Colour.a;
	float aa = tex.a > 0.0 ? tex.a + tex.a * Colour.a : 0.0;
	gl_FragColor = vec4(rr, gg, bb, aa);
}
