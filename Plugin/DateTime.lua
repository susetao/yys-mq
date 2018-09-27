function QMPlugin.Year(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).year
end

function QMPlugin.Month(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).month
end

function QMPlugin.Day(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).day
end

function QMPlugin.Hour(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).hour
end

function QMPlugin.Minute(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).min
end

function QMPlugin.Second(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).sec
end

function QMPlugin.WeekDay(time)
	if time == null then
		time = os.time()
	end
	--按照国人习惯，把星期一作为每个星期的第一天
	weekday = os.date("*t", time).wday - 1
	if weekday == 0 then 
		weekday = 7
	end
	return weekday
end

function QMPlugin.YearDay(time)
	if time == null then
		time = os.time()
	end
	return os.date("*t", time).yday
end

function QMPlugin.Format(format, time)
	if time == null then
		time = os.time()
	end
	if format == null then
	--按照国人习惯，排列默认格式
		format = "%Y-%m-%d %H:%M:%S"
	end
	return os.date(format, time)
end