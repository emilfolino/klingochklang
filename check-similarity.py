import mosspy

userid = 90529531

submissions_folder = "submissions"

m = mosspy.Moss(userid, "python")

m.addBaseFile(submissions_folder + "/a01.py")
m.addBaseFile(submissions_folder + "/test_student.py")

# Submission Files
m.addFile(submissions_folder + "/a01-sample.py")
m.addFilesByWildcard(submissions_folder + "/a01-*.py")

url = m.send() # Submission Report URL

print ("Report Url: " + url)

# Save report file
m.saveWebPage(url, "report/report.html")

# Download whole report locally including code diff links
mosspy.download_report(url, "report/", connections=8)
