all: monitor semaphore run run2

monitor: monitor.c
	gcc monitor.c -o monitor -lpthread -lrt

semaphore: semaphore.c
	gcc semaphore.c -o semaphore -lpthread -lrt

run: ./semaphore
	./semaphore

run2: ./monitor
	./monitor