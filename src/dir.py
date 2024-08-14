import os


def create_dir(path: str):
    if os.path.isdir(path):
        print(f"Directory already exists: {path}")
    else:
        os.mkdir(path)
        print(f"Directory created: {path}")
