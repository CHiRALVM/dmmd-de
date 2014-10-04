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


scene dm5340.nss_MAIN
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
	#ev900白蒼葉化a=true;
	#bg304051_5_東江タワー研究エリア廊下01=true;
	#bg304052_5_東江タワー研究エリア廊下02=true;
	#bg304053_5_東江タワー研究エリア廊下03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5350.nss";

	//▼頭痛レベル設定
	$HALevel=4;

}


scene dm5340.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm016",0,450,true);

	PrintGO("上背景", 30000);

	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
This floor had a completely different atmosphere than the 
party hall&.

The gaudiness was gone&, and in its place was a cold&, 
lightly blue colored hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg304052_5_東江タワー研究エリア廊下02.jpg");
	Rotate("絵背景100", 0, @0, @180, 0, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	HAFade(2000, 0,true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/4000010a01">
"&.&.&.Haah&, haa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I have to keep moving&, some guards may still be coming 
after me&.

I want to keep moving but my headache keeps pounding 
harder and harder&.

I can't think straight&.

I took my meds earlier&, why aren't they working&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I shove my hands into my bag in search of my pills&, and 
when I find them&, I immediately hold up the case and pour 
its contents inside my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_ピルケース_流しこむ01");
	MusicStart("SE02",0,500,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
A number of them spill out of my mouth onto the floor&, and the case in my hand becomes empty&.

It's a really bad idea to take all of them at once&, but&.&.&.

All I want now is to make the pain stop&.

I dropped the empty case into my bag and slowly made my 
way down the white hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景101", 101, -479, -572, "cg/bg/l/bg304053_5_東江タワー研究エリア廊下03_l.jpg");
	Rotate("絵背景101", 0, @0, @180, 0, null, true);
	Delete("絵背景100");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Wild breaths escaped from my lips as I pulled myself along 
with my hand on the wall&.

It doesn't feel like the headache is calming down&.
My vision goes blurry and my throat goes dry&.

If anyone were to find me right now&, I'd be in trouble&.
But&.&.&. I need to keep pushing forward with all I have&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I dragged myself along&, and then heard the sound of a door opening&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵背景102", 100, Center, Middle, "cg/bg/bg304051_5_東江タワー研究エリア廊下01.jpg");
	Rotate("絵背景102", 0, @0, @180, 0, null, true);

	Move("絵背景101", 800, 0, -476, Dxl1, false);
	FadeDelete("絵背景101", 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
It was a type of door that cuts into the passageway&, and 
two men in white robes came out of it&.

&.&.&.Oh shit&.

I have to hide&, or get away somewhere&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm若者A_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000020e27">
"Hey&, over there&."

{	Fw("fwm若者B_医者_normal");}
//【研究員Ｂ】
<voice name="研究員Ｂ" class="研究員Ｂ" src="voice/dm53/4000030e28">
"Who's he?"

{	Fw("fwm若者A_医者_normal");}
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000040e27">
"A trespasser&.&.&.?"

{	Fw("fwm若者B_医者_normal");}
//【研究員Ｂ】
<voice name="研究員Ｂ" class="研究員Ｂ" src="voice/dm53/4000050e28">
"Call security&. Quickly&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/4000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Shit&.&.&.
I can't let myself get caught now&.&.&.!

I'm already this far&.&.&.

All of my efforts would be wasted&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 12000, "000000");

//※頭痛レベル：４
$HALevel=4;
//※ずきん、とひどい頭痛がする（白蒼葉）
//※心臓の鼓動、前よりも長くチラつく白蒼葉の幻影
	SetVolumeEX("@dm*", 100, 0, null);
	HAFade(2000, 0, false);
	Fade("絵色黒", 300, 1000, null, true);

	CreateTextureSP("絵演蒼葉", 200, Center, Middle, "cg/ev/ev900もう１人の蒼葉.jpg");
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/ev900もう１人の蒼葉.jpg",1000,1000);
	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Wait(500);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(500,true);

	Wait(500);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,30,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",2000,2000);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Wait(500);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(500,true);

	Wait(1000);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,30,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(500,true);

	Wait(1500);

	CreatePlainSP("絵板写", 12100);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵色黒");
	Delete("絵演*");

	CreateTextureSP("絵一枚絵", 500, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	FadeDelete("絵板写", 1500, null, true);

	HAFade(2000, 0, false);
	Wait(50);
	CreateColorEXsub("絵色黒", 5000, "WHITE");
	Fade("絵色黒", 100, 1000, null, true);
//
	Delete("絵一枚絵");

	Wait(500);

	FadeDelete("絵色黒", 500, null, true);

	Wait(1000);

//※人格チェンジ
	Fw("fw黒蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/4000070b01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※２人の研究員のもとへつかつかと歩いていく蒼葉。
	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	CreateTextureEX("絵一枚絵", 100, Center, Middle, "cg/ev/ev900白蒼葉化.jpg");#ev900白蒼葉化a=true;

	SetVolumeEX("SE*", 1000, 0, null);
	Fade("絵一枚絵", 1000, 1000, null, true);

//	Wait(1000);

	Fw("fwm若者A_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000080e27">
"H-Hey&, what the&.&.&."

{	Fw("fwm若者B_医者_normal");}
//【研究員Ｂ】
<voice name="研究員Ｂ" class="研究員Ｂ" src="voice/dm53/4000090e28">
"Don't move! I'm calling security!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵一枚絵", 3000, @0, 0, AxlDxl, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/4000100b01">
"You there&, don't move&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateTextureEXadd("絵演出", 1000, Center, 0, "cg/ev/ev900白蒼葉化.jpg");
	SetBlur("絵演出", true, 3, 500, 200, false);

	SetVertex("絵演出", 640, 128);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,300,0,1000,null,false);
	Fade("絵色白", 300, 1000, Axl2, false);
	Zoom("絵演出", 1000, 2000, 2000, Dxl2, false);
	Fade("絵演出", 300, 500, null, true);
	Wait(200);
	FadeDelete("絵色白", 300, Dxl1, false);
	FadeDelete("絵演出", 300, null, true);

	Wait(500);

	Fw("fwm若者A_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000110e27">
"&.&.&.!? My body won't move&.&.&.!"

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/4000120b01">
"Don't get in my way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm若者B_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【研究員Ｂ】
<voice name="研究員Ｂ" class="研究員Ｂ" src="voice/dm53/4000130e28">
"What the hell are you!?"

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/4000140b01">
"It's your unlucky day&."

{	Fw("fwm若者A_医者_normal");}
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000150e27">
"U-Uwahhh!"

{	DeleteFw();}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/4000160b01">
"I'll free you from your 'life' now&. I'll break it apart&.&.&. I'll smash your memories&, senses&, everything to bits&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	Fw("fwm若者B_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【研究員Ｂ】
<voice name="研究員Ｂ" class="研究員Ｂ" src="voice/dm53/4000170e28">
"Ah&, ahhhhhhhhh!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwm若者A_医者_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【研究員Ａ】
<voice name="研究員Ａ" class="研究員Ａ" src="voice/dm53/4000180e27">
"Uwahhhhhhhh!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉に意識が戻る

	ClearFadeAll(3000, true);

	Wait(1000);

//※次ファイル["dm5350.nss"]

}
