image = beidongjiedeguang/chatgpt-paper:latest
build:
	docker build -t $(image)  .

container = chatgpt_paper_container
start:
	docker run -itd --name=$(container) \
	-p 7860:7860 -p 7861:7861 \
	-v $(shell pwd):/root/chatpaper/ \
	-w /root/chatpaper \
	$(image) 

log:
	docker logs -f $(container)
exec:
	docker exec -it $(container) bash

rm:
	docker rm -f $(container)

push:
	docker push $(image)

save:
	docker save 

load:
	docker 
