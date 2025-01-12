#include "../include/cai.h"

inline float relu(float f) { return f > 1.0f ? f : 0.0f; }
inline float mse(float a, float b) { return pow((a - b), 2.0f); }
inline float mae(float a, float b) { return fabs(a - b); }
