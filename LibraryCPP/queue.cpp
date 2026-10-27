#include "queue.h"
#include "vector.h"

struct Queue
{
    Vector *vector;
    size_t head;
    size_t size;
};

Queue *queue_create()
{
    Queue *queue = new Queue;
    queue->vector = vector_create();
    vector_resize(queue->vector, 8);
    queue->head = 0;
    queue->size = 0;

    return queue;
}

void queue_delete(Queue *queue)
{
    if (queue == nullptr)
    {
        return;
    }

    vector_delete(queue->vector);
    delete queue;
}

void queue_insert(Queue *queue, Data data)
{
    size_t capacity = vector_size(queue->vector);

    if (queue->size == capacity)
    {
        size_t new_capacity = capacity * 2;
        Data *elements = new Data[queue->size];

        for (size_t i = 0; i < queue->size; ++i)
        {
            elements[i] =
                vector_get(queue->vector, (queue->head + i) % capacity);
        }

        vector_resize(queue->vector, new_capacity);

        for (size_t i = 0; i < queue->size; ++i)
        {
            vector_set(queue->vector, i, elements[i]);
        }

        delete[] elements;

        queue->head = 0;
        capacity = new_capacity;
    }

    size_t tail = (queue->head + queue->size) % capacity;

    vector_set(queue->vector, tail, data);
    ++queue->size;
}

Data queue_get(const Queue *queue)
{
    return vector_get(queue->vector, queue->head);
}

void queue_remove(Queue *queue)
{
    if (queue == nullptr || queue->size == 0)
    {
        return;
    }

    size_t capacity = vector_size(queue->vector);

    queue->head = (queue->head + 1) % capacity;
    --queue->size;
}

bool queue_empty(const Queue *queue)
{
    return queue == nullptr || queue->size == 0;
}