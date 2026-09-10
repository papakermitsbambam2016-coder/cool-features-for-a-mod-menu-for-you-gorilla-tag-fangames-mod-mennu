using HarmonyLib;
using GorillaLocomotion;

public static void ApplyMosaSpeedBoost()
{
    // Sets the maximum allowed speed cap when pushing off a surface
    GorillaLocomotion.Player.Instance.maxJumpSpeed = 9f; 

    // Multiplies the force applied by your physical arm swings
    GorillaLocomotion.Player.Instance.jumpMultiplier = 1.5f; 
}
