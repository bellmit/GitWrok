create or replace function fn_splitStr(v_str varchar2, v_split varchar2)
return varchar2
as 
lv_result varchar2(1000); --结果字符串
lv_str varchar2(1000); --目标字符串
lv_start number := 1; --字符串开始下标
lv_length number := length(v_str); --字符串总长
lv_index number; --分隔符下标
lv_cont varchar2(1000); --单个结果
lv_contsplit varchar2(1000); --切割后字符串
begin
	lv_str := ltrim(rtrim(v_str));
	lv_str := concat(lv_str, ',');
	if lv_str is not null then
		while (lv_start <= lv_length)
		loop
			lv_index := instr(lv_str, v_split, lv_start);
			if lv_index = 0 then 
				select ti.c_customername into lv_cont from tcustomer_info ti where ti.c_customercode = (select trr.c_customercode from tcustomer_role_relation trr where trr.c_relationcode = lv_str);
				lv_result := lv_cont;
				lv_start := lv_length + 1;
			else 
				lv_contsplit := substr(lv_str, lv_start, lv_index - lv_start);
				select ti.c_customername into lv_cont from tcustomer_info ti where ti.c_customercode = (select trr.c_customercode from tcustomer_role_relation trr where trr.c_relationcode = lv_contsplit);
				if lv_result is not null then 
					lv_result := lv_result || ',' || lv_cont;
				else 
					lv_result := lv_cont;
				end if;
				lv_start := lv_index + 1;
			end if;
		end loop;
	else
		lv_result := '';
	end if;
	return lv_result;
end fn_splitStr;
/