use types::c;

// Basic 3D shapes
export @symbol("DrawLine3D") fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;
export @symbol("DrawPoint3D") fn DrawPoint3D(position: Vector3, color: Color) void;
export @symbol("DrawCircle3D") fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;
export @symbol("DrawTriangle3D") fn DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) void;
export @symbol("DrawTriangleStrip3D") fn DrawTriangleStrip3D(points: *const Vector3, pointCount: int, color: Color) void;
export @symbol("DrawCube") fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
export @symbol("DrawCubeV") fn DrawCubeV(position: Vector3, sz: Vector3, color: Color) void;
export @symbol("DrawCubeWires") fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
export @symbol("DrawCubeWiresV") fn DrawCubeWiresV(position: Vector3, sz: Vector3, color: Color) void;
export @symbol("DrawSphere") fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;
export @symbol("DrawSphereEx") fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) void;
export @symbol("DrawSphereWires") fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: int, slices: int, color: Color) void;
export @symbol("DrawCylinder") fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) void;
export @symbol("DrawCylinderEx") fn DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) void;
export @symbol("DrawCylinderWires") fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: int, color: Color) void;
export @symbol("DrawCylinderWiresEx") fn DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: int, color: Color) void;
export @symbol("DrawCapsule") fn DrawCapsule(startPos: Vector3, endPos: Vector3, radius: f32, slices: int, rings: int, color: Color) void;
export @symbol("DrawCapsuleWires") fn DrawCapsuleWires(startPos: Vector3, endPos: Vector3, radius: f32, slices: int, rings: int, color: Color) void;
export @symbol("DrawPlane") fn DrawPlane(centerPos: Vector3, sz: Vector2, color: Color) void;
export @symbol("DrawRay") fn DrawRay(ray: Ray, color: Color) void;
export @symbol("DrawGrid") fn DrawGrid(slices: int, spacing: f32) void;

// Model management
export @symbol("LoadModel") fn LoadModel(fileName: *const c::char) Model;
export @symbol("LoadModelFromMesh") fn LoadModelFromMesh(mesh: Mesh) Model;
export @symbol("IsModelValid") fn IsModelValid(model: Model) bool;
export @symbol("UnloadModel") fn UnloadModel(model: Model) void;
export @symbol("GetModelBoundingBox") fn GetModelBoundingBox(model: Model) BoundingBox;

// Model drawing
export @symbol("DrawModel") fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;
export @symbol("DrawModelEx") fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
export @symbol("DrawModelWires") fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;
export @symbol("DrawModelWiresEx") fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
export @symbol("DrawBoundingBox") fn DrawBoundingBox(box: BoundingBox, color: Color) void;
export @symbol("DrawBillboard") fn DrawBillboard(camera: Camera, texture: Texture2D, position: Vector3, scale: f32, tint: Color) void;
export @symbol("DrawBillboardRec") fn DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, sz: Vector2, tint: Color) void;
export @symbol("DrawBillboardPro") fn DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, sz: Vector2, origin: Vector2, rotation: f32, tint: Color) void;

// Mesh management
export @symbol("UploadMesh") fn UploadMesh(mesh: nullable *Mesh, dynamic: bool) void;
export @symbol("UpdateMeshBuffer") fn UpdateMeshBuffer(mesh: Mesh, idx: int, data: nullable *const opaque, dataSize: int, off: int) void;
export @symbol("UnloadMesh") fn UnloadMesh(mesh: Mesh) void;
export @symbol("DrawMesh") fn DrawMesh(mesh: Mesh, material: Material, transform: Matrix) void;
export @symbol("DrawMeshInstanced") fn DrawMeshInstanced(mesh: Mesh, material: Material, transforms: *const Matrix, instances: int) void;
export @symbol("GetMeshBoundingBox") fn GetMeshBoundingBox(mesh: Mesh) BoundingBox;
export @symbol("GenMeshTangents") fn GenMeshTangents(mesh: nullable *Mesh) void;
export @symbol("ExportMesh") fn ExportMesh(mesh: Mesh, fileName: *const c::char) bool;
export @symbol("ExportMeshAsCode") fn ExportMeshAsCode(mesh: Mesh, fileName: *const c::char) bool;

// Mesh generation
export @symbol("GenMeshPoly") fn GenMeshPoly(sides: int, radius: f32) Mesh;
export @symbol("GenMeshPlane") fn GenMeshPlane(width: f32, length: f32, resX: int, resZ: int) Mesh;
export @symbol("GenMeshCube") fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;
export @symbol("GenMeshSphere") fn GenMeshSphere(radius: f32, rings: int, slices: int) Mesh;
export @symbol("GenMeshHemiSphere") fn GenMeshHemiSphere(radius: f32, rings: int, slices: int) Mesh;
export @symbol("GenMeshCylinder") fn GenMeshCylinder(radius: f32, height: f32, slices: int) Mesh;
export @symbol("GenMeshCone") fn GenMeshCone(radius: f32, height: f32, slices: int) Mesh;
export @symbol("GenMeshTorus") fn GenMeshTorus(radius: f32, sz: f32, radSeg: int, sides: int) Mesh;
export @symbol("GenMeshKnot") fn GenMeshKnot(radius: f32, sz: f32, radSeg: int, sides: int) Mesh;
export @symbol("GenMeshHeightmap") fn GenMeshHeightmap(heightmap: Image, sz: Vector3) Mesh;
export @symbol("GenMeshCubicmap") fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;

// Material management
export @symbol("LoadMaterials") fn LoadMaterials(fileName: *const c::char, materialCount: nullable *int) nullable *Material;
export @symbol("LoadMaterialDefault") fn LoadMaterialDefault() Material;
export @symbol("IsMaterialValid") fn IsMaterialValid(material: Material) bool;
export @symbol("UnloadMaterial") fn UnloadMaterial(material: Material) void;
export @symbol("SetMaterialTexture") fn SetMaterialTexture(material: nullable *Material, mapType: int, texture: Texture2D) void;
export @symbol("SetModelMeshMaterial") fn SetModelMeshMaterial(model: nullable *Model, meshId: int, materialId: int) void;

// Model animations
export @symbol("LoadModelAnimations") fn LoadModelAnimations(fileName: *const c::char, animCount: nullable *int) nullable *ModelAnimation;
export @symbol("UpdateModelAnimation") fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: f32) void;
export @symbol("UpdateModelAnimationEx") fn UpdateModelAnimationEx(model: Model, animA: ModelAnimation, frameA: f32, animB: ModelAnimation, frameB: f32, blend: f32) void;
export @symbol("UnloadModelAnimations") fn UnloadModelAnimations(animations: nullable *ModelAnimation, animCount: int) void;
export @symbol("IsModelAnimationValid") fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;

// 3D Collision detection
export @symbol("CheckCollisionSpheres") fn CheckCollisionSpheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) bool;
export @symbol("CheckCollisionBoxes") fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;
export @symbol("CheckCollisionBoxSphere") fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;
export @symbol("GetRayCollisionSphere") fn GetRayCollisionSphere(ray: Ray, center: Vector3, radius: f32) RayCollision;
export @symbol("GetRayCollisionBox") fn GetRayCollisionBox(ray: Ray, box: BoundingBox) RayCollision;
export @symbol("GetRayCollisionMesh") fn GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix) RayCollision;
export @symbol("GetRayCollisionTriangle") fn GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayCollision;
export @symbol("GetRayCollisionQuad") fn GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) RayCollision;
