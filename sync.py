import os,sys

# main dir path
main_dir = "~/repos/mirror-china"

# Other settings
git_config = [".gitconfig"]
cargo_config = [".cargo/config.toml"]
container_config = [".config/containers/registries.conf"]
pip_config = [".pip/pip.conf"]
other_settings = []

files = git_config + cargo_config + container_config + pip_config + other_settings

def delete_file(file_name):
    command = f"rm -rf ~/{file_name}"
    print(file_name)
    return command

def del_check(file_name):
    command = f"rm -rf ~/{file_name} && ln -s {main_dir}/{file_name} ~/{file_name}"
    print(file_name)
    return command

def china():
    print("===== sync mirror-china =====")
    for i in files:
        os.system(f"{del_check(i)}")

def remove():
    print("===== Remove Chinese mirror =====")
    for i in files:
        os.system(f"{delete_file(i)}")


eval(sys.argv[1] + "()")
