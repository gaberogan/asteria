varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 Colour;

void main()
{
	vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	float drawa = tex.a * v_vColour.a;
	float rr = tex.r + (Colour.r - tex.r) * Colour.a;
	float gg = tex.g + (Colour.g - tex.g) * Colour.a;
	float bb = tex.b + (Colour.b - tex.b) * Colour.a;
	float aa = drawa > 0.0 ? drawa + (1.0 - drawa) * Colour.a : 0.0;
	gl_FragColor = vec4(rr, gg, bb, aa);
}
