#include <stdlib.h>

#include "cai.h"
#include "tensor.h"

#define DEBUG 3

#if defined(DEBUG) && DEBUG > 0
#define DEBUG_PRINT(fmt, arg1, arg2, arg3)                                     \
  fprintf(stderr, "DEBUG: %s:%d: " fmt, __FILE__, __LINE__, arg1, arg2, arg3)
#else
#define DEBUG_PRINT(fmt, arg1, arg2) /* Don't do anything in release builds */
#endif

int main() {
  float a = 2.0f;
  float b = 4.0f;

  float r = relu(a);
  float ms = mse(a, b);
  float ma = mae(a, b);

  int tensor = cai_tensor_create(2);

  printf("%d\n", tensor);

  DEBUG_PRINT("%.2f %.2f %.2f\n", r, ms, ma);
  return EXIT_SUCCESS;
}
