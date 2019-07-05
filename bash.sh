# Cheeky S3 uploading

function copyFilesToS3() {
    folderPathLocal=$1
    folderPathS3=$2
    fileType=$3
    mimeType=$4
    cacheMaxAge=$5

    echo -e "\n${fileType}"

    aws s3 cp \
    "${folderPathLocal}" \
    "${folderPathS3}" \
    --exclude "*" \
    --include "${fileType}" \
    --content-type "${mimeType}" \
    --cache-control "public, max-age=${cacheMaxAge}" \
    --metadata-directive="REPLACE" \
    --recursive
}


copyFilesToS3 "${src}" "${dest}" "*.ext" "${mime}" "${cacheExpiry}"
