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

		raylib::DrawFPS(20, 50);
		raylib::EndDrawing();
	};

	raylib::CloseWindow();
};
