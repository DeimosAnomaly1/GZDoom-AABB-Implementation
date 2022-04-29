class BoundingBox : Object
{
    float minx, maxx;
    float miny, maxy;
    float minz, maxz;
    vector3 center;
    vector3 pos;

    bool intersect(vector3 a, BoundingBox b) {
        return (a.x <= b.maxX && a.x >= b.minX) &&
            (a.y <= b.maxY && a.y >= b.minY) &&
            (a.z <= b.maxZ && a.z >= b.minZ);
    }
}
