function TimeStringScript(_timer){
	seconds = floor(_timer mod 60);
	minutes = floor(_timer / 60);
	strMin = string(minutes);
	strSec = string(seconds);
	if minutes < 10 {
		strMin = "0" + strMin;
	}
	if seconds < 10 {
		strSec = "0" + strSec;
	}
	fullClock = strMin + ":" + strSec;
	return fullClock;
}