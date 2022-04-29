This is my AABB (Axis Aligned Bounding Box) implementation.
I will be describing how you can use this to sense any collision in the 3D world of DOOM! :D

It's quite simple to use this implementation.
First:
    We need to create an instance of out Bounding Box.
    We will do this with:
        BoundingBox hitbox = new("BoundingBox");

We then need to define our Bounding Boxes size using:
    We do this with something like:

        override void tick() {
            hitbox.minX = pos - 0;
            hitbox.maxX = pos + 20;
            hitbox.minY = pos - 0;
            hitbox.maxY = pos + 20;
            hitbox.minZ = pos - 0;
            hitbox.maxZ = pos + 60;
            super.tick();
        }

    We have to define these variables in the tick method so it can position every tick.

And then we test intersections within the box with:
    isPointInsideAABB(<xyz>);