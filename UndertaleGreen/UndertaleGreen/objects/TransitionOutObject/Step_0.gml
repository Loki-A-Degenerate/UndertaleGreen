alpha -= fadeSpeed;

if (alpha <= 0) {
    alpha = 0;
    instance_destroy();
}