#include "common/utils/VersionInfo.h"

namespace hf3fs {

#define HF3FS_VERSION_MAJOR 0
#define HF3FS_VERSION_MINOR 1
#define HF3FS_VERSION_PATCH 5
#define HF3FS_COMMIT_HASH_SHORT 0x61c46f2a
#define HF3FS_BUILD_TIMESTAMP 1749307144
#define HF3FS_BUILD_PIPELINE_ID 999999
#define HF3FS_BUILD_TAG 250228
#define HF3FS_BUILD_TAG_SEQ_NUM 1
#define HF3FS_BUILD_ON_RELEASE_BRANCH false

// old format
#define HF3fS_VERSION_FULL "Version: v0.1.5-999999-20250607-61c46f2a"
#define HF3fS_VERSION_FULL_REL "Version: v250228-rel-1-999999-61c46f2a"
#define HF3fS_VERSION_FULL_DEV "Version: v250228-dev-1-999999-61c46f2a"
#define HF3FS_COMMIT_HASH_FULL "Hash: 61c46f2a9cd071fd4e451816c38e0b6d435633b8"

std::string_view VersionInfo::fullV0() {
    return HF3fS_VERSION_FULL;
}

std::string_view VersionInfo::full() {
    if constexpr (HF3FS_BUILD_ON_RELEASE_BRANCH) {
        return HF3fS_VERSION_FULL_REL;
    } else {
        return HF3fS_VERSION_FULL_DEV;
    }
}

uint8_t VersionInfo::versionMajor() { return HF3FS_VERSION_MAJOR; }
uint8_t VersionInfo::versionMinor() { return HF3FS_VERSION_MINOR; }
uint8_t VersionInfo::versionPatch() { return HF3FS_VERSION_PATCH; }
uint64_t VersionInfo::buildTimeInSeconds() { return HF3FS_BUILD_TIMESTAMP; }
uint32_t VersionInfo::buildPipelineId() { return HF3FS_BUILD_PIPELINE_ID; }

uint32_t VersionInfo::commitHashShort() { return HF3FS_COMMIT_HASH_SHORT; }
std::string_view VersionInfo::commitHashFull() { return HF3FS_COMMIT_HASH_FULL; }

uint32_t VersionInfo::gitTag() {
    return HF3FS_BUILD_TAG;
}

uint32_t VersionInfo::gitTagSeqNum() {
    return HF3FS_BUILD_TAG_SEQ_NUM;
}

bool VersionInfo::isReleaseBranch() {
    return HF3FS_BUILD_ON_RELEASE_BRANCH;
}

}  // namespace hf3fs
