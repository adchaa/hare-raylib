# hare-raylib

[Hare](https://harelang.org) bindings for [raylib](https://www.raylib.com) 6.0.

## Status

bindings for the core raylib API:

| Module | Coverage |
|---|---|
| Window / Graphics / Input | Full (InitWindow, events, keyboard, mouse, gamepad, touch) |
| Shapes (2D) | Full (lines, circles, rectangles, triangles, polygons, splines) |
| Textures / Images | Full (load, generate, manipulate, draw) |
| Text / Fonts | Full (load, draw, codepoints, UTF-8) |
| Models (3D) | Full (shapes, models, meshes, materials, animations) |
| Audio | Full (device, wave, sound, music, streaming) |
| Shaders | Full (load, uniforms, locations) |
| VR, Automation, File I/O, Compression | Full |
| raymath | Not yet — header-only C library, needs pure Hare implementation or C wrapper |
| rlgl (OpenGL abstraction) | Not yet |

## Requirements

- [Hare](https://harelang.org) 0.26.0 or later
- [raylib](https://www.raylib.com) 6.0 shared library (`libraylib.so`)

## Usage

Build your Hare program with the raylib module and link against `libraylib`:

```sh
hare build -l raylib -o mygame .
```

### Minimal example

```hare
use types::c;
use raylib;

export fn main() void = {
	raylib::InitWindow(800, 600, c::nulstr("Hello Hare + raylib\0"));
	raylib::SetTargetFPS(60);

	for (!raylib::WindowShouldClose()) {
		raylib::BeginDrawing();
		raylib::ClearBackground(raylib::RAYWHITE);

		raylib::DrawCircle(
			raylib::GetScreenWidth() / 2,
			raylib::GetScreenHeight() / 2,
			100.0, raylib::RED,
		);

		raylib::DrawText(
			c::nulstr("Hello from Hare + raylib!\0"),
			20, 20, 20, raylib::DARKBLUE,
		);

		raylib::EndDrawing();
	};

	raylib::CloseWindow();
};
```

Run the example:

```sh
cd example
hare build -l raylib -o basic_window basic_window.ha
./basic_window
```

## C string convention

raylib C functions expect NUL-terminated strings. Use `types::c::nulstr` to convert Hare string literals:

```hare
raylib::InitWindow(800, 600, c::nulstr("My Game\0"));
```

## License

This binding is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

raylib is licensed under the **zlib/libpng** license.
