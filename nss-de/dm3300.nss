//<continuation number="50">
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


scene dm3300.nss_MAIN
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
	#bg302061_5_グリッター階段=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3310.nss";

}


scene dm3300.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/0000010a01">
"&.&.&.Ugh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 2000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.It was very difficult opening my eyes the next day&.

My body felt as heavy as a brick&, and the awful pain still lingered&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, 0, -286, "cg/bg/m/bg302011_5_グリッター部屋01_m.jpg");

	FadeDelete("絵板写", 1500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Without even attempting to get up immediately&, I spend my 
time sitting on the bed with my legs out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/0000020a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
My beaten cheeks hurt&. And I can feel a wound from the 
inside too&.

And&.&.&. it hurts inside my body&.
It throbs as if it's been burnt&.

Yesterday&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	EfRecoIn1(10000,200);
//
//	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/bg/bg302051_5_グリッターエントランス.jpg");
//
//	St("C",1500, @0,@0,"fuミンク_通常正面_serious");
//	FadeSt("C",0,true);
//
//	EfRecoIn2(500);
//
//	Wait(1000);
////
////	EfRecoIn1(10000,200);
////
////	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev339首を絞められる蒼葉.jpg");
////
////	EfRecoIn2(500);
////
////	Wait(1000);
//
//	EfRecoOut1(500);
//
//	Delete("絵効果*");
//	DeleteSt("C", 200,true);
//
//	EfRecoIn2(400);


//	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.&.&.

I don't really want to remember&.

Weirdly enough&, I feel a little better but I'm not 
sure why&.

It's probably because I just spewed out all of my 
anxieties and problems&.

When Mink was tormenting me yesteryday&.&.&. I told them all 
to him&.

He drove me into a corner&, but it's ironic that that 
somehow put me a little at ease&.

He&.&.&. I wonder what he did to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	CreatePlainSP("絵板写", 5000);

	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, #624a2b);
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	CreateTextureSPmul("絵演出効果", 3000, Center, Middle, "cg/ef/effi回想01.jpg");

	CreateTextureSP("絵演絵背景", 100, Center, Middle, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	SetShade("絵演絵背景", MEDIUM);

	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 1000, null, true);

	Wait(1000);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Goosebumps line my skin when I recall his whispering 
commands in my ear&.

He told me to expose everything&.

What would happen to me&.&.&.
If I really did all of that?

I wonder what Mink would think of it&.
I don't know myself&, but somewhere inside of me&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	CreatePlainSP("絵板写", 5000);

	Delete("絵演*");
	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 1000, null, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
And&.&.&. when I think about it&, Mink actually carried me all the way to the bed&.

He seemed like the type of character to just leave me 
there&, so why?

Mink's team&.&.&. Mink seemed like the caretaker to the 
members of Scratch&, that's the image I have of him&.

But he also seems like a violent guy who doesn't listen&.&.&.
I don't know&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I slowly get up from the bed and activate Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/0000030a01">
"Morning&, Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm33/0000040a06">
"Morning&, Aoba&. You look like you're in a horrible
 condition&. Are you all right?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/0000050a01">
"&.&.&.Well&, sort of&."

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
[text0040]
I reply to Ren with a bitter smile and sluggishly exit the room&.

I took a shower right away&.

Mink came inside of me last night&. It feels disgusting 
running down my legs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302061_5_グリッター階段");
	FadeBG(1000,true);

	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1200,null,false);

	Wait(300);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(1000,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Ren leaves the living room with me and follows behind down the stairs to the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3310.nss"]

}
