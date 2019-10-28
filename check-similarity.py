import mosspy
import os

userid = 90529531

base_folder = "base"
submissions_folder = "submissions"


m = mosspy.Moss(userid, "python")

m.addBaseFile(base_folder + "/main.py")
m.addBaseFile(base_folder + "/menu.py")
m.addBaseFile(base_folder + "/analyzer.py")

# Submission Files
generator = os.walk('submissions')
dirs = next(generator)[1]

for dir in dirs:
    print(submissions_folder + "/" + dir + "/*.py")
    m.addFilesByWildcard(submissions_folder + "/" + dir + "/*.py")


url = m.send() # Submission Report URL

print ("Report Url: " + url)

# Save report file
m.saveWebPage(url, "report/report.html")

# Download whole report locally including code diff links
mosspy.download_report(url, "report/", connections=8)
