//<continuation number="100">
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


scene dm4140.nss_MAIN
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
	$GameName = "dm4150.nss";

}


scene dm4140.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/4000010a04">
"By the way&, Master&. I'm changing the topic&, but do we have our sights on Oval Tower?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/4000020a01">
"I haven't decided yet&, but I think it'd be best to gather
 information on it to make sure&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/4000030a04">
"Then why don't we head over to the tower later?
 Information gathering is important&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/4000040a01">
"Sure&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I nod and pluck a strawberry off some pancakes&.
I'd planned to go there from the start&, anyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/4000050a01">
"Alright&, let's go out to make preparations&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/4000060a04">
"Yes&. I'll tidy up&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/4000070a01">
"No&, I ate so I'll help out&."

{	DeleteFw();
	ClearComicNext(800,430,71,17,0);}
//【クリア】※漫符：ハート
<voice name="クリア" class="クリア" src="voice/dm41/4000080a04">
"Really? Thank you so much&, D-e-a-r!"

{	ClearComicNexDelete();
	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/4000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
//あきゅん「↓：ここでもイベント絵を使用して下さい」
//※蒼葉、無言でクリアを蹴る
	CreateTextureEX("絵一枚絵", 1000, 0, InBottom, "cg/ev/m/ev900蒼葉蹴り汎用_m.jpg");
	CreateColorEXadd("絵色白", 5000, "WHITE");

	Move("絵一枚絵", 200, @-288, @288, Axl2, false);
	Fade("絵一枚絵", 180, 1000, Dxl1, true);

	DeleteSt("C", 0,true);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 200, 1000, Dxl3, true);

	Delete("絵一枚絵");

	Fade("絵一枚絵", 0, 1000, Dxl3, true);
	Shake("絵一枚絵", 500, 50, 50, 0, 0, 500, null, false);

	Shake("絵背景", 300, 50, 50, 0, 0, 500, Axl2, false);
	FadeDelete("絵色白", 300, Axl2, true);

	Wait(300);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

*/

	DeleteFw();
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(100,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwクリア_通常マスクあり_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【クリア】※漫符：ガーン
<voice name="クリア" class="クリア" src="voice/dm41/4000100a04">
"Ow! Y-You're awful&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.Continuing on like a slapstick comedy&, we finish 
cleaning up breakfast&, get our clothes together&, and leave 
Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm4150.nss"]

}
