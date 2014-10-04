//<continuation number="130">
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


scene dm3470_vs.nss_MAIN
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
	#bg307041_5_バイクビル屋上バイク=true;
	#ev920ミンクと蒼葉バイク=true;
	#bg307031_5_バイクビル屋上=true;
	#bg304011_5_東江タワー全景=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3480_vs.nss";

}


scene dm3470_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg307031_5_バイクビル屋上");
	FadeBG(0,true);
	CreateTextureEX("絵背景", 3000, Center, Middle, "cg/bg/bg307031_5_バイクビル屋上.jpg");
	Fade("絵背景", 0, 1000, null, true);


//カメラ素材設定
	CreateCamera("Ｃ", -600, -200, 500);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/ev1", 50, Center, Middle, "cg/ev/ev920ミンクと蒼葉バイク_背景.jpg");
	SetShade("Ｃ/ev1", HEAVY);
	CreateTextureEX("Ｃ/ev1_2", 50, Center, Middle, "cg/ev/ev920ミンクと蒼葉バイク_背景.jpg");
	Zoom("Ｃ/ev1", 0, 5000, 5000, null, true);
	Zoom("Ｃ/ev1_2", 0, 5000, 5000, null, true);
	CreateTextureSPadd("Ｃ/ev3", 600, 800, 276, "cg/ev/ev920ミンクと蒼葉バイク_効果バーニア.png");
	CreateTextureSP("Ｃ/ev2", 600, Center, Middle, "cg/ev/ev920ミンクと蒼葉バイク_人物.png");
	CreateTextureSP("Ｃ/ev4", 600, Center, Middle, "cg/ev/ev920ミンクと蒼葉バイク_人物ブラー.png");
	CreateTextureEXadd("Ｃ/ev3_1", 600, 800, 276, "cg/ev/x/ev920ミンクと蒼葉バイク_効果バーニア_x01.png");
	Fade("Ｃ/ev4", 0, 500, null, true);
	CreateTextureEXadd("Ｃ/ev5", 600, -524, -330, "cg/ev/ev920ミンクと蒼葉バイク_効果ブラー.png");
	CreateTextureEX("Ｃ/back", 900, Center, Middle, "cg/bg/x/bg304072_5_東江タワーエレベーター_外空a_x01.png");
	Move("Ｃ/back", 0, @-500, @-500, null, true);
	Rotate("Ｃ/back", 0, @0, @0, 3, null,true);
	Zoom("Ｃ/back", 0, 3000, 3000, null, true);
	SetShade("Ｃ/back", HEAVY);
	Rotate("Ｃ/ev2", 0, @0, @0, -20, null,false);
	Rotate("Ｃ/ev4", 0, @0, @0, -20, null,false);

	Request("Ｃ/*", Smoothing);

	CreateMovieSP("km01", 1000, center, middle, true, true, "dx/mvk100.ngs");
	Rotate("km01", 0, @0, 180, 20, null,true);
	Zoom("km01", 0, 4000, 4500, null, true);

	CloudZoomSmokeSet01("けむ",3000,"cg/ef/effi暴露成功_ef01.png");


	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	CreateSE("SE環境","se環境_自然_風と木々01L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE環境",500,700,0,1000,null,true);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);





//バイク演出=================================

	SetVolumeEX("SE環境", 2000, 300, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The fresh air breezes along and brushes my cheeks&.

I see the sprawling floor of the roof and a night dark as 
black&.

Is there something here?

I watch Mink's hair blow in the wind as we walk down the 
rooftop and see a clump of black next to the water storage container&.

It's pretty large and is covered in a black cloth&.

Mink vigorously pulls off the cloth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Wait(600);

	CreateTextureEX("絵ＥＶ", 3100, Center, Middle, "cg/bg/bg307041_5_バイクビル屋上バイク.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
What was under it was a giant motorcycle&.

It's of rugged design&, tightly fitting Mink's character&.

Mink straddles into the seat&, and then pulls the ignition 
key out of his breast pocket&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_エンジンスタート");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ", 500, null, true);



	Wait(700);

	CreateSE("SE02","se乗物_改造バイク_エンジンふかす01");
	//アイドリング用の音
	CreateSE("SE03","se乗物_改造バイク_アイドリング01L");
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",2000,1000,0,1000,null,true);

	CreateMovieEX("mv1", 2000, 120, 170, true, true, "dx/mv0003集中線04_白.ngs");
	Zoom("mv1",0,5000,5000,null,true);

	CreateColorEX("white", 10000, "FFFFFF");

	CreateTextureEX("ev80", 2000, Center, Middle, "cg/ev/ev920ミンクと蒼葉バイク.jpg");
	SetBlur("ev80", true, 3, 500, 100, false);

	CreateTextureEX("bg90", 2000, 500, -400, "cg/ev/ev920ミンクと蒼葉バイク_背景.jpg");
	CreateTextureEX("ev90", 2000, Center, Middle, "cg/ev/ev920ミンク、バイク疾走_人物ミンク.png");
	SetBlur("ev90", true, 3, 400, 50, false);
	SetShade("bg90", HEAVY);
	Zoom("bg90", 0, 4000, 4000, null, true);
	CreateTextureEX("bg100", 9000, center, -200, "cg/bg/bg304011_5_東江タワー全景.jpg");#bg304011_5_東江タワー全景=true;
	Request("bg100", Smoothing);
	//SetBlur("bg100", true, 1, 400, 50, false);

	CreateTextureEX("garasu", 10000, center, middle, "cg/ef/effi暴露成功.png");
	Zoom("garasu", 0, 1200, 1200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016b]

He starts the engine and the displays and headlights turn 
on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/7000010a05">
"Get on&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000020a01">
"Huh?"

{	St("C",3740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/7000030a05">
"Hurry up&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000040a01">
"Isn't it a one seater?"

{	St("C",3740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/7000050a05">
"Just get on&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000060a01">
"Where do you want me to sit!?"

{	St("C",3740, @0,@0,"stミンク_通常_angry");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/7000070a05">
"Wherever you fit&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000080a01">
"Wherever I fit&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
How does this guy expect me to do this&.&.&.?!

But he looks like he's going to speed off soon&.

{

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,1000,0,1000,null,false);

}
I listen and walk up to the bike&, jumping unwillingly onto the back of the seat&.

It's too small and narrow&, I can't keep on if I don't hold on to Mink&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：ブォン！とバイク発進
	CreateSE("SE20","se乗物_改造バイク_エンジンふかす01");
	CreateSE("SE21","se乗物_改造前バイク_走り去る");
	MusicStart("SE20",0,700,0,1000,null,false);
	SetVolumeEX("SE03", 1000, 0, null);

	CreateTextureEX("絵背景yure", 3000, Center, Middle, "cg/bg/bg307031_5_バイクビル屋上.jpg");

	MusicStart("SE21",0,700,0,1000,null,false);
	Fade("絵背景yure", 0, 1000, null, true);
	Shake("絵背景yure", 500, 0, 10, 0, 0, 1000, null, false);


{	Fw("fw蒼葉_通常_shout2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000090a01">
"Whoaa!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_急加速01");
	CreateSE("SE11","se乗物_改造バイク_走行01L");
	CreateSE("SE12","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE11",2000,400,0,700,null,true);
	Shake("絵背景yure", 500, 0, 10, 0, 0, 1000, null, false);
	Wait(500);
	MusicStart("SE12",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Mink suddenly takes off&. I cling to him&, thinking I'm 
about to fall&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000100a01">
"Wai&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_スピン01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I was expecting it&, but this is way too wild of a ride&.&.&.!
I'm going to get thrown off!

Mink circles around the top for who knows how many times&.

What? What is he doing?
What is he trying to do?

Both the questions and my stomach are starting to churn 
around&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000110a01">
"Huh?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造前バイク_急ブレーキ01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Mink suddenly revs up on the handles and drives through 
the rooftop in a straight line&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se乗物_改造バイク_ターボスタート01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwミンク_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/7000120a05">
"You better clench your teeth for this&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	CreateSE("SE31","se乗物_改造バイク_スピン01");
	CreateSE("SE32","se乗物_改造前バイク_走り去る");

	SetVolumeEX("SE11", 1000, 100, null);

	MusicStart("SE31",0,700,0,1000,null,false);
	MusicStart("SE32",0,700,0,1000,null,false);

	Shake("絵背景yure", 50000000, 0, 3, 0, 3, 1000, null, false);

	Wait(1200);
	SetFrequency("SE11", 6000, 1000, AxlDxl);
	SetVolumeEX("SE11", 3000, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
A rush of wind hits me and the violent vibrations almost 
makes me bite my tongue off&.

The bike rides along the fenceless rooftop and without 
stopping-



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(32);

	SetVolumeEX("SE11", 1000, 0, null);

	Request("Ｃ/*", Smoothing);
	Rotate("Ｃ/ev2", 0, @0, @0, -20, null,true);
	Rotate("Ｃ/ev4", 0, @0, @0, -20, null,true);
	Shake("Ｃ/ev2", 5000000, 2, 3, 0, 0, 1000, null, false);
	Shake("Ｃ/ev4", 5000000, 2, 2, 0, 0, 1000, null, false);
	Shake("Ｃ/ev3", 5000000, 2, 4, 0, 0, 1000, null, false);
	Shake("Ｃ/ev3_1", 5000000, 12, 10, 0, 0, 1000, null, false);

	MoveFTP1("@Ｃ/*",2000,10,10);

	CreateSE("SE00","se乗物_改造バイク_走行01L");
	CreateSE("SE01","se乗物_改造バイク_ターボスタート01");
	CreateSE("SE02","se乗物_改造バイク_急加速01");
	CreateSE("SE03","se乗物_改造バイク_超加速01");
	CreateSE("SE04","se乗物_改造バイク_エンジンふかす02");
	CreateSE("SE10","se物体_ガラス_割れる01");
	CreateSE("SE環境","se環境_自然_風と木々01L");



	SetVolumeEX("SE11", 1000, 0, null);
	MusicStart("SE00",1000,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);

//	CloudZoomSmokeStart01(3000,50,200,1000,900,750,300,850,330,Dxl1);
	CloudZoomSmokeStart01(500,30,1000,4000,900,-2500,500,1050,400,Dxl1);
	MoveCamera("Ｃ", 4000, -300, -200, 500, Dxl2, false);

	Fade("mv1", 0, 200, null, true);

	FadeDelete("絵背景", 500, null, false);
	Fade("絵背景yure", 500,0, null, true);
	Delete("絵背景yure");
	Wait(3000);

	SetVolumeEX("SE01", 500, 0, null);
	SetVolumeEX("SE00", 5000, 0, null);

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,500,0,1500,null,false);
	MusicStart("SE環境",3000,700,0,1000,null,true);
	MoveFTP1stop();
	Rotate("Ｃ/ev2", 400, @0, @0, 5, Axl1,false);
	Rotate("Ｃ/ev4", 400, @0, @0, 5, Axl1,false);
	Move("Ｃ/ev2", 4000, @0, @-100, Dxl1, false);
	Move("Ｃ/ev4", 4000, @0, @-100, Dxl1, false);
//	MoveCamera("Ｃ", 15000, 200, 50, 300, null, false);

	CloudZoomSmokeDelete01(500);

	Fade("mv1", 300, 0, null, false);
	Fade("Ｃ/ev3_1", 200, 1000, null, false);
	Zoom("Ｃ/ev1*", 300, 11000, 11000, Dxl2, false);
	Fade("Ｃ/ev1_2", 300, 1000, null, false);
	Fade("Ｃ/ev5", 400, 1000, Axl2, false);
	Fade("Ｃ/back", 300, 1000, null, false);
	MoveCamera("Ｃ", 500, -300, -100, 150, AxlDxl, true);

	MoveCamera("Ｃ", 1400, -350, -80, 150, null, false);
	Move("ev80", 15000, @200, @200, null, false);
	Wait(600);
	Fade("ev80", 800, 1000, null, false);

	Wait(1500);

	Delete("mv1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
&.&.&.We soar&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/7000130a01">
"Whuaa&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
It felt like time had stopped for a second&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※数秒の間

	Wait(1000);


//※ＳＥ：がっしゃーん！！と派手にタワーの窓を割ってバイク侵入

	Shake("Ｃ/ev2", 0, 2, 3, 0, 0, 1000, null, false);
	Shake("Ｃ/ev4", 0, 2, 2, 0, 0, 1000, null, false);
	Fade("Ｃ/ev3_1", 4000, 0, Axl2, false);
	Move("Ｃ/ev3*", 6000, @0, @-1100, Axl1, false);
	Move("Ｃ/ev2", 6000, @0, @300, Axl1, false);
	Move("Ｃ/ev4", 6000, @0, @300, Axl1, false);
	Move("Ｃ/back", 6000, @0, @600, Dxl2,false);
	Move("Ｃ/ev5", 6000, @400, @0, Dxl1, false);
	Rotate("Ｃ/ev3*", 6000, @0, @0, -60, Axl1,false);
	Rotate("Ｃ/ev2", 6000, @0, @0, -60, Axl1,false);
	Rotate("Ｃ/ev4", 6000, @0, @0, -60, Axl1,false);
	Rotate("Ｃ/ev5", 6000, @0, @0, -60, Axl1,false);
	Fade("Ｃ/ev5", 2000, 0, null, false);
	MoveCamera("Ｃ", 7000, -800, 300, 100, null, false);

	Fade("ev80", 500, 0, null, false);

	Wait(2000);

	Move("bg90", 1500, @-50, @50, null, false);
	Move("ev90", 1500, @-200, @400, null, false);

	Wait(500);

	Shake("ev90", 50000, 2, 2, 2, 2, 1000, null, false);

	Fade("bg90", 0, 1000, null, false);
	Fade("ev90", 0, 1000, null, true);

	Wait(800);

	Fade("bg90", 0, 0, null, false);
	Fade("ev90", 0, 0, null, true);

	Wait(500);

	SetVolumeEX("SE環境", 1000, 0, null);

	Zoom("Ｃ/ev1*", 500, 40000, 40000, Axl2, false);
	Zoom("Ｃ/ev2", 500, 4000, 4000, Axl2, false);
	Zoom("Ｃ/ev4", 500, 4000, 4000, Axl2, false);
	Zoom("Ｃ/ev5", 500, 4000, 4000, Axl2, false);
	Zoom("Ｃ/back", 500, 20000, 20000, Axl2, false);
	Move("Ｃ/back", 500, @4000, @0, Axl2, false);
	Move("Ｃ/ev1*", 500, @200, @0, Axl2, false);
	Move("Ｃ/ev2", 500, @2500, @-300, Axl2, false);
	Move("Ｃ/ev3*", 500, @3500, @-800, Axl2, false);
	Move("Ｃ/ev4", 500, @2500, @-300, Axl2, false);
//	MoveCamera("Ｃ", 500, -1000, 100, 500, Axl2, false);

	Move("bg100", 600, @0, @-1000, Axl3, false);
	Zoom("bg100", 750, 10000, 10000, Axl3, false);
	Fade("bg100", 300, 1000, null, true);

//	Wait(100);


	Fade("white", 300, 1000, Axl1, true);

	Wait(200);

	MusicStart("SE10",0,700,0,1000,null,false);
	Shake("garasu", 1000, 15, 10, 0, 0, 1000, null, false);
	Fade("garasu", 0, 1000, null, true);
	Wait(200);
	CreateColorSP("絵黒幕", 15000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


//※ＳＥ：ぎゅりぎゅりとバイクのタイヤが床を擦る音とブレーキ音
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	CreateSE("SE02","se乗物_改造バイク_着地01");
	CreateSE("SE03","se乗物_改造バイク_エンジンふかす02");
	CreateSE("SE04","se乗物_改造バイク_急加速01");
	CreateSE("SE05","se物体_物入れ_散らかる01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(200);
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	MusicStart("SE03",0,700,0,900,null,false);
	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE05",0,1000,0,900,null,false);

	Wait(1500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Impossible&.&.&.

This is just impossible&.&.&.!

I hear the loud sound of glass shattering&, my body taking 
a hell of an impact&.

I open my eyes after closing them for what felt like an 
eternity.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※次ファイル["dm3480_vs.nss"]

}
