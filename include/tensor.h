#ifndef TENSOR_H
#define TENSOR_H

typedef struct {
  int size;
} Tensor;

int cai_tensor_create(int s);

#endif // !TENSOR_H
