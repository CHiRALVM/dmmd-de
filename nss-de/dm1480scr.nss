//<continuation number="410">
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


scene dm1480scr.nss_MAIN
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

	#bg503011_1_紅雀自宅紅雀自室=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1490.nss";

}


scene dm1480scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
	//OnBG(10,"bg202021_3_暴露紅雀実家小部屋");
	//FadeBG(0,true);
//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);
	St("C",740, @0,@0,"fu紅雀_通常_sad");
	FadeSt("C",0,true);

	Delete("上背景");



	CreateSE("SE01","se擬音_精神_ひび01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 1000, null, true);



	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵通常背景", 0, Center, Middle, "cg/bg/l/bg202021_3_暴露紅雀実家小部屋_l.jpg");
	Request("Ｃ/絵通常背景", Smoothing);
	Zoom("Ｃ/絵通常背景", 0, 500, 500, null, true);

	CreateMaskEX("Ｃ/絵演覆血障子", 0, 0, 0, "cg/bg/x/bg202021_3_暴露紅雀実家小部屋_マスク奥障子.png", false);
	CreateTextureSPover("Ｃ/絵演覆血障子/絵演血障子", 11, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("Ｃ/絵演覆血障子/絵演血障子", 0, 550, 500, null, true);
	SetShade("Ｃ/絵演覆血障子/絵演血障子", SEMIHEAVY);

	CreateTextureSPover("Ｃ/絵演覆血障子/絵演血障子二", 0, Center, -50, "cg/anime/Left/blood_C_6.png");
	Zoom("Ｃ/絵演覆血障子/絵演血障子二", 0, 550, 500, null, true);
	SetShade("Ｃ/絵演覆血障子/絵演血障子二", SEMIHEAVY);

	CreateTextureSPover("Ｃ/絵演覆血障子/絵演血障子三", 0, Center, -50, "cg/anime/Right/blood_B_8.png");
	Zoom("Ｃ/絵演覆血障子/絵演血障子三", 0, 550, 500, null, true);
	SetShade("Ｃ/絵演覆血障子/絵演血障子三", SEMIHEAVY);

	CreateTextureSP("Ｃ/絵演効果背景", 0, Center, Middle, "cg/bg/x/bg202021_3_暴露紅雀実家小部屋_効果障子闇.png");

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	MoveCamera("Ｃ", 0, -4, -70, 3000, null, true);





//定義：第一弾階

	$BTattooXPos="Center";
	$BTattooYPos=-809;
	CreateTextureEX("Ｃ/絵演黒刺青五", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef黒い刺青が這いよる05_l.png");
	CreateTextureEX("Ｃ/絵演黒刺青四", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef黒い刺青が這いよる04_l.png");
	CreateTextureEX("Ｃ/絵演黒刺青三", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef黒い刺青が這いよる03_l.png");
	CreateTextureEX("Ｃ/絵演黒刺青二", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef黒い刺青が這いよる02_l.png");
	CreateTextureEX("Ｃ/絵演黒刺青一", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef黒い刺青が這いよる01_l.png");
	Move("Ｃ/絵演黒刺青*", 0, @0, @650, null, true);
	SetVertex("Ｃ/絵演黒刺青*", center, bottom);
	Zoom("Ｃ/絵演黒刺青*", 0, 0, 250, null, true);

	//MoveCamera("Ｃ", 0, 0, 70, 2000, DxlAuto, false);

	CreateSE("SE01a","se擬音_刺青_もぞつく01L");
	MusicStart("SE01a",2000,600,-500,800,null,true);
	$TattooNext="Ｃ/絵演黒刺青一";
	DrawEffect($TattooNext, 0, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-500, DxlAuto, true);
	Move($TattooNext, 0, @0, @-150, DxlAuto, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);


//第２段階
	CreateSE("SE01b","se擬音_刺青_もぞつく01L");
	MusicStart("SE01b",2000,600,500,1200,null,true);
	$TattooNext="Ｃ/絵演黒刺青二";
	$TattooBack="Ｃ/絵演黒刺青一";
	DrawEffect($TattooNext, 0, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	//Fade($TattooBack, 8000, 0, null, false);
	FadeDelete("@Ｃ/絵演黒刺青一", 8000, null, false);

	//MoveCamera("Ｃ", 0, 0, 55, 2000, Dxl1, false);


//第３段階
	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="Ｃ/絵演黒刺青三";
	$TattooBack="Ｃ/絵演黒刺青二";
	DrawEffect($TattooNext, 0, "MiddleWave", 500, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青二", 0, null, false);

	//MoveCamera("Ｃ", 0, 0, 20, 2000, Dxl1, false);


//第４段階
	SetVolumeEX("SE01b", 2000, 900, null);
	$TattooNext="Ｃ/絵演黒刺青四";
	$TattooBack="Ｃ/絵演黒刺青三";
	DrawEffect($TattooNext, 0, "MiddleWave", 700, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青三", 0, null, false);

	//MoveCamera("Ｃ", 0, 0, -15, 2000, Dxl1, false);


//第５段階
	SetVolumeEX("SE01a", 2000, 900, null);
	$TattooNext="Ｃ/絵演黒刺青五";
	$TattooBack="Ｃ/絵演黒刺青四";
	DrawEffect($TattooNext, 0, "MiddleWave", 1000, 20, Dxl3);
	Fade($TattooNext, 0, 1000, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青四", 0, null, false);

	//MoveCamera("Ｃ", 0, 0, -50, 2000, Dxl1, false);

	SetVertex("絵板写", center, bottom);
	SetBlur("絵板写", true, 3, 500, 30, false);
	Zoom("絵板写", 2000, 1100, 1100, null, false);
	DrawTransition("絵板写", 2000, 1000, 0, 100, null, "cg/data/worm_01_00_0.png", true);
	FadeDelete("絵板写", 2000, null, true);

	Wait(200);

//※紅雀の精神世界の和室に戻ってくる

	SetStream("@dm012*", 15355);
	SoundPlay("@dm012",1000,450,true);//静けさ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The fake world&, the one Koujaku was trying to run from&.

We went back to the room of the "Past"&.

Koujaku stands there&, with the black tattoo still 
slithering up his arms&.

I take a deep breath&, and look at Koujaku's sad eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 600, null);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000010a01">
"&.&.&.You know by now&, don't you?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000020a01">
"I said this earlier&, but no matter how much you try to
 forget or run away from it&, you can't change the fact that
 it happened&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad3_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000030a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000040a01">
"You hurt a lot of people&, including your mother&.&.&.
 You can't erase that fact&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀壱", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000050a02">
"Don't say it anymore&.&.&.!"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000060a01">
"I won't&. But I will tell you: you didn't want to&.&.&.
 commit a sin&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_angry3_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000070a02">
"&.&.&.I know&. I know it's unforgivable to let a person
 like me keep living&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000080a01">
"Your death is one way to pay that debt&. But&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000090a01">
"But your death won't bring anything&. Not for your sins&,
 not for anything&. You're just unleashing your misery&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000100a01">
"&.&.&.Is that really okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀壱", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000110a02">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000120a01">
"Is it okay for you just to run away like that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000130a02">
"&.&.&.I'm going to run&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_worry3",10000,"fw蒼葉_通常_worry");
//	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000140a01">
"Yeah&. That may be good for you&, but what about your
 members? Your team&, and even me&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀壱", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀弐");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000150a02">
"My team&.&.&. they'll be fine&. They'll find a new Head
 without me there&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000160a01">
"Then what about me?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000170a01">
"What will happen to me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000180a02">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000190a01">
"Don't say I'll be fine without you&. I told you before not
 to put words in my mouth&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_worry3_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀壱", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000200a02">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000210a01">
"Because I won't be&. The same with the team&. You don't
 think strongly of others much&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000220a01">
"It'll be painful with you gone&, hearts will be broken&. But you're insisting that they'll be fine&, even though you're  hurting them?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000230a01">
"Even if the wounds heal&, it'll never be the same&. It's not like it's just their body&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000240a01">
"Isn't it the same for you? You came to the island to heal
 your wounds&, but you lost yourself when you saw Ryuuhou
 again&."

{	Fw("fw蒼葉_通常_worry2");}

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000250a01">
"Don't make me have to go through something like that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_shout2_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000260a02">
"&.&.&.Then what should I do?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000270a01">
"There's only one other option&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀参", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_worry3_l.png");
	Request("Ｃ/絵立絵雀参", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀参");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀参", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀参", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀参", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000280a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000290a01">
"You think you're losing control because of that tattoo&.
 But the one doing it is actually you&. That's a fact&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FwPro("fw蒼葉_通常_serious",11000,"fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000300a01">
"So you have to live your life with that tattoo&.
 As yourself&, Koujaku&.&.&. But&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000310a01">
"We&.&.I have to tell you something that has to do with you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀壱", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀参");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000320a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01a", 2000, 400, null);
//	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="Ｃ/絵演黒刺青五";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
Koujaku hangs his head&, trying to hold himself together&.

I feel like the tattoo at the base of his neck is actually growing weaker&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000330a01">
"No matter what you did&, or what you're burdened with&, the
 Koujaku I know will never change&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad2_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

	SetVolumeEX("SE01b", 2000, 400, null);
	$TattooNext="Ｃ/絵演黒刺青四";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000340a02">
"Aoba&.&.&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000350a01">
"If you lose sight of yourself&, I'll tell you over and over what the real Koujaku is like&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000360a01">
"I'll tell you that I always believed in him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01a", 2000, 400, null);
	$TattooNext="Ｃ/絵演黒刺青三";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);



	CreateTextureEX("Ｃ/絵立絵雀三", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad_l.png");
	Request("Ｃ/絵立絵雀三", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀三");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀三", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀三", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀三", 200, 1000, null, true);
	Delete("Ｃ/絵立絵雀二");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/8000370a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000380a01">
"That's why you shouldn't give in&, Koujaku&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000390a01">
"Don't give in to your past&, or your tattoo&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01b", 2000, 400, null);
	$TattooNext="Ｃ/絵演黒刺青二";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

	MoveCamera("Ｃ", 6000, 0, 0, 1000, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
The despair in Koujaku's face disappears&, and it begins to glow&.

The coiling black tattoo crumbles and peels off into 
nothing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01*", 2000, 0, null);
	$TattooNext="Ｃ/絵演黒刺青一";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/8000400a01">
"Koujaku&, I'm going to destroy you&. The past and the you
 who's holding you back&.&.&. I'm going to destroy them both&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("@Ｃ/絵演黒刺青*");
	WaitAction("@Ｃ", null);

	CreateEffectSP("絵演平面", 5000, Center, Middle, 1024, 576, "Plain");
	SetBlur("絵演平面", true, 3, 300, 80, false);

//※ぶわっと強い風が巻き起こり、世界にビキビキと盛大なヒビが入っていく
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	CreateTextureEXadd("絵演風圧", 4010, Center, Middle, "cg/ef/efクリアの歌声.jpg");
	SetBlur("絵演風圧", true, 3, 800, 80, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵演風圧", 0, 2200, 2200, null, true);

	Zoom("絵演平面", 3000, 1200, 1200, Dxl1, false);
	Zoom("絵演風圧", 3000, 15000, 15000, Dxl3, false);
	Fade("絵演風圧", 300, 300, Axl1, true);

	DrawTransition("絵演風圧", 3000, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", false);
	Fade("絵演風圧", 800, 0, null, false);
	Fade("絵演平面", 1300, 0, null, true);
	Delete("絵演平面");
	Delete("絵演平面");

	CreateSE("SE02","se擬音_精神_ひび01");
	MusicStart("SE02",0,700,0,2000,null,false);
	CreateColorEX("絵色白", 4000, "FFFFFF");
	CreateTextureSPadd("絵演暴露罅", 3990, Center, Middle, "cg/ef/effi暴露成功.png");
	Fade("絵演暴露罅", 0, 150, null, true);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(500);


//あきゅん「演出：現実世界へ」
//※バリーンと激しい音を立てて世界が壊れる
	CreateGlass(10000);
	SetVolumeEX("@dm*", 1000, 0, null);
	GoGlassCrash();
	Wait(1000);

//※蒼葉と紅雀、現実の世界へ戻る

//※次ファイル["dm1490.nss"]

}
