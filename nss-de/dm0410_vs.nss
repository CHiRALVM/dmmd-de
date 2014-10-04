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


scene dm0410_vs.nss_MAIN
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
	$GameName = "dm0420.nss";

}


scene dm0410_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


//==============================================
//※以降、合流
//==============================================


	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000040a03">
"You were really strong at Rhyme when I faced you before&.
 Let's go at it again&."

{	Fw("fw蒼葉_通常_sigh2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/1000050a01">
"No I wasn't&. You've got the wrong person&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000060a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Noiz sinks into silence and just stares at me&.

He has a sour look on his face&, and winces a small bit&.

What's wrong with him&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000070a03">
"&.&.&.Well&, that's not the issue here right now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Noiz takes his gaze off of me and lets out a frustrated 
sigh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000080a03">
"It's in front of your shop today&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/1000090a01">
"What is?"

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000100a03">
"Rhyme&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/1000110a01">
"Rhyme?"

{	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000120a03">
"Usui's going to appear around here today&. Our predictions
 are always on target&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se環境_ガヤ_ざわつき01L");
	CreateSE("SE02","se環境_ガヤ_ざわつき01L");
	MusicStart("SE01",1000,300,0,1000,null,true);
	MusicStart("SE02",1000,300,0,800,null,true);
	DeleteSt("C", 200,true);
	Wait(3500);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
I frown&, unable to decrypt what he's going on about&. 
Boisterous noise travels all the way from outside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000130a03">
"We're going&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/1000140a01">
"Eh?"

{	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);}

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000150a03">
"Just come&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/bg/l/bg102011_5_平凡店内_l.jpg");

	Move("絵背景", 0, @0, @50, null, true);
	Move("絵背景", 300, @0, @-50, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 15, 0, 0, 500, Dxl1, true);
	DeleteSt("C", 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Noiz steps over the counter and grabs my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm04/1000160a01">
"Hey&, let me go! The shop&.&.&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm04/1000170a03">
"Shut up&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
His grip on my arm is so firm that I can't shake him off&, 
and I'm just barely able to grab my bag with Ren inside&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 1000, @150, @0, Dxl2, false);
	Fade("絵色黒", 500, 1000, null, true);

	Wait(500);

//※次ファイル["dm0420.nss"]

}
