declare class ViewportCanvas {
    constructor(ResolutionX: number, ResolutionY: number)

    Threshold: number;

    Destroy(): void;
    SetParent(Parent: Instance): void;
    SetPixel(x: number, y: number, color: Color3): void;
    Clear(): void;
    Render(): void;
}
export = ViewportCanvas;
