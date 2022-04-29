class BoundingBox : Thinker
{
    class<actor> owner;
    Vector3 center;
    float halfdimension;
    double minX, maxX;
    double minY, maxY;
    double minZ, maxZ;

    bool isPointInsideAABB(actor e) {
        return (e.pos.x >= minX && e.pos.x <= maxX) &&
                (e.pos.y >= minY && e.pos.y <= maxY) &&
                (e.pos.z >= minZ && e.pos.z <= maxZ);
    }
    
    bool isPoint2dInsideAABB(vector2 p) {
        return (p.x >= minX && p.x <= maxX) &&
                (p.y >= minY && p.y <= maxY);
    }
}