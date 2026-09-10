private static bool isFrozen = false;
private static Vector3 freezePos;

public static void ToggleFreeze(Rigidbody playerRb)
{
    isFrozen = !isFrozen;
    if (isFrozen)
    {
        freezePos = playerRb.transform.position;
        playerRb.isKinematic = true; // Stops all physics simulation
    }
    else
    {
        playerRb.isKinematic = false;
    }
}
