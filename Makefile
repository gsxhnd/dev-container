# docker build -f container/dev.base.dockerfile -t gsxhnd/dev-container:base .
# docker build -f container/dev.cli.dockerfile -t gsxhnd/dev-container:cli .
# docker build -f container/dev.full.dockerfile -t gsxhnd/dev-container:full .

# 镜像列表
IMAGES = base cli full

all: build-all push-all

build-all:
	$(foreach image,$(IMAGES),docker build -f container/dev.$(image).dockerfile -t gsxhnd/dev-container:$(image) .;)

push-all:
	$(foreach image,$(IMAGES),docker push gsxhnd/dev-container:$(image);)
