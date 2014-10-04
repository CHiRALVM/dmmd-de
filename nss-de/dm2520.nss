//<continuation number="130">
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


scene dm2520.nss_MAIN
{
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2530.nss";

}


scene dm2520.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateSE("SE22","se物体_東江タワー_アラーム01L");
	MusicStart("SE22",0,300,0,1000,null,true);
	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

//	CreateColorSPover("絵色赤", 500, "RED");

	CreateColorEXmul("絵色赤", 500, RED);
	Fade("絵色赤", 300, 600, null, true);

	dm1500ShakeLoop("絵シェイク","bg304053_5_東江タワー研究エリア廊下03",400,2);

	CreateSE("SE地鳴り","se物体_東江タワー_地鳴り01L");
	MusicStart("SE地鳴り",3000,500,0,1000,null,true);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,500,0,800,null,false);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,500,0,1000,null,false);

	FadeDelete("上背景", 1000, null, true);

//※暗転

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We came out of the hall&, and walked down the hallway while paying attention to the trembling of the tower&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE地鳴り", 3000, 300, null);

	SetVolumeEX("SE01", 2000, 0, null);
	SetVolumeEX("SE02", 2000, 0, null);

	FadeDelete("絵色黒", 1000, null, true);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000010a03">
"Are you feeling okay? You don't look too good there&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000020a01">
"Yeah&, I'm feeling fine&. &.&.&.But isn't this going to
 collapse?"

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000030a03">
"Probably&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000040a01">
"Did you start this?"

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000050a03">
"No&, it wasn't me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000060a01">
"Then who&.&.&."

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000070a03">
"Who knows&.&.&. Maybe it's a miracle&."

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000080a01">
"Even if we were involved&, a miracle&, huh?"

{
	Fw("fwノイズ_通常_pride");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000090a03">
"That's why we're running away like this&, right?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	CreateTextureEX("絵背景100", 100, -822, -321, "cg/bg/l/bg304051_5_東江タワー研究エリア廊下01_l.jpg");
	Move("絵背景100", 500, -1022, -321, Dxl3, false);
	Fade("絵背景100", 500, 1000, null, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
We walk together&, supporting each other&, and see an 
elevator at the end of the hallway&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000100a01">
"Hey&, over there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
We approached the elevator and tried pushing the panel 
button&.

{
	CreateSE("SE01","se物体_ドア東江自動_扉開く01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);
}
&.&.&.The door opened&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000110a03">
"Is it an emergency elevator? Let's go down with it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 990);

	dm1500ShakeLoop("絵シェイク","bg304072_5_東江タワーエレベーター",400,2);

	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);
	Delete("絵背景*");
//	Delete("絵色赤");

	SetVolumeEX("SE*", 2000, 100, null);
	SetVolumeEX("合成*", 2000, 300, null);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
We stepped inside and pushed the panel button of the first floor&.

{
	CreateSE("SE12","se物体_エレベータ_駆動01L");//あきゅん「ＳＥ：se物体_エレベータ_駆動01L」
	MusicStart("SE12",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 990);

	dm1500ShakeLoop("絵シェイク","l/bg304072_5_東江タワーエレベーター_l",400,1);

	CreateTextureSP("絵背景100", 100, -944, -355, "cg/bg/l/bg304072_5_東江タワーエレベーター_l.jpg");

	FadeDelete("絵板写", 500, null, true);

}
While being shaken by the unstable vibration of the tower&, the elevator began to descend&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm25/2000120a01">
"&.&.&.I hope it won't stop in the middle&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm25/2000130a03">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetFrequency("SE12", 1000, 100, null);
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Wait(300);
	Delete("SE12");
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("合成*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Despite our fear&, the elevator stopped safely at the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm2530.nss"]

}
