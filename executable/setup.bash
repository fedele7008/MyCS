source "${MyCS_path}/executable/parseSetting" "setup.lang"
PATH=${PATH}:"${MyCS_path}/executable/cs"
PATH=${PATH}:"${MyCS_path}/user/script"

for file in "$(ls ${MyCS_path}/user/setup/)"; do
	if [ -e "${MyCS_path}/user/setup/${file}" ]; then
		source "${MyCS_path}/user/setup/${file}"
	fi
done

alias cs="source cs"
echo "${script0000}"
