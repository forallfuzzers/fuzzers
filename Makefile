default: all

DOCKER_REGISTRY ?=
FUZZER_REPO := fuzzers
BUILD_PREFIX := build/
PUSH_PREFIX := push/
CLEAN_PREFIX := clean/
FUZZERS := \
	afl \
	afl-qemu \
	aflplusplus \
	atheris \
	cargo-fuzz \
	go-fuzz \
	honggfuzz \
	jazzer \
	libfuzzer
BUILD_FUZZERS := $(addprefix $(BUILD_PREFIX), $(FUZZERS))
PUSH_FUZZERS := $(addprefix $(PUSH_PREFIX), $(FUZZERS))
CLEAN_FUZZERS := $(addprefix $(CLEAN_PREFIX), $(FUZZERS))


all:
	@echo "make build or make push to make things happen"

.PHONY: build
build: $(BUILD_FUZZERS)

$(BUILD_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(BUILD_PREFIX)%=%))
	docker build -t $(DOCKER_REGISTRY)$(FUZZER_REPO)/$(IMAGE_FUZZER):$(shell cat $(IMAGE_FUZZER)/tag) $(IMAGE_FUZZER)

.PHONY: push
push: $(PUSH_FUZZERS)

$(PUSH_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(PUSH_PREFIX)%=%))
	docker push $(DOCKER_REGISTRY)$(FUZZER_REPO)/$(IMAGE_FUZZER):$(shell cat $(IMAGE_FUZZER)/tag)

.PHONY: clean
clean: $(CLEAN_FUZZERS)

$(CLEAN_FUZZERS):
	$(eval IMAGE_FUZZER := $(@:$(CLEAN_PREFIX)%=%))
	docker rmi -f $(DOCKER_REGISTRY)$(FUZZER_REPO)/$(IMAGE_FUZZER):$(shell cat $(IMAGE_FUZZER)/tag)
