import subprocess

subprocess.run(["cd" "~/dotfiles"])
subprocess.run(["git" "add" "-A"])
subprocess.run(["git" "commit" "-m" "'Tweaks'"])
subprocess.run(["git push" "-u" "-f" "origin" "main"])

process.wait()

print("Done!")