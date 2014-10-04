//<continuation number="170">
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


scene dm4430.nss_MAIN
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

	//▼背景ＣＧ
	#イベントファイル名=true;
	#bg304031_5_東江タワー廊下01=true;
	#bg304033_5_東江タワー廊下03=true;
	#bg304072_5_東江タワーエレベーター=true;
	#bg304051_5_東江タワー研究エリア廊下01=true;
	#bg304052_5_東江タワー研究エリア廊下02=true;
	#bg304053_5_東江タワー研究エリア廊下03=true;
	#bg304131_5_東江タワー東江の間前廊下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4440.nss";

}


scene dm4430.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
//	OnBG(10,"bg304031_5_東江タワー廊下01");
//	FadeBG(0,true);

	OnBG(10,"bg304032_5_東江タワー廊下02");
	FadeBG(0,true);

	CreateTextureSP("絵背景11", 11, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01.jpg");
	Rotate("絵背景11", 0, @0, @180, 0, null, true);

	CreateColorSPadd("絵色白", 4000, "WHITE");
	CreateTextureSP("絵背景", 100, 0, 0, "cg/bg/l/bg304031_5_東江タワー廊下01_l.jpg");
	Rotate("絵背景", 0, @0, @180, 0, null, true);
	Rotate("絵背景", 1000, @0, @0, 360, null, true);

//	Move("絵背景", 0, @-500, @0, AxlDxl, true);

	Wait(500);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);
	FadeDelete("絵色白", 2500, null, false);
	Wait(500);
	Move("絵背景", 3500, @0, @-400, AxlDxl, true);
	Wait(700);
	SoundPlay("@dm018",0,450,true);
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The inside of the tower is just like its exterior&, covered in white&.

The walls and floors are polished to the point that they 
seem like mirrors and feel cold to the touch&.

I heard that there was an area of the tower open to the 
public&, but no one was in sight since we entered from 
another entrance&.

But I can hear the sound of footsteps&, so there must be 
guards on patrol&.

The space is suffocatingly tranquil&, and Clear and I keep 
walking down the long hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 1000, -1000, null);

	Wait(100);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 1000, 1000, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("SE*", 1000, 0, null);

//	OnBG(10,"bg304032_5_東江タワー廊下02");
//	FadeBG(0,true);
	Delete("絵背景11");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
After walking some distance&, we arrive at an elevator&. Two guards stand by it&.

We stop upon reaching it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000010a01">
"It says on the invitation to go to the top floor&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);}

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000020a04">
"Toue's office must be on the top floor&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000030a01">
"&.&.&.I have even worse feeling about this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The almost robotic guards glue their eyes on us as they&,
too&, board the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304072_5_東江タワーエレベーター");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SE01","se物体_エレベータ_駆動01L");
	MusicStart("SE01",500,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The button on the panel is pushed&, and the elevator slowly starts to ascend to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE05","se人体_動作_衣擦れ05");
	MusicStart("SE05",0,700,0,1200,null,false);
	SetVolumeEX("SE05", 1000, 0, null);

	St("C",740, @0,@0,"buクリア_通常マスクなし_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000040a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Clear leans against the elevator wall&, letting out haggard gasps&.

His expression is warped with pain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000050a01">
"&.&.&.Does it hurt?"

{	St("C",740, @0,@0,"buクリア_通常マスクなし_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000060a04">
"&.&.&.I'm fine&. It'll go away if I rest for a while&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000070a01">
"But-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000080a04">
"I'm fine&. We need to keep going&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I remember the sparks that flew out of Clear's arm&.
Is he really okay&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
The air is silent&, and the door opens when we reach the 
top floor&.

It has a completely different atmosphere compared to the 
first floor&.

The first floor was made for guests&, but this floor 
doesn't even compare in terms of looks&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000100a01">
"Is this where Toue is?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000110a04">
"No&, this is the research area&. Toue's office is somewhere
 by elevator&, but an ordinary person can't enter here&."

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000120a04">
"We should be fine with that invitation in hand&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000130a01">
"Research area&.&.&. They do research up here?"

{	St("C",740, @0,@0,"stクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000140a04">
"Yes&. I believe they do&. Toue also has facilities on the
 mainland as well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
The tension builds up inside of me as we begin to walk up 
the dreary hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
//覇：ここの演出どうします？

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, -1024, -430, "cg/bg/l/bg304052_5_東江タワー研究エリア廊下02_l.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
We walk silently&, and eventually find a door at the end of the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
There's a monitor by the door&.

I open my invitation from my Coil and hold it up to the 
monitor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//覇：下記二重かぎ括弧でしょうか？
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm44/3000150e06">
"Confirmed&. Please come in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	FadeBG(0,true);

	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
When the door opens&, we see another elevator in front of 
us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/3000160a01">
"That elevator must go to the top floor&."

{	Fw("fwクリア_通常マスクなし_serious2");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/3000170a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C", 0,true);

//あきゅん「↓：背景違うので修正しました11/01」
//	OnBG(10,"bg304072_5_東江タワーエレベーター");
//	FadeBG(0,true);

	CreateSE("SE01","se物体_エレベータ_駆動01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
We show the invitation to yet another confirmation monitor and climb into the elevator to go to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↓：背景違う、"bg304131_5_東江タワー東江の間前廊下"に繋げて」
	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(0,true);

	SetFrequency("SE01L", 3500, 300, null);

	Wait(2000);

	SetVolumeEX("SE01L", 1000, 0, null);

	CreateSE("SE01","se物体_エレベータ_電子音01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);
	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
The elevator quickly stops and opens its doors&.

This floor is different from the one designed for research&.
In front of me I see a red door&.

{
	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 1000, -1000, null);
	Wait(100);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 1000, 1000, null);

	CreateTextureEX("絵背景", 100, Center, -372, "cg/bg/l/bg304131_5_東江タワー東江の間前廊下_l.jpg");
	Fade("絵背景", 800, 1000, null, true);
	SetVolumeEX("SE*", 500, 0, null);
}
I advance down the hallway and stand in front of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm4440.nss"]

}
