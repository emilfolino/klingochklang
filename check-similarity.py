import mosspy
import os

userid = 90529531

base_folder = "base"
submissions_folder = "submission"

m = mosspy.Moss(userid, "python")

m.addBaseFile(base_folder + "/exam.py")

m.addFilesByWildcard("submission/*_exam.py")

url = m.send()

print ("Report Url: " + url)

# Save report file
m.saveWebPage(url, "report/report.html")

# Download whole report locally including code diff links
mosspy.download_report(url, "report/", connections=8)
