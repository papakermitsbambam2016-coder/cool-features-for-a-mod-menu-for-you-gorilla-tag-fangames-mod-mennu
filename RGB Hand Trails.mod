// Put this inside an Update loop to shift color smoothly
public static Color GetRGBColor(float speed)
{
    float r = Mathf.Sin(Time.time * speed + 0f) * 0.5f + 0.5f;
    float g = Mathf.Sin(Time.time * speed + 2f) * 0.5f + 0.5f;
    float b = Mathf.Sin(Time.time * speed + 4f) * 0.5f + 0.5f;
    return new Color(r, g, b);
}
