<%

	function generate_quote_ref()
		'
		generate_quote_ref = ""
		sourceref = "ABCDEFGHJKLMNPQRTUVWXY" ' 22chars Z0123456789
		'
		for rep = 1 to 8
			'
			Randomize
			generate_quote_ref = generate_quote_ref & mid(sourceref,(Int((22-1+1)*Rnd+1)),1)
			'
		next
		'
	end function

	function decode_quote_ref (test_ref)
		decode_quote_Ref = ""
		for rep = 1 to len (test_ref)
			'
			testchar = ucase(mid(test_ref,rep,1))
			'
			char = ""
			select case testchar
				case "A"
					char = "Alpha"
				case "B" 
					char = "Bravo"
				case "C"
					char = "Charlie"
				case "D" 
					char = "Delta"
				case "E"
					char = "Echo"
				case "F" 
					char = "Foxtrot"
				case "G"
					char = "Golf"
				case "H" 
					char = "Hotel"
				case "J" 
					char = "Juliet"
				case "K"
					char = "Kilo"
				case "L" 
					char = "Lima"
				case "M"
					char = "Mike"
				case "N" 
					char = "November"
				case "P" 
					char = "Papa"
				case "Q"
					char = "Quebec"
				case "R" 
					char = "Romeo"
				case "T"
					char = "Tango"
				case "U" 
					char = "Uniform"
				case "V" 
					char = "Victor"
				case "X" 
					char = "X-Ray"
				case "Y" 
					char = "Yankee"
				case "Z" 
					char = "Zulu"
				case else
					char = "Alpha"

			end select

			'
			decode_quote_ref = decode_quote_ref & Char & ", "
			'
		next 
		'
		decode_quote_ref = left(decode_quote_ref,len(decode_quote_ref)-2)
		'
	end function

	function estimate(test_total_buld, test_cover_type)
		'
		'£600,000 to £699,999
		'New Development Self-build  Retrospective Commercial
		'1%new build  of 1.25% for a covnersio, 1.5% retro, 0.95 comemrcial
		'
		'
		lowest = left(test_total_buld, instr(test_total_buld, "to")-2)
		lowest = replace(lowest, ",", "")
		lowest = replace(lowest, "£", "")
		lowest = replace(lowest, " ", "")
		if not isnumeric(lowest) then
			response.end ' FATAL ERROR 
		end if
		'
		frac = 0.0125
		select case  test_cover_type
			case "Commercial"
				frac = 0.0095
			case "Retrospective"
				frac = 0.015
			case "Self-build"
				frac = 0.013
		end select
		'
		estimate = "<b>£ " & formatnumber(lowest * frac,0) & "</b> To <b>£ " & formatnumber((lowest * frac)*1.17,0) & "</b>"
		'
		'response.write(estimate)
		'response.end
		'

	end function

	function lpc_GetDateTimeStamp (test_year, test_month, test_day, test_hour, test_minute, test_second, test_usedate, test_usetime)
	'
	teststamp = ""
	'
	if test_year = "" then
		test_year = cstr(year(now()))
		test_month = cstr(month(now()))
		test_day = cstr(day(now()))
	end if
	'
	if test_hour = "" then
		test_hour = cstr(hour(now()))
		test_minute = cstr(minute(now()))
		test_second = cstr(second(now()))
	end if
	'
	if test_usedate then
		'
		if len(test_year) = 1 then
			test_year = "0" & test_year
		end if
		if len(test_year) = 2 then
			test_year = "20" & test_year
		end if
		if len(test_month) = 1 then
			test_month = "0" & test_month
		end if
		if len(test_day) = 1 then
			test_day = "0" & test_day
		end if
		'
		teststamp = test_year & test_month & test_day
		'
	end if
	'
	if test_usetime then
	'
		if len(test_hour) = 1 then
			test_hour = "0" & test_hour
		end if
		if len(test_minute) = 1 then
			test_minute = "0" & test_minute
		end if
		if len(test_second) = 1 then
			test_second = "0" & test_second
		end if
		'
		teststamp = teststamp & test_hour & test_minute & test_second
		'
	end if
	'
	lpc_GetDateTimeStamp = teststamp
	'
end function

%>