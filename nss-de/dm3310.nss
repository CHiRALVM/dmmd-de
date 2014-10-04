//<continuation number="240">
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


scene dm3310.nss_MAIN
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
	$GameName = "dm3320.nss";

}


scene dm3310.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Mink is sitting on the sofa in the living room&, tampering 
with some machine&.

Tori is perched behind him&, grooming himself on the back 
of the sofa&.

Mink's figure comes into view and I can feel my heart 
clenching tight&.

I pick up on the scent of cinnamon that seems to be coming from him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵背景100", 100, -922, -318, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景100", 500, -1022, -318, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I decide to ignore Mink and head to another room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000020a05">
"Hey&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
I'm surprised when he calls me to a stop&.
I turn my head&, trying to look as calm as possible&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景100", 500, -972, -318, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000040a01">
"&.&.&.What now?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000050a05">
"Put this in your Allmate&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000060a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1500,null,false);

	Wait(300);

	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,300,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Mink throws something my way&.
It's a USB the size of my pinky finger at most&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000070a01">
"What's this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000080a05">
"It's a specialized weapon that the people up at the tower
 deployed to their Allmates for security reasons&. It's a
 destroying program&."

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000090a05">
"Your Allmate will connect to the tower's network with it
 in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000100a01">
"How do you know this?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000110a05">
"The jailer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
It was like that with that club card too&, but the Old 
Resident District's prison system was near defunct&.

So it's obvious that there were some exchanges of 
information between the prisoners&, the jailers&, and 
the police&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000120a01">
"What'll happen to Ren if I do this?"

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000130a05">
"Who knows&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock2",1950,"fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000140a01">
"Who knows&.&.&.!? Putting something so dangerous in Ren isn't
 funny&. Never&. I won't&, take it back&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000150a05">
"&.&.&.Are you an idiot?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Mink harshly squints at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000160a05">
"I thought about this earlier too&, why are you so damn
 fussy over your Allmate? They're just goods&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000170a05">
"Or can you not fall asleep without a teddy bear?"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000180a01">
"&.&.&.Don't talk like he's just some product&. I've never
 thought of Ren that way&."

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000190a05">
"So is that why you don't want to break him? It's a
 machine&. Trash with thousands of replacements&."

{	FwPro("fw蒼葉_通常_rage",1800,"fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000200a01">
"You're wrong&. I don't know about you&.&.&. but Ren isn't
 trash&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
While speaking&, my focus flickers to Tori&, and also to Ren 
at my feet&.

Doesn't Tori hate being called an item?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
But Tori just keeps grooming himself without paying any 
attention&.

Something he and Mink share in common&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000210a05">
"It doesn't matter what you think&. It's part of the plan&.
 You have to do it&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000220a01">
"No&."

{	Fw("fwミンク_通常_angry");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/1000230a05">
"It's the end of it if you fail&. You're not the only
 problem&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/1000240a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度

	CreateTextureSP("絵マスク中/絵霞", 1000, 750, -862, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	CreateTextureSP("絵マスク中/絵立絵", 2000, 120, -170, "cg/st/x/stAM蓮_通常_normal_x03.png");
	SetShade("絵マスク中/絵霞", SEMIHEAVY);
	Zoom("絵マスク中/絵霞", 0, 1500, 1500, null, true);
	Move("絵マスク中/絵霞", 0, 500, -830, Dxl1, true);

	Move("絵マスク中/絵立絵", 0, @0, @50, null, true);

	Move("絵マスク中/絵霞", 500, @0, @-20, Dxl1, false);
	Move("絵マスク中/絵立絵", 500, @0, @-50, Dxl1, false);

	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1300,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I look down at Ren&.

He's just staring at me silently with his tongue sticking 
out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
&.&.&.I can't&.
I can't do it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3320.nss"]

}
