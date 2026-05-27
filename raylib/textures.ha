use types::c;

// Image loading
export @symbol("LoadImage") fn LoadImage(fileName: *const c::char) Image;
export @symbol("LoadImageRaw") fn LoadImageRaw(fileName: *const c::char, width: int, height: int, format: int, headerSize: int) Image;
export @symbol("LoadImageAnim") fn LoadImageAnim(fileName: *const c::char, frames: nullable *int) Image;
export @symbol("LoadImageAnimFromMemory") fn LoadImageAnimFromMemory(fileType: *const c::char, fileData: nullable *const u8, dataSize: int, frames: nullable *int) Image;
export @symbol("LoadImageFromMemory") fn LoadImageFromMemory(fileType: *const c::char, fileData: nullable *const u8, dataSize: int) Image;
export @symbol("LoadImageFromTexture") fn LoadImageFromTexture(texture: Texture2D) Image;
export @symbol("LoadImageFromScreen") fn LoadImageFromScreen() Image;
export @symbol("IsImageValid") fn IsImageValid(image: Image) bool;
export @symbol("UnloadImage") fn UnloadImage(image: Image) void;
export @symbol("ExportImage") fn ExportImage(image: Image, fileName: *const c::char) bool;
export @symbol("ExportImageToMemory") fn ExportImageToMemory(image: Image, fileType: *const c::char, fileSize: nullable *int) nullable *u8;
export @symbol("ExportImageAsCode") fn ExportImageAsCode(image: Image, fileName: *const c::char) bool;

// Image generation
export @symbol("GenImageColor") fn GenImageColor(width: int, height: int, color: Color) Image;
export @symbol("GenImageGradientLinear") fn GenImageGradientLinear(width: int, height: int, direction: int, start: Color, end: Color) Image;
export @symbol("GenImageGradientRadial") fn GenImageGradientRadial(width: int, height: int, density: f32, inner: Color, outer: Color) Image;
export @symbol("GenImageGradientSquare") fn GenImageGradientSquare(width: int, height: int, density: f32, inner: Color, outer: Color) Image;
export @symbol("GenImageChecked") fn GenImageChecked(width: int, height: int, checksX: int, checksY: int, col1: Color, col2: Color) Image;
export @symbol("GenImageWhiteNoise") fn GenImageWhiteNoise(width: int, height: int, factor: f32) Image;
export @symbol("GenImagePerlinNoise") fn GenImagePerlinNoise(width: int, height: int, offsetX: int, offsetY: int, scale: f32) Image;
export @symbol("GenImageCellular") fn GenImageCellular(width: int, height: int, tileSize: int) Image;
export @symbol("GenImageText") fn GenImageText(width: int, height: int, text: *const c::char) Image;

// Image manipulation
export @symbol("ImageCopy") fn ImageCopy(image: Image) Image;
export @symbol("ImageFromImage") fn ImageFromImage(image: Image, rec: Rectangle) Image;
export @symbol("ImageFromChannel") fn ImageFromChannel(image: Image, selectedChannel: int) Image;
export @symbol("ImageText") fn ImageText(text: *const c::char, fontSize: int, color: Color) Image;
export @symbol("ImageTextEx") fn ImageTextEx(font: Font, text: *const c::char, fontSize: f32, spacing: f32, tint: Color) Image;
export @symbol("ImageFormat") fn ImageFormat(image: nullable *Image, newFormat: int) void;
export @symbol("ImageToPOT") fn ImageToPOT(image: nullable *Image, fill: Color) void;
export @symbol("ImageCrop") fn ImageCrop(image: nullable *Image, crop: Rectangle) void;
export @symbol("ImageAlphaCrop") fn ImageAlphaCrop(image: nullable *Image, threshold: f32) void;
export @symbol("ImageAlphaClear") fn ImageAlphaClear(image: nullable *Image, color: Color, threshold: f32) void;
export @symbol("ImageAlphaMask") fn ImageAlphaMask(image: nullable *Image, alphaMask: Image) void;
export @symbol("ImageAlphaPremultiply") fn ImageAlphaPremultiply(image: nullable *Image) void;
export @symbol("ImageBlurGaussian") fn ImageBlurGaussian(image: nullable *Image, blurSize: int) void;
export @symbol("ImageKernelConvolution") fn ImageKernelConvolution(image: nullable *Image, kernel: *const f32, kernelSize: int) void;
export @symbol("ImageResize") fn ImageResize(image: nullable *Image, newWidth: int, newHeight: int) void;
export @symbol("ImageResizeNN") fn ImageResizeNN(image: nullable *Image, newWidth: int, newHeight: int) void;
export @symbol("ImageResizeCanvas") fn ImageResizeCanvas(image: nullable *Image, newWidth: int, newHeight: int, offsetX: int, offsetY: int, fill: Color) void;
export @symbol("ImageMipmaps") fn ImageMipmaps(image: nullable *Image) void;
export @symbol("ImageDither") fn ImageDither(image: nullable *Image, rBpp: int, gBpp: int, bBpp: int, aBpp: int) void;
export @symbol("ImageFlipVertical") fn ImageFlipVertical(image: nullable *Image) void;
export @symbol("ImageFlipHorizontal") fn ImageFlipHorizontal(image: nullable *Image) void;
export @symbol("ImageRotate") fn ImageRotate(image: nullable *Image, degrees: int) void;
export @symbol("ImageRotateCW") fn ImageRotateCW(image: nullable *Image) void;
export @symbol("ImageRotateCCW") fn ImageRotateCCW(image: nullable *Image) void;
export @symbol("ImageColorTint") fn ImageColorTint(image: nullable *Image, color: Color) void;
export @symbol("ImageColorInvert") fn ImageColorInvert(image: nullable *Image) void;
export @symbol("ImageColorGrayscale") fn ImageColorGrayscale(image: nullable *Image) void;
export @symbol("ImageColorContrast") fn ImageColorContrast(image: nullable *Image, contrast: f32) void;
export @symbol("ImageColorBrightness") fn ImageColorBrightness(image: nullable *Image, brightness: int) void;
export @symbol("ImageColorReplace") fn ImageColorReplace(image: nullable *Image, color: Color, replace: Color) void;
export @symbol("LoadImageColors") fn LoadImageColors(image: Image) nullable *Color;
export @symbol("LoadImagePalette") fn LoadImagePalette(image: Image, maxPaletteSize: int, colorCount: nullable *int) nullable *Color;
export @symbol("UnloadImageColors") fn UnloadImageColors(colors: nullable *Color) void;
export @symbol("UnloadImagePalette") fn UnloadImagePalette(colors: nullable *Color) void;
export @symbol("GetImageAlphaBorder") fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;
export @symbol("GetImageColor") fn GetImageColor(image: Image, x: int, y: int) Color;

// Image drawing (CPU)
export @symbol("ImageClearBackground") fn ImageClearBackground(dst: nullable *Image, color: Color) void;
export @symbol("ImageDrawPixel") fn ImageDrawPixel(dst: nullable *Image, posX: int, posY: int, color: Color) void;
export @symbol("ImageDrawPixelV") fn ImageDrawPixelV(dst: nullable *Image, position: Vector2, color: Color) void;
export @symbol("ImageDrawLine") fn ImageDrawLine(dst: nullable *Image, startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;
export @symbol("ImageDrawLineV") fn ImageDrawLineV(dst: nullable *Image, start: Vector2, end: Vector2, color: Color) void;
export @symbol("ImageDrawLineEx") fn ImageDrawLineEx(dst: nullable *Image, start: Vector2, end: Vector2, thick: int, color: Color) void;
export @symbol("ImageDrawCircle") fn ImageDrawCircle(dst: nullable *Image, centerX: int, centerY: int, radius: int, color: Color) void;
export @symbol("ImageDrawCircleV") fn ImageDrawCircleV(dst: nullable *Image, center: Vector2, radius: int, color: Color) void;
export @symbol("ImageDrawCircleLines") fn ImageDrawCircleLines(dst: nullable *Image, centerX: int, centerY: int, radius: int, color: Color) void;
export @symbol("ImageDrawCircleLinesV") fn ImageDrawCircleLinesV(dst: nullable *Image, center: Vector2, radius: int, color: Color) void;
export @symbol("ImageDrawRectangle") fn ImageDrawRectangle(dst: nullable *Image, posX: int, posY: int, width: int, height: int, color: Color) void;
export @symbol("ImageDrawRectangleV") fn ImageDrawRectangleV(dst: nullable *Image, position: Vector2, sz: Vector2, color: Color) void;
export @symbol("ImageDrawRectangleRec") fn ImageDrawRectangleRec(dst: nullable *Image, rec: Rectangle, color: Color) void;
export @symbol("ImageDrawRectangleLines") fn ImageDrawRectangleLines(dst: nullable *Image, rec: Rectangle, thick: int, color: Color) void;
export @symbol("ImageDrawTriangle") fn ImageDrawTriangle(dst: nullable *Image, v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
export @symbol("ImageDrawTriangleEx") fn ImageDrawTriangleEx(dst: nullable *Image, v1: Vector2, v2: Vector2, v3: Vector2, c1: Color, c2: Color, c3: Color) void;
export @symbol("ImageDrawTriangleLines") fn ImageDrawTriangleLines(dst: nullable *Image, v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
export @symbol("ImageDrawTriangleFan") fn ImageDrawTriangleFan(dst: nullable *Image, points: *const Vector2, pointCount: int, color: Color) void;
export @symbol("ImageDrawTriangleStrip") fn ImageDrawTriangleStrip(dst: nullable *Image, points: *const Vector2, pointCount: int, color: Color) void;
export @symbol("ImageDraw") fn ImageDraw(dst: nullable *Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;
export @symbol("ImageDrawText") fn ImageDrawText(dst: nullable *Image, text: *const c::char, posX: int, posY: int, fontSize: int, color: Color) void;
export @symbol("ImageDrawTextEx") fn ImageDrawTextEx(dst: nullable *Image, font: Font, text: *const c::char, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;

// Texture loading
export @symbol("LoadTexture") fn LoadTexture(fileName: *const c::char) Texture2D;
export @symbol("LoadTextureFromImage") fn LoadTextureFromImage(image: Image) Texture2D;
export @symbol("LoadTextureCubemap") fn LoadTextureCubemap(image: Image, layout: int) TextureCubemap;
export @symbol("LoadRenderTexture") fn LoadRenderTexture(width: int, height: int) RenderTexture2D;
export @symbol("IsTextureValid") fn IsTextureValid(texture: Texture2D) bool;
export @symbol("UnloadTexture") fn UnloadTexture(texture: Texture2D) void;
export @symbol("IsRenderTextureValid") fn IsRenderTextureValid(target: RenderTexture2D) bool;
export @symbol("UnloadRenderTexture") fn UnloadRenderTexture(target: RenderTexture2D) void;
export @symbol("UpdateTexture") fn UpdateTexture(texture: Texture2D, pixels: nullable *const opaque) void;
export @symbol("UpdateTextureRec") fn UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: nullable *const opaque) void;

// Texture configuration
export @symbol("GenTextureMipmaps") fn GenTextureMipmaps(texture: nullable *Texture2D) void;
export @symbol("SetTextureFilter") fn SetTextureFilter(texture: Texture2D, filter: int) void;
export @symbol("SetTextureWrap") fn SetTextureWrap(texture: Texture2D, wrap: int) void;

// Texture drawing
export @symbol("DrawTexture") fn DrawTexture(texture: Texture2D, posX: int, posY: int, tint: Color) void;
export @symbol("DrawTextureV") fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;
export @symbol("DrawTextureEx") fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;
export @symbol("DrawTextureRec") fn DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;
export @symbol("DrawTexturePro") fn DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
export @symbol("DrawTextureNPatch") fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;

// Color/pixel functions
export @symbol("ColorIsEqual") fn ColorIsEqual(col1: Color, col2: Color) bool;
export @symbol("Fade") fn Fade(color: Color, alpha: f32) Color;
export @symbol("ColorToInt") fn ColorToInt(color: Color) int;
export @symbol("ColorNormalize") fn ColorNormalize(color: Color) Vector4;
export @symbol("ColorFromNormalized") fn ColorFromNormalized(normalized: Vector4) Color;
export @symbol("ColorToHSV") fn ColorToHSV(color: Color) Vector3;
export @symbol("ColorFromHSV") fn ColorFromHSV(hue: f32, saturation: f32, value: f32) Color;
export @symbol("ColorTint") fn ColorTint(color: Color, tint: Color) Color;
export @symbol("ColorBrightness") fn ColorBrightness(color: Color, factor: f32) Color;
export @symbol("ColorContrast") fn ColorContrast(color: Color, contrast: f32) Color;
export @symbol("ColorAlpha") fn ColorAlpha(color: Color, alpha: f32) Color;
export @symbol("ColorAlphaBlend") fn ColorAlphaBlend(dst: Color, src: Color, tint: Color) Color;
export @symbol("ColorLerp") fn ColorLerp(color1: Color, color2: Color, factor: f32) Color;
export @symbol("GetColor") fn GetColor(hexValue: u32) Color;
export @symbol("GetPixelColor") fn GetPixelColor(srcPtr: nullable *opaque, format: int) Color;
export @symbol("SetPixelColor") fn SetPixelColor(dstPtr: nullable *opaque, color: Color, format: int) void;
export @symbol("GetPixelDataSize") fn GetPixelDataSize(width: int, height: int, format: int) int;
