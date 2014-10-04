//<continuation number="480">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm1450scr.nss_MAIN
{
$TEXTBOX_TYPE="";
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev145紅雀妄想の蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1460sl.nss";

}


scene dm1450scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 50000, "FFFFFF");
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);
	St("C",740, @0,@0,"fu紅雀_通常_think2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

	FadeDelete("絵色白", 1000, null, true);

	Wait(800);

	St("C",740, @0,@0,"fu紅雀_通常_cry");
	FadeSt("C",900,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000010a02">
"&.&.&.&.&. Ngh&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000020a02">
"&.&.&.I&.&.&.What happened?"

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000030a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu紅雀_通常_sad");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000040a02">
"Aoba! What's wrong? We&.&.&. Were we saved?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000050a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu紅雀_通常_cry");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000060a02">
"&.&.&.I see&, we're saved&.&.&. so it's over&. &.&.&.That's good&."

{
	St("C",740, @0,@0,"fu紅雀_通常_think2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000070a02">
"You got into some trouble&, seriously&. Sorry 'bout that&,
 Aoba&."

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000080a01">
"That's fine&."

{
	St("C",740, @0,@0,"fu紅雀_通常_cry");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000090a02">
"No&, really&. If you weren't there&, I might've died a long
 time ago&, you know&. The only thing that connects me to
 this world is you&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile3");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000100a01">
"&.&.&.&.&."

{
	St("C",740, @0,@0,"fu紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000110a02">
"Really&, thank you&. I owe you one&."

{
	Fw("fw蒼葉_通常_happy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000120a01">
"Yeah&.&.&. Koujaku&."

{
	St("C",740, @0,@0,"fu紅雀_通常_normal2");
	FadeSt("C",200,true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 1000, null, false);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000130a02">
"!? Heh? H-Hey&, Aoba? You- What are&.&.&. Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg304091_5_東江タワー中ホール_l.jpg");
	Move("絵背景100", 500, @0, @-100, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 300, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw紅雀_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000140a02">
"Ouch&. Are you okay? What're you clinging onto me for? If
 you surprised me a bit more&, then I would've fallen right
 off my feet!"

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000150a01">
"&.&.&.That's fine&."

{
	Fw("fw紅雀_通常_cry");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000160a02">
"&.&.&.Huh? What is?"

{
	Fw("fw蒼葉_通常_happy");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000170a01">
"&.&.&.&.&."

{
	Fw("fw紅雀_通常_sad");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000180a02">
"&.&.&.&.&.Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000190a01">
"Koujaku&.&.&."

{
	Fw("fw紅雀_通常_sad");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000200a02">
"You&.&.&."

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000210a01">
"You don't have to worry about anything&. I understand
 everything&. I know&. So&.&.&."

{
	Fw("fw紅雀_通常_sad");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000220a02">
"&.&.&.&.&."

{
	Fw("fw紅雀_通常_cry");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000230a02">
"'S that&.&.&. so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ101", 1101, Center, Middle, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	CreateTextureEX("絵ＥＶ100", 1100, -1100, -424, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Move("絵ＥＶ100", 1000, -967, -424, Dxl1, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000240a02">
"It's weird&. I feel so at ease with you&. I'm really calm&.
 It's like everything before this was a lie&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000250a01">
"Yeah&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000260a02">
"&.&.&.Aoba&. Uh&, it might sound weird&.&.&. but can I touch you?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000270a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ16");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 2000, -478, -790, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000280a02">
"&.&.&.Aoba&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000290a01">
"Yeah?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000300a02">
"Aoba&.&.&. can I kiss you?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000310a01">
"That's fine&."

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 500, 0, null);

	Move("絵ＥＶ100", 500, @0, @30, Dxl1, true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000320a02">
"&.&.&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000330a01">
"&.&.&.Fu&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ101", 1500, -653, -354, Dxl1, false);
	Fade("絵ＥＶ101", 1500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000340a02">
"&.&.&.Aoba&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000350a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000360a02">
"&.&.&.Can I touch you some more?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000370a01">
"That's fine&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000380a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ102", 1102, -555, -624, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Move("絵ＥＶ102", 1000, -455, -624, Dxl3, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000390a01">
"That's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000400a01">
"That's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000410a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 1103, -767, -424, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Move("絵ＥＶ103", 1500, -967, -424, Dxl1, false);
	Fade("絵ＥＶ103", 1500, 1000, null, true);
	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000420a01">
"That's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000430a01">
"That's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000440a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ104", 1104, -478, -790, "cg/ev/l/ev145紅雀妄想の蒼葉_l.jpg");
	Move("絵ＥＶ104", 2000, -781, -373, Dxl1, false);
	Fade("絵ＥＶ104", 2000, 1000, null, true);
	Delete("絵ＥＶ103");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000450a01">
"That's fine&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000460a01">
"That's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＢＧＭぴたっと止まる
	SetVolumeEX("@dm*", 200, 0, null);

	CreateTextureEX("絵ＥＶ105", 1105, Center, Middle, "cg/ev/ev145紅雀妄想の蒼葉.jpg");
	Move("絵ＥＶ104", 1000, -888, -288, Dxl1, false);
	Fade("絵ＥＶ105", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/5000470a02">
"Is it really okay?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/5000480a01">
"        "


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1460sl.nss"]

}
