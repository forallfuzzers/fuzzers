default: all

ifndef DOCKER_REGISTRY
$(error DOCKER_REGISTRY is not set)
endif

TUTORIAL_REPO := tutorial
BUILD_PREFIX := build/
PUSH_PREFIX := push/
FUZZERS := \
	python/atheris \
	java/jazzer
BUILD_FUZZERS := $(addprefix $(BUILD_PREFIX), $(FUZZERS))
PUSH_FUZZERS := $(addprefix $(PUSH_PREFIX), $(FUZZERS))


all:
	@echo "make build or make push to make things happen"

.PHONY: build
build: $(BUILD_FUZZERS)

$(BUILD_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(BUILD_PREFIX)%=%))
	docker build -t $(TUTORIAL_REPO)/$(IMAGE_FUZZER)/testme $(IMAGE_FUZZER)

.PHONY: push
push: $(PUSH_FUZZERS)

$(PUSH_FUZZERS):
	$(eval IMAGE_NAME := $(TUTORIAL_REPO)/$(@:$(PUSH_PREFIX)%=%)/testme)
	$(eval TARGET_IMAGE_NAME := $(DOCKER_REGISTRY)/$(IMAGE_NAME))
	docker tag $(IMAGE_NAME) $(TARGET_IMAGE_NAME)
	docker push $(TARGET_IMAGE_NAME)
