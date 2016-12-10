package HalloWelt_pack is
	constant c: STRING:= "Hallo Zeichenkette";
	function SchreibeText(s:STRING) return STRING;
end package;

package body HalloWelt_pack is
	function SchreibeText(s:STRING) return STRING is
		begin
		return s;
	end function;
end package body;
