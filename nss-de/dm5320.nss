//<continuation number="110">
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


scene dm5320.nss_MAIN
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
	#bg304141_5_東江タワーパーティホール無人=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5330.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm5320.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304141_5_東江タワーパーティホール無人");
	FadeBG(500,true);

	Delete("上背景");

//覇：この二つ顔窓なしにしてますが、必要ならコメントアウト外し手下さい
//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000010a01">
"――――!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵黒幕", 4000, "000000");
	CreateColorSPmul("絵薄黒", 3000, "000000");
	DrawTransition("絵窓/絵黒幕", 0, 0, 200, 1000, null, "cg/data/circle_02_00_1.png", true);

	CreateTextureSP("絵背景", 1000, Center, -85, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");
	CreateTextureSP("絵背景弐", 500, Center, -85, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");

	SetShade("絵背景", MEDIUM);

	Fade("絵薄黒", 0, 300, null, true);

	FadeDelete("絵色黒", 2000, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景", 500, null, false);
	FadeDelete("絵薄黒", 500, null, false);

	DrawTransition("絵窓/絵黒幕", 500, 200, 0, 1000, Dxl1, "cg/data/circle_02_00_1.png", true);
	Delete("絵窓/絵黒幕");
	Delete("絵窓*");

	Wait(500);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000030a01">
"&.&.&.Ah&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
What? I just&.&.&.

Was out&.&.&.

Did I fall asleep?
Here?

But&, that really was a bad dream&.&.&.

My heart is still pounding&.
And I'm completely drenched in sweat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――――　I want to destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵色黒", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.Those words suddenly surface in my mind&.

I want to destroy something?

But what?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：３
//※演出：ずきん、と頭痛
$HALevel=3;
	HAFade(2000, 0,ture);

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000040a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
My head hurts&.
I need to take my meds&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm018",0,450,true);

	Move("絵背景弐", 1000, @0, @-50, Dxl1, false);
	FadeDelete("絵背景弐", 1000, null, true);

	DrawDelete("絵窓/絵黒幕", 1000, 500, null, "circle_02_00_1", true);
	Delete("絵窓/絵黒幕");

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000050a01">
"&.&.&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
&.&.&.I finally register what is going on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演出", 1100, -768, InBottom, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");

	FadeDelete("絵板写", 500, null, false);
	Move("絵演出", 2000, -256, @0, AxlDxl, true);

	FadeDelete("絵演出", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
All of the extravagant guests in the hall&.&.&.
They've all collapsed onto the ground&.

There's not a single one left standing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000060a01">
"&.&.&.Why&.&.&. What&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I can't find any words to describe this bizarre display&.

What happened here&.&.&.?

I know I went in here looking for Ren&, and then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 9000);

//※強化予定
//※ずきんと強い頭痛。見えそうで見えない白蒼葉の幻影
	CreateTextureSP("絵背景", 5000, Center, Middle, "cg/bg/bg304141_5_東江タワーパーティホール無人.jpg");

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",4102);
	TemptationAobaSet("絵演黒蒼葉誘惑",4100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 4110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	Fade("絵背景", 0, 0, null, true);
	Delete("絵板写");

//※頭痛レベル：４
$HALevel=4;
	HAFade(7000, 0,false);

	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,true);
	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵色黒");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000070a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
My memories flicker along with my pounding headache&.

But I can only remember it vaguely&, like it was only a 
dream&.

Why was I lying around here?

What in the world happened&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵背景");

	CreateTextureEX("絵背景", 100, Center, InBottom, "cg/bg/m/bg304141_5_東江タワーパーティホール無人_m.jpg");
	Move("絵背景", 0, @-100, @0, null, true);
	Move("絵背景", 1000, @-50, @0, Dxl1, false);
	Fade("絵背景", 1000, 1000, null, true);

	Wait(100);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵窓", 2000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓/絵背景", 1010, Center, InBottom, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");
	CreateTextureSP("絵窓/絵立絵", 1101, 1024, 0, "cg/st/x/stAM蓮_通常_normal_x03.png");
	CreateTextureSP("絵窓/絵立絵霞", 1100, 1024, 0, "cg/st/x/stAM蓮_通常_normal_x03.png");

	Request("絵窓/絵立絵*", Smoothing);
	Request("絵窓/絵背景", Smoothing);

	SetShade("絵窓/絵背景", MEDIUM);
	SetShade("絵窓/絵立絵霞", LIGHT);

	DrawTransition("絵窓/絵立絵", 0, 0, 380, 200, null, "cg/data/circle_13_00_0.png", true);

	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);
	Rotate("絵窓/絵立絵*", 0, @0, @0, @30, null,true);

	Move("絵窓/絵背景", 0, -330, -1150, Dxl1, true);
	Move("絵窓/絵立絵*", 0, 210, 60, Dxl1, false);

	Move("絵窓/絵背景", 500, @-50, @0, Dxl1, false);
	Move("絵窓/絵立絵*", 500, @-100, @0, Dxl1, false);
	DrawDelete("絵板写", 500, 100, null, "slide_05_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I look around the hall&, and see a fallen bundle of fur a 
little farther off&.

That's&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵窓/絵*");
	Delete("絵窓*");

	FadeDelete("絵背景", 500, null, false);
	DrawDelete("絵板写", 100, 100, null, "slide_05_01_1", true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000080a01">
"Ren!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -818, -572, "cg/bg/l/bg304141_5_東江タワーパーティホール無人_l.jpg");
	Move("絵背景100", 500, -918, -572, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I get up&, forgetting about my headache&, and run over to 
Ren&.

I hold up his limp body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000090a01">
"Hey! Ren! Are you okay!? Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(1000);

	CreateSE("SE02","se物体_コイル_アラート");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I try to start Ren up&.
But it doesn't work&.

No matter how many times I try&, his eyes won't open&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000100a01">
"&.&.&.This can't be real&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
My face turns pale&.

I thought that maybe it was because of his weird condition&. 

But&, all of a sudden&, he&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/2000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I push away my emotions and put Ren into my bag&.

Now I have an even more urgent reason to find a way to fix 
Ren&, but staying around here is dangerous&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5330.nss"]

}
