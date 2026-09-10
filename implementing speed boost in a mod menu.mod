public static bool isSpeedBoostEnabled = false;

// Default values for standard Gorilla Tag matchmaking
private static float defaultMaxJumpSpeed = 6.5f;
private static float defaultJumpMultiplier = 1.1f;

public static void ToggleSpeedBoost()
{
    isSpeedBoostEnabled = !isSpeedBoostEnabled;

    if (isSpeedBoostEnabled)
    {
        // Custom modified speeds (Mosa Speed style)
        GorillaLocomotion.Player.Instance.maxJumpSpeed = 9.5f;
        GorillaLocomotion.Player.Instance.jumpMultiplier = 1.6f;
    }
    else
    {
        // Reset safely to default parameters
        GorillaLocomotion.Player.Instance.maxJumpSpeed = defaultMaxJumpSpeed;
        GorillaLocomotion.Player.Instance.jumpMultiplier = defaultJumpMultiplier;
    }
}
