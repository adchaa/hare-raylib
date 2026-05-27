use types::c;

// Font loading/unloading
export @symbol("GetFontDefault") fn GetFontDefault() Font;
export @symbol("LoadFont") fn LoadFont(fileName: *const c::char) Font;
export @symbol("LoadFontEx") fn LoadFontEx(fileName: *const c::char, fontSize: int, codepoints: nullable *const int, codepointCount: int) Font;
export @symbol("LoadFontFromImage") fn LoadFontFromImage(image: Image, key: Color, firstChar: int) Font;
export @symbol("LoadFontFromMemory") fn LoadFontFromMemory(fileType: *const c::char, fileData: nullable *const u8, dataSize: int, fontSize: int, codepoints: nullable *const int, codepointCount: int) Font;
export @symbol("IsFontValid") fn IsFontValid(font: Font) bool;
export @symbol("LoadFontData") fn LoadFontData(fileData: nullable *const u8, dataSize: int, fontSize: int, codepoints: nullable *const int, codepointCount: int, type_: int, glyphCount: nullable *int) nullable *GlyphInfo;
export @symbol("GenImageFontAtlas") fn GenImageFontAtlas(glyphs: nullable *const GlyphInfo, glyphRecs: nullable *nullable *Rectangle, glyphCount: int, fontSize: int, padding: int, packMethod: int) Image;
export @symbol("UnloadFontData") fn UnloadFontData(glyphs: nullable *GlyphInfo, glyphCount: int) void;
export @symbol("UnloadFont") fn UnloadFont(font: Font) void;
export @symbol("ExportFontAsCode") fn ExportFontAsCode(font: Font, fileName: *const c::char) bool;

// Text drawing
export @symbol("DrawFPS") fn DrawFPS(posX: int, posY: int) void;
export @symbol("DrawText") fn DrawText(text: *const c::char, posX: int, posY: int, fontSize: int, color: Color) void;
export @symbol("DrawTextEx") fn DrawTextEx(font: Font, text: *const c::char, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
export @symbol("DrawTextPro") fn DrawTextPro(font: Font, text: *const c::char, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void;
export @symbol("DrawTextCodepoint") fn DrawTextCodepoint(font: Font, codepoint: int, position: Vector2, fontSize: f32, tint: Color) void;
export @symbol("DrawTextCodepoints") fn DrawTextCodepoints(font: Font, codepoints: *const int, codepointCount: int, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;

// Text font info
export @symbol("SetTextLineSpacing") fn SetTextLineSpacing(spacing: int) void;
export @symbol("MeasureText") fn MeasureText(text: *const c::char, fontSize: int) int;
export @symbol("MeasureTextEx") fn MeasureTextEx(font: Font, text: *const c::char, fontSize: f32, spacing: f32) Vector2;
export @symbol("MeasureTextCodepoints") fn MeasureTextCodepoints(font: Font, codepoints: *const int, length: int, fontSize: f32, spacing: f32) Vector2;
export @symbol("GetGlyphIndex") fn GetGlyphIndex(font: Font, codepoint: int) int;
export @symbol("GetGlyphInfo") fn GetGlyphInfo(font: Font, codepoint: int) GlyphInfo;
export @symbol("GetGlyphAtlasRec") fn GetGlyphAtlasRec(font: Font, codepoint: int) Rectangle;

// Text codepoints
export @symbol("LoadUTF8") fn LoadUTF8(codepoints: *const int, length: int) nullable *c::char;
export @symbol("UnloadUTF8") fn UnloadUTF8(text: nullable *c::char) void;
export @symbol("LoadCodepoints") fn LoadCodepoints(text: *const c::char, count: nullable *int) nullable *int;
export @symbol("UnloadCodepoints") fn UnloadCodepoints(codepoints: nullable *int) void;
export @symbol("GetCodepointCount") fn GetCodepointCount(text: *const c::char) int;
export @symbol("GetCodepoint") fn GetCodepoint(text: *const c::char, codepointSize: nullable *int) int;
export @symbol("GetCodepointNext") fn GetCodepointNext(text: *const c::char, codepointSize: nullable *int) int;
export @symbol("GetCodepointPrevious") fn GetCodepointPrevious(text: *const c::char, codepointSize: nullable *int) int;
export @symbol("CodepointToUTF8") fn CodepointToUTF8(codepoint: int, utf8Size: nullable *int) *const c::char;

// Text strings (byte chars)
export @symbol("LoadTextLines") fn LoadTextLines(text: *const c::char, count: nullable *int) nullable **c::char;
export @symbol("UnloadTextLines") fn UnloadTextLines(text: nullable **c::char, lineCount: int) void;
export @symbol("TextCopy") fn TextCopy(dst: nullable *c::char, src: *const c::char) int;
export @symbol("TextIsEqual") fn TextIsEqual(text1: *const c::char, text2: *const c::char) bool;
export @symbol("TextLength") fn TextLength(text: *const c::char) u32;
export @symbol("TextFormat") fn TextFormat(text: *const c::char, ...) *const c::char;
export @symbol("TextSubtext") fn TextSubtext(text: *const c::char, position: int, length: int) *const c::char;
export @symbol("TextRemoveSpaces") fn TextRemoveSpaces(text: *const c::char) *const c::char;
export @symbol("GetTextBetween") fn GetTextBetween(text: *const c::char, begin: *const c::char, end: *const c::char) nullable *c::char;
export @symbol("TextReplace") fn TextReplace(text: *const c::char, search: *const c::char, replacement: *const c::char) nullable *c::char;
export @symbol("TextReplaceAlloc") fn TextReplaceAlloc(text: *const c::char, search: *const c::char, replacement: *const c::char) nullable *c::char;
export @symbol("TextReplaceBetween") fn TextReplaceBetween(text: *const c::char, begin: *const c::char, end: *const c::char, replacement: *const c::char) nullable *c::char;
export @symbol("TextReplaceBetweenAlloc") fn TextReplaceBetweenAlloc(text: *const c::char, begin: *const c::char, end: *const c::char, replacement: *const c::char) nullable *c::char;
export @symbol("TextInsert") fn TextInsert(text: *const c::char, ins: *const c::char, position: int) nullable *c::char;
export @symbol("TextInsertAlloc") fn TextInsertAlloc(text: *const c::char, ins: *const c::char, position: int) nullable *c::char;
export @symbol("TextJoin") fn TextJoin(textList: nullable **c::char, count: int, delimiter: *const c::char) nullable *c::char;
export @symbol("TextSplit") fn TextSplit(text: *const c::char, delimiter: c::char, count: nullable *int) nullable **c::char;
export @symbol("TextAppend") fn TextAppend(text: nullable *c::char, app: *const c::char, position: nullable *int) void;
export @symbol("TextFindIndex") fn TextFindIndex(text: *const c::char, search: *const c::char) int;
export @symbol("TextToUpper") fn TextToUpper(text: *const c::char) nullable *c::char;
export @symbol("TextToLower") fn TextToLower(text: *const c::char) nullable *c::char;
export @symbol("TextToPascal") fn TextToPascal(text: *const c::char) nullable *c::char;
export @symbol("TextToSnake") fn TextToSnake(text: *const c::char) nullable *c::char;
export @symbol("TextToCamel") fn TextToCamel(text: *const c::char) nullable *c::char;
export @symbol("TextToInteger") fn TextToInteger(text: *const c::char) int;
export @symbol("TextToFloat") fn TextToFloat(text: *const c::char) f32;
