use types::c;

// Vector2
export type Vector2 = struct {
	x: f32,
	y: f32,
};

// Vector3
export type Vector3 = struct {
	x: f32,
	y: f32,
	z: f32,
};

// Vector4 / Quaternion
export type Vector4 = struct {
	x: f32,
	y: f32,
	z: f32,
	w: f32,
};

// Quaternion is an alias for Vector4
export type Quaternion = Vector4;

// Matrix (4x4, column major, right-handed)
export type Matrix = struct {
	m0: f32, m4: f32, m8: f32, m12: f32,
	m1: f32, m5: f32, m9: f32, m13: f32,
	m2: f32, m6: f32, m10: f32, m14: f32,
	m3: f32, m7: f32, m11: f32, m15: f32,
};

// Color (R8G8B8A8)
export type Color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
};

// Rectangle
export type Rectangle = struct {
	x: f32,
	y: f32,
	width: f32,
	height: f32,
};

// Image (CPU memory)
export type Image = struct {
	data: nullable *opaque,
	width: int,
	height: int,
	mipmaps: int,
	format: int,
};

// Texture (GPU memory)
export type Texture = struct {
	id: u32,
	width: int,
	height: int,
	mipmaps: int,
	format: int,
};

// Texture2D, alias for Texture
export type Texture2D = Texture;

// TextureCubemap, alias for Texture
export type TextureCubemap = Texture;

// RenderTexture
export type RenderTexture = struct {
	id: u32,
	texture: Texture,
	depth: Texture,
};

// RenderTexture2D, alias for RenderTexture
export type RenderTexture2D = RenderTexture;

// NPatchInfo
export type NPatchInfo = struct {
	source: Rectangle,
	left: int,
	top: int,
	right: int,
	bottom: int,
	layout: int,
};

// GlyphInfo
export type GlyphInfo = struct {
	value: int,
	offsetX: int,
	offsetY: int,
	advanceX: int,
	image: Image,
};

// Font
export type Font = struct {
	baseSize: int,
	glyphCount: int,
	glyphPadding: int,
	texture: Texture2D,
	recs: nullable *Rectangle,
	glyphs: nullable *GlyphInfo,
};

// Camera3D
export type Camera3D = struct {
	position: Vector3,
	target: Vector3,
	up: Vector3,
	fovy: f32,
	projection: int,
};

// Camera (defaults to Camera3D)
export type Camera = Camera3D;

// Camera2D
export type Camera2D = struct {
	off: Vector2,
	target: Vector2,
	rotation: f32,
	zoom: f32,
};

// Mesh
export type Mesh = struct {
	vertexCount: int,
	triangleCount: int,
	vertices: nullable *f32,
	texcoords: nullable *f32,
	texcoords2: nullable *f32,
	normals: nullable *f32,
	tangents: nullable *f32,
	colors: nullable *u8,
	indices: nullable *u16,
	boneCount: int,
	boneIndices: nullable *u8,
	boneWeights: nullable *f32,
	animVertices: nullable *f32,
	animNormals: nullable *f32,
	vaoId: u32,
	vboId: nullable *u32,
};

// Shader
export type Shader = struct {
	id: u32,
	locs: nullable *int,
};

// MaterialMap
export type MaterialMap = struct {
	texture: Texture2D,
	color: Color,
	value: f32,
};

// Material
export type Material = struct {
	shader: Shader,
	maps: nullable *MaterialMap,
	params: [4]f32,
};

// Transform
export type Transform = struct {
	translation: Vector3,
	rotation: Quaternion,
	scale: Vector3,
};

// ModelAnimPose (alias: *Transform)
export type ModelAnimPose = nullable *Transform;

// BoneInfo
export type BoneInfo = struct {
	name: [32]c::char,
	parent: int,
};

// ModelSkeleton
export type ModelSkeleton = struct {
	boneCount: int,
	bones: nullable *BoneInfo,
	bindPose: ModelAnimPose,
};

// Model
export type Model = struct {
	transform: Matrix,
	meshCount: int,
	materialCount: int,
	meshes: nullable *Mesh,
	materials: nullable *Material,
	meshMaterial: nullable *int,
	skeleton: ModelSkeleton,
	currentPose: ModelAnimPose,
	boneMatrices: nullable *Matrix,
};

// ModelAnimation
export type ModelAnimation = struct {
	name: [32]c::char,
	boneCount: int,
	keyframeCount: int,
	keyframePoses: nullable *ModelAnimPose,
};

// Ray
export type Ray = struct {
	position: Vector3,
	direction: Vector3,
};

// RayCollision
export type RayCollision = struct {
	hit: bool,
	distance: f32,
	point: Vector3,
	normal: Vector3,
};

// BoundingBox
export type BoundingBox = struct {
	min: Vector3,
	max: Vector3,
};

// Wave
export type Wave = struct {
	frameCount: u32,
	sampleRate: u32,
	sampleSize: u32,
	channels: u32,
	data: nullable *opaque,
};

// Opaque audio types
export type rAudioBuffer = opaque;
export type rAudioProcessor = opaque;

// AudioStream
export type AudioStream = struct {
	buffer: nullable *rAudioBuffer,
	processor: nullable *rAudioProcessor,
	sampleRate: u32,
	sampleSize: u32,
	channels: u32,
};

// Sound
export type Sound = struct {
	stream: AudioStream,
	frameCount: u32,
};

// Music
export type Music = struct {
	stream: AudioStream,
	frameCount: u32,
	looping: bool,
	ctxType: int,
	ctxData: nullable *opaque,
};

// VrDeviceInfo
export type VrDeviceInfo = struct {
	hResolution: int,
	vResolution: int,
	hScreenSize: f32,
	vScreenSize: f32,
	eyeToScreenDistance: f32,
	lensSeparationDistance: f32,
	interpupillaryDistance: f32,
	lensDistortionValues: [4]f32,
	chromaAbCorrection: [4]f32,
};

// VrStereoConfig
export type VrStereoConfig = struct {
	projection: [2]Matrix,
	viewOffset: [2]Matrix,
	leftLensCenter: [2]f32,
	rightLensCenter: [2]f32,
	leftScreenCenter: [2]f32,
	rightScreenCenter: [2]f32,
	scale: [2]f32,
	scaleIn: [2]f32,
};

// FilePathList
export type FilePathList = struct {
	count: u32,
	paths: nullable **c::char,
};

// AutomationEvent
export type AutomationEvent = struct {
	frame: u32,
	type_: u32,
	params: [4]int,
};

// AutomationEventList
export type AutomationEventList = struct {
	capacity: u32,
	count: u32,
	events: nullable *AutomationEvent,
};

// Callback types
export type TraceLogCallback = *fn(logLevel: int, text: *const c::char, args: valist) void;
export type LoadFileDataCallback = *fn(fileName: *const c::char, dataSize: *int) nullable *u8;
export type SaveFileDataCallback = *fn(fileName: *const c::char, data: nullable *opaque, dataSize: int) bool;
export type LoadFileTextCallback = *fn(fileName: *const c::char) nullable *c::char;
export type SaveFileTextCallback = *fn(fileName: *const c::char, text: *const c::char) bool;
export type AudioCallback = *fn(bufferData: nullable *opaque, frames: u32) void;

//--------------------------------------------------------------------------------
// Color constants
//--------------------------------------------------------------------------------
export def LIGHTGRAY: Color = Color { r = 200, g = 200, b = 200, a = 255 };
export def GRAY: Color = Color { r = 130, g = 130, b = 130, a = 255 };
export def DARKGRAY: Color = Color { r = 80, g = 80, b = 80, a = 255 };
export def YELLOW: Color = Color { r = 253, g = 249, b = 0, a = 255 };
export def GOLD: Color = Color { r = 255, g = 203, b = 0, a = 255 };
export def ORANGE: Color = Color { r = 255, g = 161, b = 0, a = 255 };
export def PINK: Color = Color { r = 255, g = 109, b = 194, a = 255 };
export def RED: Color = Color { r = 230, g = 41, b = 55, a = 255 };
export def MAROON: Color = Color { r = 190, g = 33, b = 55, a = 255 };
export def GREEN: Color = Color { r = 0, g = 228, b = 48, a = 255 };
export def LIME: Color = Color { r = 0, g = 158, b = 47, a = 255 };
export def DARKGREEN: Color = Color { r = 0, g = 117, b = 44, a = 255 };
export def SKYBLUE: Color = Color { r = 102, g = 191, b = 255, a = 255 };
export def BLUE: Color = Color { r = 0, g = 121, b = 241, a = 255 };
export def DARKBLUE: Color = Color { r = 0, g = 82, b = 172, a = 255 };
export def PURPLE: Color = Color { r = 200, g = 122, b = 255, a = 255 };
export def VIOLET: Color = Color { r = 135, g = 60, b = 190, a = 255 };
export def DARKPURPLE: Color = Color { r = 112, g = 31, b = 126, a = 255 };
export def BEIGE: Color = Color { r = 211, g = 176, b = 131, a = 255 };
export def BROWN: Color = Color { r = 127, g = 106, b = 79, a = 255 };
export def DARKBROWN: Color = Color { r = 76, g = 63, b = 47, a = 255 };
export def WHITE: Color = Color { r = 255, g = 255, b = 255, a = 255 };
export def BLACK: Color = Color { r = 0, g = 0, b = 0, a = 255 };
export def BLANK: Color = Color { r = 0, g = 0, b = 0, a = 0 };
export def MAGENTA: Color = Color { r = 255, g = 0, b = 255, a = 255 };
export def RAYWHITE: Color = Color { r = 245, g = 245, b = 245, a = 255 };

//--------------------------------------------------------------------------------
// Enums as constants
//--------------------------------------------------------------------------------

// ConfigFlags
export def FLAG_VSYNC_HINT: u32 = 0x00000040;
export def FLAG_FULLSCREEN_MODE: u32 = 0x00000002;
export def FLAG_WINDOW_RESIZABLE: u32 = 0x00000004;
export def FLAG_WINDOW_UNDECORATED: u32 = 0x00000008;
export def FLAG_WINDOW_HIDDEN: u32 = 0x00000080;
export def FLAG_WINDOW_MINIMIZED: u32 = 0x00000200;
export def FLAG_WINDOW_MAXIMIZED: u32 = 0x00000400;
export def FLAG_WINDOW_UNFOCUSED: u32 = 0x00000800;
export def FLAG_WINDOW_TOPMOST: u32 = 0x00001000;
export def FLAG_WINDOW_ALWAYS_RUN: u32 = 0x00000100;
export def FLAG_WINDOW_TRANSPARENT: u32 = 0x00000010;
export def FLAG_WINDOW_HIGHDPI: u32 = 0x00002000;
export def FLAG_WINDOW_MOUSE_PASSTHROUGH: u32 = 0x00004000;
export def FLAG_BORDERLESS_WINDOWED_MODE: u32 = 0x00008000;
export def FLAG_MSAA_4X_HINT: u32 = 0x00000020;
export def FLAG_INTERLACED_HINT: u32 = 0x00010000;

// TraceLogLevel
export def LOG_ALL: int = 0;
export def LOG_TRACE: int = 1;
export def LOG_DEBUG: int = 2;
export def LOG_INFO: int = 3;
export def LOG_WARNING: int = 4;
export def LOG_ERROR: int = 5;
export def LOG_FATAL: int = 6;
export def LOG_NONE: int = 7;

// KeyboardKey
export def KEY_NULL: int = 0;
export def KEY_APOSTROPHE: int = 39;
export def KEY_COMMA: int = 44;
export def KEY_MINUS: int = 45;
export def KEY_PERIOD: int = 46;
export def KEY_SLASH: int = 47;
export def KEY_ZERO: int = 48;
export def KEY_ONE: int = 49;
export def KEY_TWO: int = 50;
export def KEY_THREE: int = 51;
export def KEY_FOUR: int = 52;
export def KEY_FIVE: int = 53;
export def KEY_SIX: int = 54;
export def KEY_SEVEN: int = 55;
export def KEY_EIGHT: int = 56;
export def KEY_NINE: int = 57;
export def KEY_SEMICOLON: int = 59;
export def KEY_EQUAL: int = 61;
export def KEY_A: int = 65;
export def KEY_B: int = 66;
export def KEY_C: int = 67;
export def KEY_D: int = 68;
export def KEY_E: int = 69;
export def KEY_F: int = 70;
export def KEY_G: int = 71;
export def KEY_H: int = 72;
export def KEY_I: int = 73;
export def KEY_J: int = 74;
export def KEY_K: int = 75;
export def KEY_L: int = 76;
export def KEY_M: int = 77;
export def KEY_N: int = 78;
export def KEY_O: int = 79;
export def KEY_P: int = 80;
export def KEY_Q: int = 81;
export def KEY_R: int = 82;
export def KEY_S: int = 83;
export def KEY_T: int = 84;
export def KEY_U: int = 85;
export def KEY_V: int = 86;
export def KEY_W: int = 87;
export def KEY_X: int = 88;
export def KEY_Y: int = 89;
export def KEY_Z: int = 90;
export def KEY_LEFT_BRACKET: int = 91;
export def KEY_BACKSLASH: int = 92;
export def KEY_RIGHT_BRACKET: int = 93;
export def KEY_GRAVE: int = 96;
export def KEY_SPACE: int = 32;
export def KEY_ESCAPE: int = 256;
export def KEY_ENTER: int = 257;
export def KEY_TAB: int = 258;
export def KEY_BACKSPACE: int = 259;
export def KEY_INSERT: int = 260;
export def KEY_DELETE: int = 261;
export def KEY_RIGHT: int = 262;
export def KEY_LEFT: int = 263;
export def KEY_DOWN: int = 264;
export def KEY_UP: int = 265;
export def KEY_PAGE_UP: int = 266;
export def KEY_PAGE_DOWN: int = 267;
export def KEY_HOME: int = 268;
export def KEY_END: int = 269;
export def KEY_CAPS_LOCK: int = 280;
export def KEY_SCROLL_LOCK: int = 281;
export def KEY_NUM_LOCK: int = 282;
export def KEY_PRINT_SCREEN: int = 283;
export def KEY_PAUSE: int = 284;
export def KEY_F1: int = 290;
export def KEY_F2: int = 291;
export def KEY_F3: int = 292;
export def KEY_F4: int = 293;
export def KEY_F5: int = 294;
export def KEY_F6: int = 295;
export def KEY_F7: int = 296;
export def KEY_F8: int = 297;
export def KEY_F9: int = 298;
export def KEY_F10: int = 299;
export def KEY_F11: int = 300;
export def KEY_F12: int = 301;
export def KEY_LEFT_SHIFT: int = 340;
export def KEY_LEFT_CONTROL: int = 341;
export def KEY_LEFT_ALT: int = 342;
export def KEY_LEFT_SUPER: int = 343;
export def KEY_RIGHT_SHIFT: int = 344;
export def KEY_RIGHT_CONTROL: int = 345;
export def KEY_RIGHT_ALT: int = 346;
export def KEY_RIGHT_SUPER: int = 347;
export def KEY_KB_MENU: int = 348;
export def KEY_KP_0: int = 320;
export def KEY_KP_1: int = 321;
export def KEY_KP_2: int = 322;
export def KEY_KP_3: int = 323;
export def KEY_KP_4: int = 324;
export def KEY_KP_5: int = 325;
export def KEY_KP_6: int = 326;
export def KEY_KP_7: int = 327;
export def KEY_KP_8: int = 328;
export def KEY_KP_9: int = 329;
export def KEY_KP_DECIMAL: int = 330;
export def KEY_KP_DIVIDE: int = 331;
export def KEY_KP_MULTIPLY: int = 332;
export def KEY_KP_SUBTRACT: int = 333;
export def KEY_KP_ADD: int = 334;
export def KEY_KP_ENTER: int = 335;
export def KEY_KP_EQUAL: int = 336;
export def KEY_BACK: int = 4;
export def KEY_MENU: int = 5;
export def KEY_VOLUME_UP: int = 24;
export def KEY_VOLUME_DOWN: int = 25;

// MouseButton
export def MOUSE_BUTTON_LEFT: int = 0;
export def MOUSE_BUTTON_RIGHT: int = 1;
export def MOUSE_BUTTON_MIDDLE: int = 2;
export def MOUSE_BUTTON_SIDE: int = 3;
export def MOUSE_BUTTON_EXTRA: int = 4;
export def MOUSE_BUTTON_FORWARD: int = 5;
export def MOUSE_BUTTON_BACK: int = 6;
export def MOUSE_LEFT_BUTTON: int = MOUSE_BUTTON_LEFT;
export def MOUSE_RIGHT_BUTTON: int = MOUSE_BUTTON_RIGHT;
export def MOUSE_MIDDLE_BUTTON: int = MOUSE_BUTTON_MIDDLE;

// MouseCursor
export def MOUSE_CURSOR_DEFAULT: int = 0;
export def MOUSE_CURSOR_ARROW: int = 1;
export def MOUSE_CURSOR_IBEAM: int = 2;
export def MOUSE_CURSOR_CROSSHAIR: int = 3;
export def MOUSE_CURSOR_POINTING_HAND: int = 4;
export def MOUSE_CURSOR_RESIZE_EW: int = 5;
export def MOUSE_CURSOR_RESIZE_NS: int = 6;
export def MOUSE_CURSOR_RESIZE_NWSE: int = 7;
export def MOUSE_CURSOR_RESIZE_NESW: int = 8;
export def MOUSE_CURSOR_RESIZE_ALL: int = 9;
export def MOUSE_CURSOR_NOT_ALLOWED: int = 10;

// GamepadButton
export def GAMEPAD_BUTTON_UNKNOWN: int = 0;
export def GAMEPAD_BUTTON_LEFT_FACE_UP: int = 1;
export def GAMEPAD_BUTTON_LEFT_FACE_RIGHT: int = 2;
export def GAMEPAD_BUTTON_LEFT_FACE_DOWN: int = 3;
export def GAMEPAD_BUTTON_LEFT_FACE_LEFT: int = 4;
export def GAMEPAD_BUTTON_RIGHT_FACE_UP: int = 5;
export def GAMEPAD_BUTTON_RIGHT_FACE_RIGHT: int = 6;
export def GAMEPAD_BUTTON_RIGHT_FACE_DOWN: int = 7;
export def GAMEPAD_BUTTON_RIGHT_FACE_LEFT: int = 8;
export def GAMEPAD_BUTTON_LEFT_TRIGGER_1: int = 9;
export def GAMEPAD_BUTTON_LEFT_TRIGGER_2: int = 10;
export def GAMEPAD_BUTTON_RIGHT_TRIGGER_1: int = 11;
export def GAMEPAD_BUTTON_RIGHT_TRIGGER_2: int = 12;
export def GAMEPAD_BUTTON_MIDDLE_LEFT: int = 13;
export def GAMEPAD_BUTTON_MIDDLE: int = 14;
export def GAMEPAD_BUTTON_MIDDLE_RIGHT: int = 15;
export def GAMEPAD_BUTTON_LEFT_THUMB: int = 16;
export def GAMEPAD_BUTTON_RIGHT_THUMB: int = 17;

// GamepadAxis
export def GAMEPAD_AXIS_LEFT_X: int = 0;
export def GAMEPAD_AXIS_LEFT_Y: int = 1;
export def GAMEPAD_AXIS_RIGHT_X: int = 2;
export def GAMEPAD_AXIS_RIGHT_Y: int = 3;
export def GAMEPAD_AXIS_LEFT_TRIGGER: int = 4;
export def GAMEPAD_AXIS_RIGHT_TRIGGER: int = 5;

// MaterialMapIndex
export def MATERIAL_MAP_ALBEDO: int = 0;
export def MATERIAL_MAP_METALNESS: int = 1;
export def MATERIAL_MAP_NORMAL: int = 2;
export def MATERIAL_MAP_ROUGHNESS: int = 3;
export def MATERIAL_MAP_OCCLUSION: int = 4;
export def MATERIAL_MAP_EMISSION: int = 5;
export def MATERIAL_MAP_HEIGHT: int = 6;
export def MATERIAL_MAP_CUBEMAP: int = 7;
export def MATERIAL_MAP_IRRADIANCE: int = 8;
export def MATERIAL_MAP_PREFILTER: int = 9;
export def MATERIAL_MAP_BRDF: int = 10;
export def MATERIAL_MAP_DIFFUSE: int = MATERIAL_MAP_ALBEDO;
export def MATERIAL_MAP_SPECULAR: int = MATERIAL_MAP_METALNESS;

// ShaderLocationIndex
export def SHADER_LOC_VERTEX_POSITION: int = 0;
export def SHADER_LOC_VERTEX_TEXCOORD01: int = 1;
export def SHADER_LOC_VERTEX_TEXCOORD02: int = 2;
export def SHADER_LOC_VERTEX_NORMAL: int = 3;
export def SHADER_LOC_VERTEX_TANGENT: int = 4;
export def SHADER_LOC_VERTEX_COLOR: int = 5;
export def SHADER_LOC_MATRIX_MVP: int = 6;
export def SHADER_LOC_MATRIX_VIEW: int = 7;
export def SHADER_LOC_MATRIX_PROJECTION: int = 8;
export def SHADER_LOC_MATRIX_MODEL: int = 9;
export def SHADER_LOC_MATRIX_NORMAL: int = 10;
export def SHADER_LOC_VECTOR_VIEW: int = 11;
export def SHADER_LOC_COLOR_DIFFUSE: int = 12;
export def SHADER_LOC_COLOR_SPECULAR: int = 13;
export def SHADER_LOC_COLOR_AMBIENT: int = 14;
export def SHADER_LOC_MAP_ALBEDO: int = 15;
export def SHADER_LOC_MAP_METALNESS: int = 16;
export def SHADER_LOC_MAP_NORMAL: int = 17;
export def SHADER_LOC_MAP_ROUGHNESS: int = 18;
export def SHADER_LOC_MAP_OCCLUSION: int = 19;
export def SHADER_LOC_MAP_EMISSION: int = 20;
export def SHADER_LOC_MAP_HEIGHT: int = 21;
export def SHADER_LOC_MAP_CUBEMAP: int = 22;
export def SHADER_LOC_MAP_IRRADIANCE: int = 23;
export def SHADER_LOC_MAP_PREFILTER: int = 24;
export def SHADER_LOC_MAP_BRDF: int = 25;
export def SHADER_LOC_VERTEX_BONEIDS: int = 26;
export def SHADER_LOC_VERTEX_BONEWEIGHTS: int = 27;
export def SHADER_LOC_MATRIX_BONETRANSFORMS: int = 28;
export def SHADER_LOC_VERTEX_INSTANCETRANSFORM: int = 29;
export def SHADER_LOC_MAP_DIFFUSE: int = SHADER_LOC_MAP_ALBEDO;
export def SHADER_LOC_MAP_SPECULAR: int = SHADER_LOC_MAP_METALNESS;

// ShaderUniformDataType
export def SHADER_UNIFORM_FLOAT: int = 0;
export def SHADER_UNIFORM_VEC2: int = 1;
export def SHADER_UNIFORM_VEC3: int = 2;
export def SHADER_UNIFORM_VEC4: int = 3;
export def SHADER_UNIFORM_INT: int = 4;
export def SHADER_UNIFORM_IVEC2: int = 5;
export def SHADER_UNIFORM_IVEC3: int = 6;
export def SHADER_UNIFORM_IVEC4: int = 7;
export def SHADER_UNIFORM_UINT: int = 8;
export def SHADER_UNIFORM_UIVEC2: int = 9;
export def SHADER_UNIFORM_UIVEC3: int = 10;
export def SHADER_UNIFORM_UIVEC4: int = 11;
export def SHADER_UNIFORM_SAMPLER2D: int = 12;

// ShaderAttributeDataType
export def SHADER_ATTRIB_FLOAT: int = 0;
export def SHADER_ATTRIB_VEC2: int = 1;
export def SHADER_ATTRIB_VEC3: int = 2;
export def SHADER_ATTRIB_VEC4: int = 3;

// PixelFormat
export def PIXELFORMAT_UNCOMPRESSED_GRAYSCALE: int = 1;
export def PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA: int = 2;
export def PIXELFORMAT_UNCOMPRESSED_R5G6B5: int = 3;
export def PIXELFORMAT_UNCOMPRESSED_R8G8B8: int = 4;
export def PIXELFORMAT_UNCOMPRESSED_R5G5B5A1: int = 5;
export def PIXELFORMAT_UNCOMPRESSED_R4G4B4A4: int = 6;
export def PIXELFORMAT_UNCOMPRESSED_R8G8B8A8: int = 7;
export def PIXELFORMAT_UNCOMPRESSED_R32: int = 8;
export def PIXELFORMAT_UNCOMPRESSED_R32G32B32: int = 9;
export def PIXELFORMAT_UNCOMPRESSED_R32G32B32A32: int = 10;
export def PIXELFORMAT_UNCOMPRESSED_R16: int = 11;
export def PIXELFORMAT_UNCOMPRESSED_R16G16B16: int = 12;
export def PIXELFORMAT_UNCOMPRESSED_R16G16B16A16: int = 13;
export def PIXELFORMAT_COMPRESSED_DXT1_RGB: int = 14;
export def PIXELFORMAT_COMPRESSED_DXT1_RGBA: int = 15;
export def PIXELFORMAT_COMPRESSED_DXT3_RGBA: int = 16;
export def PIXELFORMAT_COMPRESSED_DXT5_RGBA: int = 17;
export def PIXELFORMAT_COMPRESSED_ETC1_RGB: int = 18;
export def PIXELFORMAT_COMPRESSED_ETC2_RGB: int = 19;
export def PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA: int = 20;
export def PIXELFORMAT_COMPRESSED_PVRT_RGB: int = 21;
export def PIXELFORMAT_COMPRESSED_PVRT_RGBA: int = 22;
export def PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA: int = 23;
export def PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA: int = 24;

// TextureFilter
export def TEXTURE_FILTER_POINT: int = 0;
export def TEXTURE_FILTER_BILINEAR: int = 1;
export def TEXTURE_FILTER_TRILINEAR: int = 2;
export def TEXTURE_FILTER_ANISOTROPIC_4X: int = 3;
export def TEXTURE_FILTER_ANISOTROPIC_8X: int = 4;
export def TEXTURE_FILTER_ANISOTROPIC_16X: int = 5;

// TextureWrap
export def TEXTURE_WRAP_REPEAT: int = 0;
export def TEXTURE_WRAP_CLAMP: int = 1;
export def TEXTURE_WRAP_MIRROR_REPEAT: int = 2;
export def TEXTURE_WRAP_MIRROR_CLAMP: int = 3;

// CubemapLayout
export def CUBEMAP_LAYOUT_AUTO_DETECT: int = 0;
export def CUBEMAP_LAYOUT_LINE_VERTICAL: int = 1;
export def CUBEMAP_LAYOUT_LINE_HORIZONTAL: int = 2;
export def CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR: int = 3;
export def CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE: int = 4;

// FontType
export def FONT_DEFAULT: int = 0;
export def FONT_BITMAP: int = 1;
export def FONT_SDF: int = 2;

// BlendMode
export def BLEND_ALPHA: int = 0;
export def BLEND_ADDITIVE: int = 1;
export def BLEND_MULTIPLIED: int = 2;
export def BLEND_ADD_COLORS: int = 3;
export def BLEND_SUBTRACT_COLORS: int = 4;
export def BLEND_ALPHA_PREMULTIPLY: int = 5;
export def BLEND_CUSTOM: int = 6;
export def BLEND_CUSTOM_SEPARATE: int = 7;

// Gesture flags
export def GESTURE_NONE: u32 = 0;
export def GESTURE_TAP: u32 = 1;
export def GESTURE_DOUBLETAP: u32 = 2;
export def GESTURE_HOLD: u32 = 4;
export def GESTURE_DRAG: u32 = 8;
export def GESTURE_SWIPE_RIGHT: u32 = 16;
export def GESTURE_SWIPE_LEFT: u32 = 32;
export def GESTURE_SWIPE_UP: u32 = 64;
export def GESTURE_SWIPE_DOWN: u32 = 128;
export def GESTURE_PINCH_IN: u32 = 256;
export def GESTURE_PINCH_OUT: u32 = 512;

// CameraMode
export def CAMERA_CUSTOM: int = 0;
export def CAMERA_FREE: int = 1;
export def CAMERA_ORBITAL: int = 2;
export def CAMERA_FIRST_PERSON: int = 3;
export def CAMERA_THIRD_PERSON: int = 4;

// CameraProjection
export def CAMERA_PERSPECTIVE: int = 0;
export def CAMERA_ORTHOGRAPHIC: int = 1;

// NPatchLayout
export def NPATCH_NINE_PATCH: int = 0;
export def NPATCH_THREE_PATCH_VERTICAL: int = 1;
export def NPATCH_THREE_PATCH_HORIZONTAL: int = 2;

// Math constants
export def PI: f32 = 3.14159265358979323846;
export def DEG2RAD: f32 = PI / 180.0;
export def RAD2DEG: f32 = 180.0 / PI;
