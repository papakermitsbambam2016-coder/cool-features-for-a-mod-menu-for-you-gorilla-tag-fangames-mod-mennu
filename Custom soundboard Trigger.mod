public static void PlayCustomSound(AudioSource source, AudioClip clip)
{
    if (source != null && clip != null)
    {
        source.PlayOneShot(clip);
    }
}
