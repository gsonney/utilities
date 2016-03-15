tring str = "/hotel/hoteladmin/general/dashboard.html?lang=en&ses=f24e9686f2e28d22ec3d2bd8299788bd"

String result = (str =~ "(ses=)(.*?\$)")[0][2]

print result

