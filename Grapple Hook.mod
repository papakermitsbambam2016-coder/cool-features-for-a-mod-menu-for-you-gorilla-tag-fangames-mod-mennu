
// Basic logic for pulling the gorilla toward a target point
public static void ApplyGrappleForce(Transform playerTransform, Vector3 targetPoint, float speed)
{
    Vector3 direction = (targetPoint - playerTransform.position).normalized;
    Rigidbody rb = playerTransform.GetComponent<Rigidbody>();
    
    if (rb != null)
    {
        rb.AddForce(direction * speed, ForceMode.Acceleration);
    }
}
