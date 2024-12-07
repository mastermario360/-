	#pragma header

	uniform sampler2D mask;

	void main()
	{
		vec4 mask = flixel_texture2D(mask, openfl_TextureCoordv.xy);

		vec4 texture = flixel_texture2D(bitmap, openfl_TextureCoordv.xy) / openfl_Alphav;
		float alpha = texture.a * mask.r * openfl_Alphav;

		gl_FragColor = vec4(texture * alpha);
	}