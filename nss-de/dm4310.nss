//<continuation number="70">
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


scene dm4310.nss_MAIN
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
	$GameName = "dm4320.nss";

}


scene dm4310.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景50", 50, -242, -389, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg302011_5_グリッター部屋01天井_m.jpg");
	CreateTextureSP("絵立絵", 501, -250, Middle, "cg/fu/x/fuクリア_正面マスクあり_normal_x01.png");
	CreateTextureSP("絵立絵弐", 500, -250, Middle, "cg/fu/x/fuクリア_正面マスクあり_normal_x01.png");

	Rotate("絵立絵*", 0, @0, @0, @90, null,true);

	SetShade("絵背景", MEDIUM);
	SetShade("絵立絵", MEDIUM);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next day comes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

//※ガサッ
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

	DrawTransition("絵色黒", 500, 1000, 800, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(300);
	DrawTransition("絵色黒", 500, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/1000010a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(900);
	DrawTransition("絵色黒", 300, 1000, 0, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
	FadeDelete("絵立絵", 500, Dxl1, true);
	Wait(500);

	CreatePlainSP("揺用", 5000);
	CreatePlainSP("絵板写", 1000);
	Delete("絵背景");
	Delete("絵立絵*");

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("揺用", 500, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("揺用", 500, null, false);
	Move("絵背景50", 500, -242, -431, Dxl3, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/1000020a01">
"! Wuoah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
When I open my eyes&, the only thing I see in front of me 
is a gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景50", 500, null, true);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/1000030a04">
"Good morning&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/1000040a01">
"&.&.&.Clear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
For some reason&, when Clear looked at me&, he let out a 
sigh of relief&. He then bowed and left the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/1000050a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
What was that all about?

And was he just watching me sleep the entire time until I 
woke up?

It wouldn't be that much of a stretch for him&.&.&. but 
that's still pretty messed up&.

Puzzled&, I get out of bed and get dressed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/1000060a01">
"Ren&, let's go&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/1000070a06">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I pick up Ren and leave the room&.

A delicious smell floats through the corridor&. Clear must 
be making breakfast again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm4320.nss"]

}
