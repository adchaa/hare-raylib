use types::c;

// Window-related functions
export @symbol("InitWindow") fn InitWindow(width: int, height: int, title: *const c::char) void;
export @symbol("CloseWindow") fn CloseWindow() void;
export @symbol("WindowShouldClose") fn WindowShouldClose() bool;
export @symbol("IsWindowReady") fn IsWindowReady() bool;
export @symbol("IsWindowFullscreen") fn IsWindowFullscreen() bool;
export @symbol("IsWindowHidden") fn IsWindowHidden() bool;
export @symbol("IsWindowMinimized") fn IsWindowMinimized() bool;
export @symbol("IsWindowMaximized") fn IsWindowMaximized() bool;
export @symbol("IsWindowFocused") fn IsWindowFocused() bool;
export @symbol("IsWindowResized") fn IsWindowResized() bool;
export @symbol("IsWindowState") fn IsWindowState(flag: u32) bool;
export @symbol("SetWindowState") fn SetWindowState(flags: u32) void;
export @symbol("ClearWindowState") fn ClearWindowState(flags: u32) void;
export @symbol("ToggleFullscreen") fn ToggleFullscreen() void;
export @symbol("ToggleBorderlessWindowed") fn ToggleBorderlessWindowed() void;
export @symbol("MaximizeWindow") fn MaximizeWindow() void;
export @symbol("MinimizeWindow") fn MinimizeWindow() void;
export @symbol("RestoreWindow") fn RestoreWindow() void;
export @symbol("SetWindowIcon") fn SetWindowIcon(image: Image) void;
export @symbol("SetWindowIcons") fn SetWindowIcons(images: nullable *Image, count: int) void;
export @symbol("SetWindowTitle") fn SetWindowTitle(title: *const c::char) void;
export @symbol("SetWindowPosition") fn SetWindowPosition(x: int, y: int) void;
export @symbol("SetWindowMonitor") fn SetWindowMonitor(monitor: int) void;
export @symbol("SetWindowMinSize") fn SetWindowMinSize(width: int, height: int) void;
export @symbol("SetWindowMaxSize") fn SetWindowMaxSize(width: int, height: int) void;
export @symbol("SetWindowSize") fn SetWindowSize(width: int, height: int) void;
export @symbol("SetWindowOpacity") fn SetWindowOpacity(opacity: f32) void;
export @symbol("SetWindowFocused") fn SetWindowFocused() void;
export @symbol("GetWindowHandle") fn GetWindowHandle() nullable *opaque;
export @symbol("GetScreenWidth") fn GetScreenWidth() int;
export @symbol("GetScreenHeight") fn GetScreenHeight() int;
export @symbol("GetRenderWidth") fn GetRenderWidth() int;
export @symbol("GetRenderHeight") fn GetRenderHeight() int;
export @symbol("GetMonitorCount") fn GetMonitorCount() int;
export @symbol("GetCurrentMonitor") fn GetCurrentMonitor() int;
export @symbol("GetMonitorPosition") fn GetMonitorPosition(monitor: int) Vector2;
export @symbol("GetMonitorWidth") fn GetMonitorWidth(monitor: int) int;
export @symbol("GetMonitorHeight") fn GetMonitorHeight(monitor: int) int;
export @symbol("GetMonitorPhysicalWidth") fn GetMonitorPhysicalWidth(monitor: int) int;
export @symbol("GetMonitorPhysicalHeight") fn GetMonitorPhysicalHeight(monitor: int) int;
export @symbol("GetMonitorRefreshRate") fn GetMonitorRefreshRate(monitor: int) int;
export @symbol("GetWindowPosition") fn GetWindowPosition() Vector2;
export @symbol("GetWindowScaleDPI") fn GetWindowScaleDPI() Vector2;
export @symbol("GetMonitorName") fn GetMonitorName(monitor: int) *const c::char;
export @symbol("SetClipboardText") fn SetClipboardText(text: *const c::char) void;
export @symbol("GetClipboardText") fn GetClipboardText() *const c::char;
export @symbol("GetClipboardImage") fn GetClipboardImage() Image;
export @symbol("EnableEventWaiting") fn EnableEventWaiting() void;
export @symbol("DisableEventWaiting") fn DisableEventWaiting() void;

// Cursor-related functions
export @symbol("ShowCursor") fn ShowCursor() void;
export @symbol("HideCursor") fn HideCursor() void;
export @symbol("IsCursorHidden") fn IsCursorHidden() bool;
export @symbol("EnableCursor") fn EnableCursor() void;
export @symbol("DisableCursor") fn DisableCursor() void;
export @symbol("IsCursorOnScreen") fn IsCursorOnScreen() bool;

// Drawing-related functions
export @symbol("ClearBackground") fn ClearBackground(color: Color) void;
export @symbol("BeginDrawing") fn BeginDrawing() void;
export @symbol("EndDrawing") fn EndDrawing() void;
export @symbol("BeginMode2D") fn BeginMode2D(camera: Camera2D) void;
export @symbol("EndMode2D") fn EndMode2D() void;
export @symbol("BeginMode3D") fn BeginMode3D(camera: Camera3D) void;
export @symbol("EndMode3D") fn EndMode3D() void;
export @symbol("BeginTextureMode") fn BeginTextureMode(target: RenderTexture2D) void;
export @symbol("EndTextureMode") fn EndTextureMode() void;
export @symbol("BeginShaderMode") fn BeginShaderMode(shader: Shader) void;
export @symbol("EndShaderMode") fn EndShaderMode() void;
export @symbol("BeginBlendMode") fn BeginBlendMode(mode: int) void;
export @symbol("EndBlendMode") fn EndBlendMode() void;
export @symbol("BeginScissorMode") fn BeginScissorMode(x: int, y: int, width: int, height: int) void;
export @symbol("EndScissorMode") fn EndScissorMode() void;
export @symbol("BeginVrStereoMode") fn BeginVrStereoMode(config: VrStereoConfig) void;
export @symbol("EndVrStereoMode") fn EndVrStereoMode() void;

// VR stereo config
export @symbol("LoadVrStereoConfig") fn LoadVrStereoConfig(device: VrDeviceInfo) VrStereoConfig;
export @symbol("UnloadVrStereoConfig") fn UnloadVrStereoConfig(config: VrStereoConfig) void;

// Shader management
export @symbol("LoadShader") fn LoadShader(vsFileName: nullable *const c::char, fsFileName: nullable *const c::char) Shader;
export @symbol("LoadShaderFromMemory") fn LoadShaderFromMemory(vsCode: nullable *const c::char, fsCode: nullable *const c::char) Shader;
export @symbol("IsShaderValid") fn IsShaderValid(shader: Shader) bool;
export @symbol("GetShaderLocation") fn GetShaderLocation(shader: Shader, uniformName: *const c::char) int;
export @symbol("GetShaderLocationAttrib") fn GetShaderLocationAttrib(shader: Shader, attribName: *const c::char) int;
export @symbol("SetShaderValue") fn SetShaderValue(shader: Shader, locIndex: int, value: nullable *const opaque, uniformType: int) void;
export @symbol("SetShaderValueV") fn SetShaderValueV(shader: Shader, locIndex: int, value: nullable *const opaque, uniformType: int, count: int) void;
export @symbol("SetShaderValueMatrix") fn SetShaderValueMatrix(shader: Shader, locIndex: int, mat: Matrix) void;
export @symbol("SetShaderValueTexture") fn SetShaderValueTexture(shader: Shader, locIndex: int, texture: Texture2D) void;
export @symbol("UnloadShader") fn UnloadShader(shader: Shader) void;

// Screen-space functions
export @symbol("GetScreenToWorldRay") fn GetScreenToWorldRay(position: Vector2, camera: Camera) Ray;
export @symbol("GetScreenToWorldRayEx") fn GetScreenToWorldRayEx(position: Vector2, camera: Camera, width: int, height: int) Ray;
export @symbol("GetWorldToScreen") fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;
export @symbol("GetWorldToScreenEx") fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: int, height: int) Vector2;
export @symbol("GetWorldToScreen2D") fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;
export @symbol("GetScreenToWorld2D") fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;
export @symbol("GetCameraMatrix") fn GetCameraMatrix(camera: Camera) Matrix;
export @symbol("GetCameraMatrix2D") fn GetCameraMatrix2D(camera: Camera2D) Matrix;

// Timing-related
export @symbol("SetTargetFPS") fn SetTargetFPS(fps: int) void;
export @symbol("GetFrameTime") fn GetFrameTime() f32;
export @symbol("GetTime") fn GetTime() f64;
export @symbol("GetFPS") fn GetFPS() int;

// Custom frame control
export @symbol("SwapScreenBuffer") fn SwapScreenBuffer() void;
export @symbol("PollInputEvents") fn PollInputEvents() void;
export @symbol("WaitTime") fn WaitTime(seconds: f64) void;

// Random
export @symbol("SetRandomSeed") fn SetRandomSeed(seed: u32) void;
export @symbol("GetRandomValue") fn GetRandomValue(min: int, max: int) int;
export @symbol("LoadRandomSequence") fn LoadRandomSequence(count: u32, min: int, max: int) nullable *int;
export @symbol("UnloadRandomSequence") fn UnloadRandomSequence(sequence: nullable *int) void;

// Misc
export @symbol("TakeScreenshot") fn TakeScreenshot(fileName: *const c::char) void;
export @symbol("SetConfigFlags") fn SetConfigFlags(flags: u32) void;
export @symbol("OpenURL") fn OpenURL(url: *const c::char) void;

// Logging
export @symbol("SetTraceLogLevel") fn SetTraceLogLevel(logLevel: int) void;
export @symbol("TraceLog") fn TraceLog(logLevel: int, text: *const c::char, ...) void;
export @symbol("SetTraceLogCallback") fn SetTraceLogCallback(callback: TraceLogCallback) void;

// Memory management
export @symbol("MemAlloc") fn MemAlloc(sz: u32) nullable *opaque;
export @symbol("MemRealloc") fn MemRealloc(ptr: nullable *opaque, sz: u32) nullable *opaque;
export @symbol("MemFree") fn MemFree(ptr: nullable *opaque) void;

// File system
export @symbol("LoadFileData") fn LoadFileData(fileName: *const c::char, dataSize: nullable *int) nullable *u8;
export @symbol("UnloadFileData") fn UnloadFileData(data: nullable *u8) void;
export @symbol("SaveFileData") fn SaveFileData(fileName: *const c::char, data: nullable *opaque, dataSize: int) bool;
export @symbol("ExportDataAsCode") fn ExportDataAsCode(data: nullable *const u8, dataSize: int, fileName: *const c::char) bool;
export @symbol("LoadFileText") fn LoadFileText(fileName: *const c::char) nullable *c::char;
export @symbol("UnloadFileText") fn UnloadFileText(text: nullable *c::char) void;
export @symbol("SaveFileText") fn SaveFileText(fileName: *const c::char, text: nullable *const c::char) bool;

// File callbacks
export @symbol("SetLoadFileDataCallback") fn SetLoadFileDataCallback(callback: LoadFileDataCallback) void;
export @symbol("SetSaveFileDataCallback") fn SetSaveFileDataCallback(callback: SaveFileDataCallback) void;
export @symbol("SetLoadFileTextCallback") fn SetLoadFileTextCallback(callback: LoadFileTextCallback) void;
export @symbol("SetSaveFileTextCallback") fn SetSaveFileTextCallback(callback: SaveFileTextCallback) void;

// File operations
export @symbol("FileRename") fn FileRename(fileName: *const c::char, fileRename: *const c::char) int;
export @symbol("FileRemove") fn FileRemove(fileName: *const c::char) int;
export @symbol("FileCopy") fn FileCopy(srcPath: *const c::char, dstPath: *const c::char) int;
export @symbol("FileMove") fn FileMove(srcPath: *const c::char, dstPath: *const c::char) int;
export @symbol("FileTextReplace") fn FileTextReplace(fileName: *const c::char, search: *const c::char, replacement: *const c::char) int;
export @symbol("FileTextFindIndex") fn FileTextFindIndex(fileName: *const c::char, search: *const c::char) int;
export @symbol("FileExists") fn FileExists(fileName: *const c::char) bool;
export @symbol("DirectoryExists") fn DirectoryExists(dirPath: *const c::char) bool;
export @symbol("IsFileExtension") fn IsFileExtension(fileName: *const c::char, ext: *const c::char) bool;
export @symbol("GetFileLength") fn GetFileLength(fileName: *const c::char) int;
export @symbol("GetFileModTime") fn GetFileModTime(fileName: *const c::char) i64;
export @symbol("GetFileExtension") fn GetFileExtension(fileName: *const c::char) *const c::char;
export @symbol("GetFileName") fn GetFileName(filePath: *const c::char) *const c::char;
export @symbol("GetFileNameWithoutExt") fn GetFileNameWithoutExt(filePath: *const c::char) *const c::char;
export @symbol("GetDirectoryPath") fn GetDirectoryPath(filePath: *const c::char) *const c::char;
export @symbol("GetPrevDirectoryPath") fn GetPrevDirectoryPath(dirPath: *const c::char) *const c::char;
export @symbol("GetWorkingDirectory") fn GetWorkingDirectory() *const c::char;
export @symbol("GetApplicationDirectory") fn GetApplicationDirectory() *const c::char;
export @symbol("MakeDirectory") fn MakeDirectory(dirPath: *const c::char) int;
export @symbol("ChangeDirectory") fn ChangeDirectory(dirPath: *const c::char) bool;
export @symbol("IsPathFile") fn IsPathFile(path: *const c::char) bool;
export @symbol("IsFileNameValid") fn IsFileNameValid(fileName: *const c::char) bool;
export @symbol("LoadDirectoryFiles") fn LoadDirectoryFiles(dirPath: *const c::char) FilePathList;
export @symbol("LoadDirectoryFilesEx") fn LoadDirectoryFilesEx(basePath: *const c::char, filter: nullable *const c::char, scanSubdirs: bool) FilePathList;
export @symbol("UnloadDirectoryFiles") fn UnloadDirectoryFiles(files: FilePathList) void;
export @symbol("IsFileDropped") fn IsFileDropped() bool;
export @symbol("LoadDroppedFiles") fn LoadDroppedFiles() FilePathList;
export @symbol("UnloadDroppedFiles") fn UnloadDroppedFiles(files: FilePathList) void;
export @symbol("GetDirectoryFileCount") fn GetDirectoryFileCount(dirPath: *const c::char) u32;
export @symbol("GetDirectoryFileCountEx") fn GetDirectoryFileCountEx(basePath: *const c::char, filter: nullable *const c::char, scanSubdirs: bool) u32;

// Compression/Encoding
export @symbol("CompressData") fn CompressData(data: nullable *const u8, dataSize: int, compDataSize: nullable *int) nullable *u8;
export @symbol("DecompressData") fn DecompressData(compData: nullable *const u8, compDataSize: int, dataSize: nullable *int) nullable *u8;
export @symbol("EncodeDataBase64") fn EncodeDataBase64(data: nullable *const u8, dataSize: int, outputSize: nullable *int) nullable *c::char;
export @symbol("DecodeDataBase64") fn DecodeDataBase64(text: nullable *const c::char, outputSize: nullable *int) nullable *u8;
export @symbol("ComputeCRC32") fn ComputeCRC32(data: nullable *u8, dataSize: int) u32;
export @symbol("ComputeMD5") fn ComputeMD5(data: nullable *u8, dataSize: int) nullable *u32;
export @symbol("ComputeSHA1") fn ComputeSHA1(data: nullable *u8, dataSize: int) nullable *u32;
export @symbol("ComputeSHA256") fn ComputeSHA256(data: nullable *u8, dataSize: int) nullable *u32;

// Automation events
export @symbol("LoadAutomationEventList") fn LoadAutomationEventList(fileName: nullable *const c::char) AutomationEventList;
export @symbol("UnloadAutomationEventList") fn UnloadAutomationEventList(list: AutomationEventList) void;
export @symbol("ExportAutomationEventList") fn ExportAutomationEventList(list: AutomationEventList, fileName: *const c::char) bool;
export @symbol("SetAutomationEventList") fn SetAutomationEventList(list: nullable *AutomationEventList) void;
export @symbol("SetAutomationEventBaseFrame") fn SetAutomationEventBaseFrame(frame: int) void;
export @symbol("StartAutomationEventRecording") fn StartAutomationEventRecording() void;
export @symbol("StopAutomationEventRecording") fn StopAutomationEventRecording() void;
export @symbol("PlayAutomationEvent") fn PlayAutomationEvent(event: AutomationEvent) void;

// Input: Keyboard
export @symbol("IsKeyPressed") fn IsKeyPressed(key: int) bool;
export @symbol("IsKeyPressedRepeat") fn IsKeyPressedRepeat(key: int) bool;
export @symbol("IsKeyDown") fn IsKeyDown(key: int) bool;
export @symbol("IsKeyReleased") fn IsKeyReleased(key: int) bool;
export @symbol("IsKeyUp") fn IsKeyUp(key: int) bool;
export @symbol("GetKeyPressed") fn GetKeyPressed() int;
export @symbol("GetCharPressed") fn GetCharPressed() int;
export @symbol("GetKeyName") fn GetKeyName(key: int) *const c::char;
export @symbol("SetExitKey") fn SetExitKey(key: int) void;

// Input: Gamepad
export @symbol("IsGamepadAvailable") fn IsGamepadAvailable(gamepad: int) bool;
export @symbol("GetGamepadName") fn GetGamepadName(gamepad: int) *const c::char;
export @symbol("IsGamepadButtonPressed") fn IsGamepadButtonPressed(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonDown") fn IsGamepadButtonDown(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonReleased") fn IsGamepadButtonReleased(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonUp") fn IsGamepadButtonUp(gamepad: int, button: int) bool;
export @symbol("GetGamepadButtonPressed") fn GetGamepadButtonPressed() int;
export @symbol("GetGamepadAxisCount") fn GetGamepadAxisCount(gamepad: int) int;
export @symbol("GetGamepadAxisMovement") fn GetGamepadAxisMovement(gamepad: int, axis: int) f32;
export @symbol("SetGamepadMappings") fn SetGamepadMappings(mappings: *const c::char) int;
export @symbol("SetGamepadVibration") fn SetGamepadVibration(gamepad: int, leftMotor: f32, rightMotor: f32, duration: f32) void;

// Input: Mouse
export @symbol("IsMouseButtonPressed") fn IsMouseButtonPressed(button: int) bool;
export @symbol("IsMouseButtonDown") fn IsMouseButtonDown(button: int) bool;
export @symbol("IsMouseButtonReleased") fn IsMouseButtonReleased(button: int) bool;
export @symbol("IsMouseButtonUp") fn IsMouseButtonUp(button: int) bool;
export @symbol("GetMouseX") fn GetMouseX() int;
export @symbol("GetMouseY") fn GetMouseY() int;
export @symbol("GetMousePosition") fn GetMousePosition() Vector2;
export @symbol("GetMouseDelta") fn GetMouseDelta() Vector2;
export @symbol("SetMousePosition") fn SetMousePosition(x: int, y: int) void;
export @symbol("SetMouseOffset") fn SetMouseOffset(offsetX: int, offsetY: int) void;
export @symbol("SetMouseScale") fn SetMouseScale(scaleX: f32, scaleY: f32) void;
export @symbol("GetMouseWheelMove") fn GetMouseWheelMove() f32;
export @symbol("GetMouseWheelMoveV") fn GetMouseWheelMoveV() Vector2;
export @symbol("SetMouseCursor") fn SetMouseCursor(cursor: int) void;

// Input: Touch
export @symbol("GetTouchX") fn GetTouchX() int;
export @symbol("GetTouchY") fn GetTouchY() int;
export @symbol("GetTouchPosition") fn GetTouchPosition(index: int) Vector2;
export @symbol("GetTouchPointId") fn GetTouchPointId(index: int) int;
export @symbol("GetTouchPointCount") fn GetTouchPointCount() int;

// Gestures
export @symbol("SetGesturesEnabled") fn SetGesturesEnabled(flags: u32) void;
export @symbol("IsGestureDetected") fn IsGestureDetected(gesture: u32) bool;
export @symbol("GetGestureDetected") fn GetGestureDetected() int;
export @symbol("GetGestureHoldDuration") fn GetGestureHoldDuration() f32;
export @symbol("GetGestureDragVector") fn GetGestureDragVector() Vector2;
export @symbol("GetGestureDragAngle") fn GetGestureDragAngle() f32;
export @symbol("GetGesturePinchVector") fn GetGesturePinchVector() Vector2;
export @symbol("GetGesturePinchAngle") fn GetGesturePinchAngle() f32;

// Camera system
export @symbol("UpdateCamera") fn UpdateCamera(camera: nullable *Camera, mode: int) void;
export @symbol("UpdateCameraPro") fn UpdateCameraPro(camera: nullable *Camera, movement: Vector3, rotation: Vector3, zoom: f32) void;
