
-- Metadata

local fs = libs.fs;

function update(s)
	libs.server.update("info", "text", s);
end

actions.isfile = function ()
	local r = fs.isfile("C:\\Windows\\notepad.exe");
	update(r);
end

actions.isfile_no = function ()
	local r = fs.isfile("C:\\Windows");
	update(r);
end

actions.isfile_bad = function ()
	local r = fs.isfile("C:\\asdfasdfasd");
	update(r);
end

------------------------------------------------------------------

actions.isdir_no = function ()
	local r = fs.isdir("C:\\Windows\\notepad.exe");
	update(r);
end

actions.isdir = function ()
	local r = fs.isdir("C:\\Windows");
	update(r);
end

actions.isdir_bad = function ()
	local r = fs.isdir("C:\\asdfasdfasd");
	update(r);
end

------------------------------------------------------------------

actions.ishidden = function ()
	local r = fs.ishidden("C:\\ProgramData");
	update(r);
end

actions.ishidden_no = function ()
	local r = fs.ishidden("C:\\Windows");
	update(r);
end

actions.ishidden_bad = function ()
	local r = fs.ishidden("C:\\asdfasdfasd");
	update(r);
end

------------------------------------------------------------------

actions.size_file = function ()
	local r = fs.size("C:\\Windows\\notepad.exe");
	update(r);
end

actions.size_dir = function ()
	local r = fs.size("C:\\Windows");
	update(r);
end

actions.size_bad = function ()
	local r = fs.size("C:\\asdfasdfasdfasdf");
	update(r);
end

------------------------------------------------------------------

actions.created = function ()
	local r = fs.created("C:\\windows\\notepad.exe");
	update(r);
end

actions.modified = function ()
	local r = fs.modified("C:\\windows\\notepad.exe");
	update(r);
end
