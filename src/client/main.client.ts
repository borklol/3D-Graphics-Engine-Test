import { Mesh, Triangle, Vec3D } from "shared/Main";
import ViewportCanvas from "@rbxts/viewportcanvas";

class Main {
    private meshCube: Mesh = new Mesh();

    private canvas: ViewportCanvas | undefined;

    constructor() {

        const viewportSize = game.GetService("Workspace").CurrentCamera?.ViewportSize;
        if (!viewportSize)
            return;

        this.canvas = new ViewportCanvas(viewportSize.X, viewportSize.Y);

        this.meshCube.Triangles = [ // jesus christ this took so long i used interfaces and that didnt work so i just gave up and used classes...
            // SOUTH
            new Triangle( [ new Vec3D(0.0, 0.0, 0.0), new Vec3D(0.0, 1.0, 0.0), new Vec3D(1.0, 1.0, 0.0) ] ),
            new Triangle( [ new Vec3D(0.0, 0.0, 0.0), new Vec3D(1.0, 1.0, 0.0), new Vec3D(1.0, 0.0, 0.0) ] ),

            // EAST
            new Triangle( [ new Vec3D(1.0, 0.0, 0.0), new Vec3D(1.0, 1.0, 0.0), new Vec3D(1.0, 1.0, 1.0) ] ),
            new Triangle( [ new Vec3D(1.0, 0.0, 0.0), new Vec3D(1.0, 1.0, 1.0), new Vec3D(1.0, 0.0, 1.0) ] ),
            
            // NORTH
            new Triangle( [ new Vec3D(1.0, 0.0, 1.0), new Vec3D(1.0, 1.0, 1.0), new Vec3D(0.0, 1.0, 1.0) ] ),
            new Triangle( [ new Vec3D(1.0, 0.0, 1.0), new Vec3D(0.0, 1.0, 1.0), new Vec3D(0.0, 0.0, 1.0) ] ),

            // WEST
            new Triangle( [ new Vec3D(0.0, 0.0, 1.0), new Vec3D(0.0, 1.0, 1.0), new Vec3D(0.0, 1.0, 0.0) ] ),
            new Triangle( [ new Vec3D(0.0, 0.0, 1.0), new Vec3D(0.0, 1.0, 0.0), new Vec3D(0.0, 0.0, 0.0) ] ),

            // TOP
            new Triangle( [ new Vec3D(0.0, 1.0, 0.0), new Vec3D(0.0, 1.0, 1.0), new Vec3D(1.0, 1.0, 1.0) ] ),
            new Triangle( [ new Vec3D(0.0, 1.0, 0.0), new Vec3D(1.0, 1.0, 1.0), new Vec3D(1.0, 1.0, 0.0) ] ),
            
            // BOTTOM
            new Triangle( [ new Vec3D(1.0, 0.0, 1.0), new Vec3D(0.0, 0.0, 1.0), new Vec3D(0.0, 0.0, 0.0) ] ),
            new Triangle( [ new Vec3D(1.0, 0.0, 1.0), new Vec3D(0.0, 0.0, 0.0), new Vec3D(1.0, 0.0, 0.0) ] ),

        ];

    }

    /**
     * Update
     */
    public Update(deltaTime: number) {
    }
    
}

const main = new Main();

game.GetService("RunService").RenderStepped.Connect((dt) => {
    main.Update(dt);
})
