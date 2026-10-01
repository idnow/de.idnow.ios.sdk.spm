set -euo pipefail

# Validate input
[[ $# -eq 1 ]] || { echo "Error: Framework path argument required" >&2; exit 1; }
[[ -d "$1" ]] || { echo "Error: '$1' is not a framework path" >&2; exit 1; }

SRC_XCFRAMEWORK="$1"
EMBEDDED_FRAMEWORK="${TARGET_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}/FaceTecSDK.framework"

SLICE="${SRC_XCFRAMEWORK}/ios-arm64/FaceTecSDK.framework"
[ -d "${SLICE}" ] || { echo "error: ${SLICE} missing"; exit 1; }

echo "FaceTecSDK: Copying development framework..."
rsync -a --delete "${SLICE}/" "${EMBEDDED_FRAMEWORK}/"

# Embed phase already signed the original; we changed bundle contents, so re-sign.
echo "FaceTecSDK: Signing development framework binary.."
codesign --force --sign "${EXPANDED_CODE_SIGN_IDENTITY:-${CODE_SIGN_IDENTITY:--}}" \
    --preserve-metadata=identifier,entitlements,flags "${EMBEDDED_FRAMEWORK}"

echo "FaceTecSDK: Framework has been replaced with FaceTecSDKForDevelopment"
