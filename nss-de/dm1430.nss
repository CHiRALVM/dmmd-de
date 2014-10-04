//<continuation number="220">
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


scene dm1430.nss_MAIN
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
	$GameName = "dm1440scr.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm1430.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	//OnBG(10,"bg503011_1_紅雀自宅紅雀自室");
	//FadeBG(0,true);

	//St("C",740, @0,@0,"st紅雀_バーサク正気_normal");
	//FadeSt("C",0,true);

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

	CreateTextureEX("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_worry3_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	MoveCamera("Ｃ", 0, @0, -50, 2000, null, true);

	FadeDelete("上背景", 1000, null, true);

	SoundPlay("@dm015",2000,450,true);

//※もとの和室に戻り、バーサクモードで正気を取り戻している紅雀が立っている

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/3000010a01">
"Koujaku&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I return to the Japanese-style room&, and Koujaku is 
standing in front of me&.

The tattoo is eating at him still&, but the light is back 
in his eyes&.

But he looks miserable&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 1800);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000020a02">
"I thought it was a lie when I came back&. That it was all a bad dream&. But it wasn't&. When I realized that&, that's
 when I really went insane&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000030a02">
"I thought I'd go mad&. That I should die too&. That it'd be
 better if I did&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_cry2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000040a02">
"I didn't think I deserved to live anymore for killing my
 mother&.&.&. So&.&.&. I tried to kill myself with my sword&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000050a02">
"I thought that was the right thing to do&. That's what I
 thought&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad3_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000060a02">
"But I couldn't do it&. No matter what&.&.&. For some reason&, I thought of you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Koujaku's face warps&, as if trying to endure the pain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000070a02">
"The thought of your smile from when we were kids made me
 start to cry&. It was bitterly painful&.&.&. I hated it&,
 it hurt&, but I couldn't have helped it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_cry2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000080a02">
"Even though I honestly wanted to die&.&.&. I wanted to live
 just as much&. I didn't know what I should've done&.&.&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000090a02">
"In the end&, I went back to the island&. Without being able
 to die&, the second worst option&.&.&. I just had to see you
 again&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000100a02">
"I thought something would change if I saw you&, that it'd
 be easier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_worry3_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000110a02">
"When we reunited&, I was astonished at how you grew up&, but your smiling face never changed&.&.&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000120a02">
"So I thought I'd be fine after all&. If I was here with you on the island&, I could wash away the memories and my 
 past&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_cry2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000130a02">
"But it was impossible&. As much as I wished for peace&, I
 suddenly remembered&. That day splattered in blood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000140a02">
"That bastard&, sneering&.&.&. even Ryuuhou showed up&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000150a02">
"The moment I saw him I thought 'Yeah&, I can't just run 
 away now&.' I'd kill him and then myself&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000160a02">
"I knew then that nothing could stop me from killing him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000170a02">
"Although I already decided that I'd go to hell anyway&, I
 decided that some revenge would be fine&." 

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000180a02">
"My wish to kill Ryuuhou was fufilled&. But my past couldn't change&, and this tattoo on my back will never disappear&,
 either&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000190a02">
"I'd rather have Ryuuhou's blood on my hands&, if any&. So I
 thought&.&.&. it'd be a good idea&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);

	CreateTextureSP("Ｃ/絵立絵雀壱", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_think2_l.png");
	Request("Ｃ/絵立絵雀壱", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀壱");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀壱", 0, @0, $KJSetPos, null, true);
	Fade("Ｃ/絵立絵雀壱", 0, 1000, null, true);
	Zoom("Ｃ/絵立絵雀壱", 0, 250, 250, null, true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/3000200a02">
"I'd stop standing around and fall into sin&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	CreatePlainSP("絵板写", 18000);
	Wait(16);

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

	MoveCamera("Ｃ", 0, 0, 70, 2000, DxlAuto, false);

	CreateSE("SE01a","se擬音_刺青_もぞつく01L");
	MusicStart("SE01a",2000,600,-500,800,null,true);
	$TattooNext="Ｃ/絵演黒刺青一";
	DrawEffect($TattooNext, 20000, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 0, @0, @-500, DxlAuto, true);
	Move($TattooNext, 10000, @0, @-150, DxlAuto, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);

	MoveCamera("Ｃ", 2000, 0, 90, 2000, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Koujaku hangs his head low as a clump of black
begins coiling up his legs&.

Koujaku&.&.&.

This was Koujaku's real past&.
The part he left out when he spoke with me&.

&.&.&.No&, he couldn't say it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01b","se擬音_刺青_もぞつく01L");
	MusicStart("SE01b",2000,600,500,1200,null,true);
	$TattooNext="Ｃ/絵演黒刺青二";
	$TattooBack="Ｃ/絵演黒刺青一";
	DrawEffect($TattooNext, 5000, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	//Fade($TattooBack, 8000, 0, null, false);
	FadeDelete("@Ｃ/絵演黒刺青一", 8000, null, false);

	MoveCamera("Ｃ", 8000, 0, 55, 2000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
How would you explain this kind of past?
How would the other person react?

Of course I'd worry since Koujaku and I have such a deep 
relationship&.

Inside of me&, I feel an intensely complicated feeling take over me&.

It can't be the shock from Koujaku's real past&.

How would I put it into words&.&.&. I don't know&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="Ｃ/絵演黒刺青三";
	$TattooBack="Ｃ/絵演黒刺青二";
	DrawEffect($TattooNext, 5000, "MiddleWave", 500, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青二", 8000, null, false);

	MoveCamera("Ｃ", 8000, 0, 20, 2000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059a]
With such a heavy past&, how could you have listened to 
what frivolous things people would say?

Koujaku looks at me like he's given up on everything&.

A black tattoo crawls up his arms&, even reaching his 
stomach&.

Koujaku&.&.&. accepts the tattoo eating at him&.

&.&.&.No&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE01b", 2000, 900, null);
	$TattooNext="Ｃ/絵演黒刺青四";
	$TattooBack="Ｃ/絵演黒刺青三";
	DrawEffect($TattooNext, 5000, "MiddleWave", 700, 20, DxlAuto);
	Fade($TattooNext, 500, 950, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青三", 8000, null, false);

	MoveCamera("Ｃ", 8000, 0, -15, 2000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Koujaku has hurt countless people&, and he even lost his 
mother beacause of it&.

But this isn't actually Koujaku's fault&.
It's the fault of the conspiracy between Ryuuhou and Toue 
with that tattoo&.

Even if I told that to Koujaku&, he'd still never stop 
blaming himself&.

You can't change what you've done&.
It's all what happened&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01a", 2000, 900, null);
	$TattooNext="Ｃ/絵演黒刺青五";
	$TattooBack="Ｃ/絵演黒刺青四";
	DrawEffect($TattooNext, 5000, "MiddleWave", 1000, 20, Dxl3);
	Fade($TattooNext, 500, 1000, null, false);
	Move($TattooNext, 5000, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 800, 250, 250, Dxl3, false);
	FadeDelete("@Ｃ/絵演黒刺青四", 8000, null, false);

	MoveCamera("Ｃ", 8000, 0, -50, 2000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
&.&.&.But&.
I don't want to lose Koujaku&.

Be it because of my ego&, or anything else&.
I can't sit here and watch Koujaku die silently&.

Koujaku is still caged by Ryuuhou&, his tattoo&, his 
memories&.

His wounds are too deep&.&.&.

He even sheds blood now&, and Koujaku can't handle it alone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorEX("絵演黒幕", 9000, "000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
If I leave him alone&, it'll swallow him whole&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「演出：勝手にクリック待ち入れました、問題あったら取って下さい」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
So&,<k><?>
 before that happens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 200, 1, null);
	SetVolumeEX("@dm*", 200, 0, null);
	Fade("絵演黒幕", 200, 1000, null, true);
	MoveCamera("Ｃ", 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070c]
　――Destroy&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵演黒幕");

//あきゅん「演出：白蒼葉の誘惑」
	CreateColorEX("絵色黒", 12000, "000000");
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",11102);
	TemptationAobaSet("絵演黒蒼葉誘惑",11100,-256,-231,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 11110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

//※ずきん、と頭が痛む
//※頭痛レベル：３
	//頭痛エフェクト(0)
$HALevel=3;
	HAFade(9010, 0,true);
	//Wait(500);

	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(150,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
　――――　Destroy　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 0, 1000, null, true);
	TemptationAobaSet("絵演黒蒼葉誘惑",11100,-501,30,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	Fade("@絵演黒蒼葉誘惑*", 0, 0, null, true);
	Fade("絵色黒", 300, 0, null, true);


//※頭痛レベル：４
//※ずきん、ずきん、と頭が痛む
	//頭痛エフェクト(0)
$HALevel=4;
	HAFade(9010, 0,true);
	Wait(50);
	//頭痛エフェクト(0)
	HAFade(9010, 0,false);
	//Wait(50);

	Fade("絵色黒", 0, 1000, null, true);
	Fade("@絵演黒蒼葉誘惑*", 0, 1000, null, true);
	Fade("@絵演黒蒼葉誘惑黒隠", 0, 0, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(150,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
　――――　Destroy him　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	FadeDelete("絵色黒", 1000, null, true);

	SetVolumeEX("SE01*", 4000, 400, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
　All I can do with Scrap is 'Destroy'&.

So&, I'll do just that&.
I'll destroy the wounds entrapping Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(9010, 0,true);
	Wait(50);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/3000210a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く02");
	MusicStart("SE01",0,700,0,800,null,true);
	MoveCamera("Ｃ", 3000, @0, -65, 3000, DxlAuto, true);
	SetVolumeEX("SE01", 300, 0, null);

	Wait(300);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("Ｃ/絵立絵雀弐", 500, Center, 576, "cg/st/l/st紅雀_バーサク暴露_sad2_l.png");
	Request("Ｃ/絵立絵雀弐", Smoothing);
	$YScale=ImageVertical("Ｃ/絵立絵雀弐");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("Ｃ/絵立絵雀弐", 0, @0, $KJSetPos, null, true);
	Zoom("Ｃ/絵立絵雀弐", 0, 250, 250, null, true);
	Fade("Ｃ/絵立絵雀弐", 600, 1000, null, true);
	Delete("Ｃ/絵立絵雀壱");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
I walk up to Koujaku and grab his shoulders with both of 
my hands&.

He slowly raises his head&, and looks at me with pitiful 
eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/3000220a01">
"Koujaku&.&.&. Don't give in!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE00","se擬音_効果_力蒼葉01");
	Request("SE00", Lock);
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Wait(1000);

//※次ファイル["dm1440scr.nss"]

}
