use types::c;

// Shapes texture management
export @symbol("SetShapesTexture") fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;
export @symbol("GetShapesTexture") fn GetShapesTexture() Texture2D;
export @symbol("GetShapesTextureRectangle") fn GetShapesTextureRectangle() Rectangle;

// Basic shapes: pixels and lines
export @symbol("DrawPixel") fn DrawPixel(posX: int, posY: int, color: Color) void;
export @symbol("DrawPixelV") fn DrawPixelV(position: Vector2, color: Color) void;
export @symbol("DrawLine") fn DrawLine(startPosX: int, startPosY: int, endPosX: int, endPosY: int, color: Color) void;
export @symbol("DrawLineV") fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;
export @symbol("DrawLineEx") fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
export @symbol("DrawLineStrip") fn DrawLineStrip(points: *const Vector2, pointCount: int, color: Color) void;
export @symbol("DrawLineBezier") fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
export @symbol("DrawLineDashed") fn DrawLineDashed(startPos: Vector2, endPos: Vector2, dashSize: int, spaceSize: int, color: Color) void;

// Basic shapes: circles
export @symbol("DrawCircle") fn DrawCircle(centerX: int, centerY: int, radius: f32, color: Color) void;
export @symbol("DrawCircleV") fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;
export @symbol("DrawCircleGradient") fn DrawCircleGradient(center: Vector2, radius: f32, inner: Color, outer: Color) void;
export @symbol("DrawCircleSector") fn DrawCircleSector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;
export @symbol("DrawCircleSectorLines") fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;
export @symbol("DrawCircleLines") fn DrawCircleLines(centerX: int, centerY: int, radius: f32, color: Color) void;
export @symbol("DrawCircleLinesV") fn DrawCircleLinesV(center: Vector2, radius: f32, color: Color) void;

// Basic shapes: ellipses
export @symbol("DrawEllipse") fn DrawEllipse(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;
export @symbol("DrawEllipseV") fn DrawEllipseV(center: Vector2, radiusH: f32, radiusV: f32, color: Color) void;
export @symbol("DrawEllipseLines") fn DrawEllipseLines(centerX: int, centerY: int, radiusH: f32, radiusV: f32, color: Color) void;
export @symbol("DrawEllipseLinesV") fn DrawEllipseLinesV(center: Vector2, radiusH: f32, radiusV: f32, color: Color) void;

// Basic shapes: rings
export @symbol("DrawRing") fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;
export @symbol("DrawRingLines") fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: int, color: Color) void;

// Basic shapes: rectangles
export @symbol("DrawRectangle") fn DrawRectangle(posX: int, posY: int, width: int, height: int, color: Color) void;
export @symbol("DrawRectangleV") fn DrawRectangleV(position: Vector2, sz: Vector2, color: Color) void;
export @symbol("DrawRectangleRec") fn DrawRectangleRec(rec: Rectangle, color: Color) void;
export @symbol("DrawRectanglePro") fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;
export @symbol("DrawRectangleGradientV") fn DrawRectangleGradientV(posX: int, posY: int, width: int, height: int, top: Color, bottom: Color) void;
export @symbol("DrawRectangleGradientH") fn DrawRectangleGradientH(posX: int, posY: int, width: int, height: int, left: Color, right: Color) void;
export @symbol("DrawRectangleGradientEx") fn DrawRectangleGradientEx(rec: Rectangle, topLeft: Color, bottomLeft: Color, bottomRight: Color, topRight: Color) void;
export @symbol("DrawRectangleLines") fn DrawRectangleLines(posX: int, posY: int, width: int, height: int, color: Color) void;
export @symbol("DrawRectangleLinesEx") fn DrawRectangleLinesEx(rec: Rectangle, lineThick: f32, color: Color) void;
export @symbol("DrawRectangleRounded") fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: int, color: Color) void;
export @symbol("DrawRectangleRoundedLines") fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: int, color: Color) void;
export @symbol("DrawRectangleRoundedLinesEx") fn DrawRectangleRoundedLinesEx(rec: Rectangle, roundness: f32, segments: int, lineThick: f32, color: Color) void;

// Basic shapes: triangles and polygons
export @symbol("DrawTriangle") fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
export @symbol("DrawTriangleLines") fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
export @symbol("DrawTriangleFan") fn DrawTriangleFan(points: *const Vector2, pointCount: int, color: Color) void;
export @symbol("DrawTriangleStrip") fn DrawTriangleStrip(points: *const Vector2, pointCount: int, color: Color) void;
export @symbol("DrawPoly") fn DrawPoly(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;
export @symbol("DrawPolyLines") fn DrawPolyLines(center: Vector2, sides: int, radius: f32, rotation: f32, color: Color) void;
export @symbol("DrawPolyLinesEx") fn DrawPolyLinesEx(center: Vector2, sides: int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;

// Splines
export @symbol("DrawSplineLinear") fn DrawSplineLinear(points: *const Vector2, pointCount: int, thick: f32, color: Color) void;
export @symbol("DrawSplineBasis") fn DrawSplineBasis(points: *const Vector2, pointCount: int, thick: f32, color: Color) void;
export @symbol("DrawSplineCatmullRom") fn DrawSplineCatmullRom(points: *const Vector2, pointCount: int, thick: f32, color: Color) void;
export @symbol("DrawSplineBezierQuadratic") fn DrawSplineBezierQuadratic(points: *const Vector2, pointCount: int, thick: f32, color: Color) void;
export @symbol("DrawSplineBezierCubic") fn DrawSplineBezierCubic(points: *const Vector2, pointCount: int, thick: f32, color: Color) void;
export @symbol("DrawSplineSegmentLinear") fn DrawSplineSegmentLinear(p1: Vector2, p2: Vector2, thick: f32, color: Color) void;
export @symbol("DrawSplineSegmentBasis") fn DrawSplineSegmentBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;
export @symbol("DrawSplineSegmentCatmullRom") fn DrawSplineSegmentCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;
export @symbol("DrawSplineSegmentBezierQuadratic") fn DrawSplineSegmentBezierQuadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: f32, color: Color) void;
export @symbol("DrawSplineSegmentBezierCubic") fn DrawSplineSegmentBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: f32, color: Color) void;

// Spline point evaluation
export @symbol("GetSplinePointLinear") fn GetSplinePointLinear(startPos: Vector2, endPos: Vector2, t: f32) Vector2;
export @symbol("GetSplinePointBasis") fn GetSplinePointBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;
export @symbol("GetSplinePointCatmullRom") fn GetSplinePointCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;
export @symbol("GetSplinePointBezierQuad") fn GetSplinePointBezierQuad(p1: Vector2, c2: Vector2, p3: Vector2, t: f32) Vector2;
export @symbol("GetSplinePointBezierCubic") fn GetSplinePointBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: f32) Vector2;

// Collision detection
export @symbol("CheckCollisionRecs") fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;
export @symbol("CheckCollisionCircles") fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;
export @symbol("CheckCollisionCircleRec") fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;
export @symbol("CheckCollisionCircleLine") fn CheckCollisionCircleLine(center: Vector2, radius: f32, p1: Vector2, p2: Vector2) bool;
export @symbol("CheckCollisionPointRec") fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;
export @symbol("CheckCollisionPointCircle") fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;
export @symbol("CheckCollisionPointTriangle") fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;
export @symbol("CheckCollisionPointLine") fn CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: int) bool;
export @symbol("CheckCollisionPointPoly") fn CheckCollisionPointPoly(point: Vector2, points: *const Vector2, pointCount: int) bool;
export @symbol("CheckCollisionLines") fn CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: nullable *Vector2) bool;
export @symbol("GetCollisionRec") fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;
