//<continuation number="150">
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


scene dm1160.nss_MAIN
{

//演出準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	Request("絵色ライト1", Lock);
	Request("絵色ライト2", Lock);
	Request("絵色ライト3", Lock);
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 500;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");
	Request("プロセスライト１", Lock);

	CreateTextureEX("dm1160_プロセス洗脳絵背景", 100, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");
	CreateLoopFade("dm1160_プロセス洗脳光",200,true,AddRender,cg/bg/bg303024_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("dm1160_プロセス洗脳レーザー",150,true,false,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	Request("dm1160_プロセス洗脳*", Lock);

//演出準備===========================================================


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
	$GameName = "dm1160sl.nss";

}


scene dm1160.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "FFFFFF");
	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);
	Fade("@dm1160_プロセス洗脳絵背景", 0, 1000, null, true);

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("@dm1160_プロセス洗脳*","絵Suf");
	Zoom("絵Suf", 0, 1500, 1500, null, true);
	Request("絵Suf", Smoothing);

	GoLoopFade("@dm1160_プロセス洗脳光",100);
	GoLoopFade2("@dm1160_プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);

	CreateTextureEXadd("絵背景光効果", 50000, Center, Middle, "cg/data/circle_01_00_0.png");

	Fade("上背景", 200, 0, null, true);
	Delete("上背景");



//表示開始

//	SoundPlay("@dm022",0,450,true);

	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景光効果", 200, 1000, null, true);
	Zoom("絵Suf", 1000, 1000, 1000, Dxl2, false);
	DrawDelete("絵背景光効果", 500, 500, null, "circle_01_00_1", false);
	DrawDelete("絵色黒", 1000, 500, null, "circle_01_00_1", false);
	Fade("絵背景光効果", 1000, 0, null, true);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000010a01">
"Ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6000020a02">
"&.&.&.Aoba!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The pain is still lingering and I hear a voice I know all 
too well&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm11/6000030b16">
"Ain't that Aoba! Ren too! Hey&, Koujaku&, go get them!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※ＳＥ：速足に近付いてくる音（ヒールなしのブーツタイプ）
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(500);
	SetVolumeEX("SE*", 1000, 0, null);
	Wait(200);

//	St("C",740, @0,@0,"bu紅雀_通常_shout");
//	FadeSt("C",200,true);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6000040a02">
"Are you okay&, hey! Pull yourself together!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"bu紅雀_通常_angry3");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
He lifts me up and I can see a blurry outline of Koujaku's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000050a01">
"Kou&.&.&. Ergh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I try to call out his name&, but I feel something swell up 
in my throat&.

I try to hold it back&, and put a hand to my mouth again&.
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000060a01">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	//おがみ：SE：吐しゃ物の音　必要なければ消して
	CreateSE("SE01","se擬音_水_はねる01");
	MusicStart("SE01",0,500,0,700,null,false);

	Wait(200);

	Fw("fwm女性C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【女性客Ａ】
<voice name="女性客Ａ" class="女性客Ａ" src="voice/dm11/6000070e24">
"Eugh! Hey!"

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm11/6000080e22">
"He just threw up!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Oh shit&.&.&.

&.&.&.I've really done it now&.

Not only did I throw up all my food&, but my dignity as 
well&.

I hear screams and angry yells&.
I feel so embarrassed I could die&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000090a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I wipe my mouth and look up&. It looks like I stained 
Koujaku's kimono pretty bad as well&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000100a01">
"Sor- Koujaku&.&.&. Your kimono&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//おがみ：BGM：切ない系
	SoundPlay("@dm012",0,450,true);

	Fw("fw紅雀_通常_cool");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6000110a02">
"Idiot&, don't talk&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I hang my head down&, Koujaku lightly brings his hand up to my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6000120a02">
"You're doing fine&, so stay still&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
He says that in an unusually gentle voice&, and wipes my 
mouth with his sleeve&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000130a01">
"! It'll get dirty&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
I flinch and push away Koujaku's arm&. But he just holds me down with his shoulder and wipes my mouth with his sleeve  anyway&.

You're kidding&.&.&.
Getting your nice red kimono dirty&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm11/6000140a01">
"Wha- What are you doing&.&.&.!?"

{	Fw("fw紅雀_通常_cool");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6000150a02">
"Shut up&. You're not well&, so shut your mouth&. Can you
 stand?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1160sl.nss"]

}
