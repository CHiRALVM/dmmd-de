//<continuation number="180">
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


scene dm3613.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	SparksDropDelete(0);
	$GameName = "dm3614ed.nss";

}


scene dm3613.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：連結部分調整しました」

	PrintBG("上背景", 30000);

	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);
	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",0,true);

	Wait(16);

	CreatePlainSP("絵板写朧", 1000);
	SetShade("絵板写朧", SEMIHEAVY);

	CreateColorSP("絵色黒", 1990, "000000");
	DrawTransition("絵色黒", 1, 0, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	St("C",1740, @0,120,"fuミンク_通常_normal2");
	FadeSt("C",0,true);
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 2000, 2000, null, true);

	FadeDelete("上背景", 0, null, true);

	CreatePlainSP("絵板写", 20000);
	CreateTextureSP("絵演焼野原朧", 100, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Zoom("絵演焼野原朧", 0, 1500, 1500, null, true);
	SetShade("絵演焼野原朧", HEAVY);

	Wait(16);

	DeleteAllSt(0,true);
	Delete("絵色黒");
	Delete("絵板写朧");

	CreatePlainEX("絵板写下", 1000);
	CreateSE("SE01","se擬音_効果_ドン03");
	MusicStart("SE01",0,1200,0,800,null,false);

	Delete("絵板写");
	FadeFFR("絵板写下", 0,1000, 200, 0, 0, 30,null, true);
	FadeDelete("絵板写下", 300, null, true);

//※演出：ドン！と音がして、また周りが一気にミンクの過去の焼けた森に戻る
//◆演出：火の粉
//※ＳＥ：火の粉

	PrintGO("上背景", 30000);

	OnBG(10,"bg204011_3_暴露ミンク故郷草原炎上");
	FadeBG(0,true);

	SparksDrop(0);
	$ミンクのトラウマ=3;
	MinkSparksDropStrengthFade();

	CreateSE("SE11","se環境_戦闘_過去ミンク01L");
	MusicStart("SE11",3000,500,0,1000,null,true);

	Wait(1000);

//おがみ：音声　SE用に加工が必要
//※ＳＥ扱い
//【民族の男】
//<voice name="民族の男" class="民族の男" src="voice/dm36/1300010e29">
//「ああああぁぁぁぁぁ……」

//※ＳＥ扱い
//【民族の男】
//<voice name="民族の男" class="民族の男" src="voice/dm36/1300020e29">
//「ううぅぅぅぅぅ…………」

	CreateTextureEX("絵背景上", 800, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Request("絵背景上", Smoothing);
	SetShade("絵背景上", HEAVY);
	Zoom("絵背景上", 0, 1500, 1500, null, true);


	CreateTextureSP("絵背景", 110, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	CreateTextureSP("絵背景２", 100, Center, Middle, "cg/bg/bg204011_3_暴露ミンク故郷草原炎上.jpg");
	Request("絵背景２", Smoothing);
	SetShade("絵背景２", HEAVY);
	Zoom("絵背景２", 0, 2000, 2000, null, true);

	CreateTextureSP("絵キャラ", 105, Center, -284, "cg/st/l/stミンク_通常正面_serious_l.png");
	Request("絵キャラ", Smoothing);
	SetBlur("絵キャラ", true, 3, 500, 300, false);

	FadeDelete("上背景", 1500, null, true);

	Wait(1000);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300030a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.I'm back here?

In that forest of Mink's past&.&.&.!?

Why&.&.&.

I already finished with Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.&.&.<k><?>
&.&.&.No&.

It's not over&.

I'm still inside Mink's head&.

Scrap is&.&.&.

&.&.&.I failed&.

Mink's lower body is dyed red with the reflection of the 
flames&, and he touches my cheek as his hair flows in the 
hot winds&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(200);

	SoundPlay("@dm006",0,450,true);

	Fade("絵背景上", 0, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);

	St("C",740, @0,@0,"buミンク_通常正面_serious");
	FadeSt("C",0,true);

	Fade("絵背景上", 1000, 0, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300040a05">
"I don't know if the two of us will make it out of here
 safely&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300050a05">
"So I'll just take along the most important thing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300060a01">
"&.&.&.What&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink's eyes are looking at me&, but somehow they're not&.

The red flames reflect in his eyes&.
Suddenly&, dread comes over me and I try to get away from 
him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 5, 3, 0, 0, 1000, null, false);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300070a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
But he grabs me by the neck with both of his hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	MoveFTP1("@絵背景２",10000,10,8);
	MoveFTP2("@絵キャラ",10000,5,4);

	Fade("絵背景", 500, 0, null, true);
	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300080a05">
"There is one sacred part of a human's body&. The head&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300090a05">
"The soul is held there&. If I hold onto it&, the devil won't
 take you away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300100a01">
"What are&.&.&. you tal-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300110a05">
"You have the same smell as me&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300120a05">
"I've always been followed by the shadow of death and the
 destruction of life&."

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300130a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300140a05">
"Being by you in your last moments is the least I can do&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300150a01">
"Mink&.&.&. Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.I have to get away&.

I've failed at Scrap&.

It's probably&.&.&.
Because I changed the past&.

I had saved the people being caught and killed by the 
soldiers&.

That may have distorted Mink's memories&.

The past is something that has already happened&.

You can't change it now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
So&.&.&.

I had to have watched instead of intervened&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1300160a05">
"I'll be taking you along with me&. Your&.&.&. soul&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");

	Zoom("絵背景２", 1500, 1100, 1100, AxlDxl, false);
	Zoom("絵キャラ", 1500, 1200, 1200, AxlDxl, false);

	Fade("絵色黒", 1000, 1000, null, true);
	MoveFTP1stop();
	MoveFTP2stop();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,900,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Mink hugs me tightly&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300170a01">
"No&, Mink! Let go! Let go of me&.&.&.!"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1300180a01">
"Mink&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：ガスッとうなじを殴られて蒼葉気絶
//※ＳＥ：ガスッとうなじを殴られて蒼葉気絶

	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(2000);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	CreateSE("SE02","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	SparksDropDelete(0);

	ClearFadeAll(2000, true);

	Wait(2000);

//※次ファイル["dm3614ed.nss"]

}
