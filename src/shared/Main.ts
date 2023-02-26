
export class Vec3D {
	public X: number = 0;
	public Y: number = 0;
	public Z: number = 0;

	constructor(X: number, Y: number, Z: number) {
		this.X = X;
		this.Y = Y;
		this.Z = Z;
	}
}

export class Triangle {
	public p: Vec3D[];

	constructor(triangles: Vec3D[]) {
		this.p = triangles;
	}
}

export class Mesh {
	Triangles: Array<Triangle> = new Array<Triangle>();
}
