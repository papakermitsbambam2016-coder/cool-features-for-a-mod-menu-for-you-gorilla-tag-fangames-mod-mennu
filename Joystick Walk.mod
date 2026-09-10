using UnityEngine;
using BepInEx;
// Depending on your references, use GorillaLocomotion or standard XR input
// For Gorilla Tag internals, ControllerInputPoller is commonly used in mod menus:

public class JoystickWalkMod : MonoBehaviour
{
    public float moveSpeed = 8.5f;

    void Update()
    {
        // Check if the game's main player instance exists
        if (gorillaLocomotion.Player.Instance != null)
        {
            // Read the left joystick axis (2D vector: X and Y)
            Vector2 joystickAxis = ControllerInputPoller.instance.leftJoystick;

            if (joystickAxis.magnitude > 0.1f) // Deadzone check
            {
                // Get the forward and right direction of the player's head/camera
                Transform headTransform = gorillaLocomotion.Player.Instance.headCollider.transform;
                Vector3 forward = headTransform.forward;
                Vector3 right = headTransform.right;

                // Flatten the vectors on the Y plane so you don't fly or dig into the floor
                forward.y = 0f;
                right.y = 0f;
                forward.Normalize();
                right.Normalize();

                // Calculate movement direction based on joystick input
                Vector3 moveDirection = (forward * joystickAxis.y + right * joystickAxis.x);

                // Apply movement to the player's rigid body or transform position
                gorillaLocomotion.Player.Instance.transform.position += moveDirection * moveSpeed * Time.deltaTime;
            }
        }
    }
}
