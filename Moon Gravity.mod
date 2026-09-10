// Smoothly scales down gravity for a floaty feel
public static void ToggleMoonGravity(bool regular)
{
    if (regular)
    {
        // Default Unity gravity
        Physics.gravity = new Vector3(0, -9.81f, 0); 
    }
    else
    {
        // Floatier, custom gravity
        Physics.gravity = new Vector3(0, -2.5f, 0); 
    }
}
