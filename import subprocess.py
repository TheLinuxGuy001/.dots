import subprocess

bashCmd = ["cd", "~"]
process = subprocess.Popen(bashCmd, stdout=subprocess.PIPE)
output, error = process.communicate()
print(output)