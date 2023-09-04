import datetime

# Assuming you have a time in nanoseconds
time_in_ns = 1693836146437695319  # Replace this with your time in nanoseconds

# Convert nanoseconds to seconds and microseconds
seconds = time_in_ns // 1_000_000_000
microseconds = (time_in_ns // 1_000) % 1_000

# Create a datetime object
date_time = datetime.datetime.fromtimestamp(seconds) + datetime.timedelta(microseconds=microseconds)

# Format the datetime object as a readable date
formatted_date = date_time.strftime("%Y-%m-%d %H:%M:%S.%f")

print(formatted_date)