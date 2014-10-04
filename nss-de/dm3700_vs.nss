//<continuation number="400">
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


scene dm3700_vs.nss_MAIN
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
	#bg304051_5_東江タワー研究エリア廊下01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3710.nss";

}


scene dm3700_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);

	CreateSE("SE01","se乗物_改造バイク_エンジンふかす02");//あきゅん「ＳＥ：se乗物_改造バイク_エンジンふかす02」
	MusicStart("SE01",1000,700,0,1000,null,false);

	Wait(1000);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);

	SoundPlay("@dm008",0,450,true);

//※場面切替／蒼葉視点

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000010a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se乗物_改造バイク_着地01");//あきゅん「ＳＥ：se乗物_改造バイク_着地01」
	MusicStart("SE01",1000,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

	CreateSE("SE11","se乗物_改造バイク_走行01L");//あきゅん「ＳＥ：se乗物_改造バイク_走行01L」
	MusicStart("SE11",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The force of this bike is going to throw me right off&.&.&.!

I tightly clasp the grip as the shocks from going down the stairs hit me&.

&.&.&.Mink must've already met Toue&.

The thought flickers in the corner of my brain so many 
times&.

Thinking about it as much as I can&, I concentrate on which direction I'm going&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※バイクの勢い、ちょっと緩む
//あきゅん「ＳＥ：se乗物_改造バイク_スピン01」
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE11", 300, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	SetVolumeEX("SE11", 4000, 0, null);
	SetFrequency("SE11", 2000, 500, null);
	DrawDelete("絵黒幕", 250, 100, null, "slide_02_01_0", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I ease up the speed when I reach the floor&.
This is definitely the floor the rest of the members were 
on&.

Right now they're even farther down&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：熱ビーム音
//あきゅん「ＳＥ：se戦闘_防衛_発射01」
	CreateSE("SE01","se戦闘_防衛_発射01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_防衛01.jpg");
	Zoom("絵演効果", 0, 1050, 1050, null, true);
	FadeFFR2("絵演効果", 0,1000, 200, 0, 0, 50,null, true);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000020a01">
"!"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000030b12">
"Danger!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_急加速01");//あきゅん「ＳＥ：se乗物_改造バイク_急加速01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("絵演*");

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_03_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Something flew at me from behind&, and the bike took off to 
avoid it on its own&.

//※じゅわーと壁が溶ける音
{	CreateSE("SE01","se擬音_水_蒸発硫酸01");
	MusicStart("SE01",0,500,0,2000,null,false);}
I'm astonished when I turn my head around&.
The walls are melting down&.

What the&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演", 1100, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがる.jpg");
	Fade("絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
When I look down the stairs&, I see a dog standing there&.

It opens its mouth like it's yawning&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_防衛_開口01");//あきゅん「ＳＥ：se戦闘_防衛_開口01」
	MusicStart("SE01",0,700,0,1000,null,false);

//	CreateTextureSP("絵演弐", 1080, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがるa.jpg");
	CreateTextureSP("絵演参", 1090, Center, Middle, "cg/ev/l/evf03防衛ＡＭ立ちふさがるa_アップ_l.jpg");

	Move("絵演参", 500, @0, 0, Dxl1, false);
	FadeDelete("絵演", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The mouth continues to open as the long barrel of a gun 
begins to reach out of it&.

&.&.&.This is bad&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：熱ビーム音
	CreateSE("SE01","se戦闘_防衛_発射01");//あきゅん「ＳＥ：se戦闘_防衛_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_防衛01.jpg");
	Rotate("絵演効果", 0, @0, @180, @0, null,true);
	Zoom("絵演効果", 0, 1050, 1050, null, true);
	FadeFFR2("絵演効果", 0,1000, 200, 0, 0, 50,null, true);

	CreateSE("SE02","se乗物_改造バイク_スピン01");//あきゅん「ＳＥ：se乗物_改造バイク_スピン01」
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演*");
	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	Zoom("@OnBG*", 0, 1050, 1050, null, true);
	Rotate("@OnBG*", 0, @0, @180, @0, null,true);
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I work the bike and barely escape a second time&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000040a01">
"What the hell was that!?"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000050b12">
"They're specialized defense Allmates&. They're not on the
 market&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000060a01">
"Allmates&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「演出：ミンクとのシーンをフラッシュバック。認識させない程度の速さで」
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");

	CreateTextureSP("絵背景", 1000, -1024, Middle, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	St("C",1740, @0,@0,"buミンク_通常_serious");
	FadeSt("C",0,true);

	Fade("絵フラッシュ白", 0, 500, null, true);

	Wait(50);
	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵背景");
	DeleteAllSt(0,true);

	FadeDelete("絵フラッシュ白", 50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Somehow I'm taken aback&.
&.&.&.What?

We were just talking about that&.&.&.

&.&.&.Oh yeah&. Ren&.

The program Mink told me to put into Ren&.

They had specialized Allmates in the tower&, so in order to break that&, we&.&.&.

So that's what it was&.

Which means&, if I was to use that program&, would I be able 
to stop it?

But&, then Ren would be&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000070b12">
"Aoba&, use that blue one&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000080a01">
"But&.&.&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000090b12">
"We can't spare any time&. There are even more defense
 Allmates here&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演", 1100, Center, -1, "cg/ev/l/evf03防衛ＡＭ立ちふさがるb_l.jpg");

	CreateSE("SE01","se動物_足音_歩く防衛一歩01");
	CreateSE("SE02","se動物_足音_歩く防衛一歩01");
	CreateSE("SE03","se動物_足音_歩く防衛一歩01");

	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
	MusicStart("SE02",0,500,0,1000,null,false);
	Fade("絵演", 500, 1000, null, true);
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Towards the staircase I see more defense Allmates 
approaching&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演",200,null,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000100a01">
"&.&.&.&.&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000110b12">
"We're Allmates&. We're there to be useful to our partner&.
 We don't need human emotions&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000120b12">
"We aren't alive&, but humans are&. If you were to die&, that
 blue Allmate wouldn't have been able to fufill that
 obligation&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000130a01">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I muster enough strength to reply&, go into my bag&, and 
activate Ren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm37/0000140a06">
"Aoba&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000150a01">
"Ren&.&.&. I'm sorry&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm37/0000160a06">
"Are you going to use the program?"

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000170a01">
"&.&.&.I'm sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm37/0000180a06">
"There's nothing for you to apologize for&, Aoba&. This is my duty&. Take it to the network connector for me&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000190a01">
"&.&.&.!"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000200b12">
"I'll take you to where the connector is&. Hold on&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_急加速01");//あきゅん「ＳＥ：se乗物_改造バイク_急加速01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_02_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
The bike starts on its own&.

{
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	MusicStart("SE01",0,1000,0,1000,null,false);
}
We go down the stairs and enter a floor&, then stop down a 
hallway&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



{	Fw("fwAMトリ_バイク_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000210b12">
"It's under that wall&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000220a01">
"Got it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I get off the bike and remove the cover off of the 
connector&.

{
	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I take out Ren from my bag and expose his connector on his belly covered in fur&.

Then I open the cover on the network connector and pull 
out the cables&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000221a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮差込01");//あきゅん「ＳＥ：se動物_動作_蓮差込01」
	MusicStart("SE01",0,500,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
&.&.&.It fastens to Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm37/0000230a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
His body starts to shake&.

Is it working&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演前", 1100, Center, -50, "cg/ev/m/evf03防衛ＡＭ立ちふさがる_アップ_m.jpg");
	Move("絵演前", 0, @60, @0, null, true);

	CreateSE("SE00","se戦闘_動作_跳躍低01");

	Move("@OnBG*", 200, -1024, @0, Axl1, false);

	MusicStart("SE00",0,700,0,1500,null,false);
	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Fade("絵演前", 0, 1000, null, true);

	Move("絵演前", 300, @-60, @0, Dxl1, false);
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
I look over my shoulder and see a dog type Allmate 
chasing after us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_防衛_開口01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演", 1100, Center, -50, "cg/ev/m/evf03防衛ＡＭ立ちふさがるa_アップ_m.jpg");
	FadeFFR2("絵演", 0,1000, 200, 0, 0, 40,null, true);
	Move("@OnBG*", 0, 0, @0, Axl1, false);
	Delete("絵演前");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
They aren't stopping&, and they're firing melting hot beams from their mouths&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Will it work&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000240a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Then&, Ren&.&.&.

I desperately hold in a frustrated cry&.

Shit&.&.&.!

Like this&, we'll have to break out of here with just sheer strength&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：ひゅうん……と電源が落ちるような音（防衛オールメイト）
	CreateSE("SE04","se戦闘_防衛_ダウン01");//あきゅん「ＳＥ：se戦闘_防衛_ダウン01」

	CreateTextureEX("絵ズーム2", 2000, -393, -50, "cg/ev/l/evf03防衛ＡＭ立ちふさがるa_アップ_l.jpg");

	CreateStencil("マスク１",2100,center,50,128,"cg/ef/effi暴露成功_ef01.png",false);
	CreateColor("マスク１/色１", 2100, 0, 0, 1024, 576, "RED");
	Fade("マスク１/色１", 0, 0, null, true);
	Request("マスク１/色１", MulRender);


	CreateStencil("マスク２",2050,center,50,128,"cg/ef/effi暴露成功_ef01.png",false);
	CreateColor("マスク２/色２", 2050, 0, 0, 1024, 576, "RED");
	Fade("マスク２/色２", 0, 0, null, true);
	Request("マスク２/色２", AddRender);
	Zoom("マスク１", 0, 500, 500, null, true);
	Zoom("マスク１", 0, 1500, 1500, null, true);


	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");

	Move("絵ズーム2", 300, @0, 0, Dxl1, false);
	Fade("絵ズーム2",300,1000,null,true);

	MusicStart("SE04",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,2000,null,true);
	Fade("マスク１/色１", 0, 1000, null, false);
	Fade("マスク２/色２", 0, 750, null, false);

	Rotate("マスク２", 5000, @0, @0, -180000, null,false);
	Zoom("マスク２", 500, 5000, 5000, Dxl1, false);
	Fade("マスク２/色２", 500, 0, Dxl1, false);

	Rotate("マスク１", 5000, @0, @0, 180000, null,false);
	Zoom("マスク１", 500, 500, 500, Dxl1, true);
	Delete("@絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
The Allmates' muzzles light up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 600, 0, null);
	SetFrequency("SE01", 600, 0, null);

	Fade("マスク１/色１", 600, 0, null, false);
	Fade("マスク２/色２", 600, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
&.&.&.But the light suddenly disappeared&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵ズーム2",300,null,true);
	Delete("絵ＥＶ");
	Delete("マスク１/色１");
	Delete("マスク２/色２");
	Delete("マスク１");
	Delete("マスク２");
	Delete("絵ズーム2");

	CreateSE("SE02","se人体_衝撃_転倒03複数");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("@dm008", 3000, 10, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0096]
They all stagger over and fall to the ground &, their feet 
unable to hold them up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000250a01">
"&.&.&.It stopped&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000260b12">
"Looks like it&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000270a01">
"&.&.&.Ren&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ26");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
I hug Ren&, bringing his body to my cheek&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000280a01">
"&.&.&.I'll definitely fix you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ19");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
I gently place him back into my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000290a01">
"Let's go&."

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/0000300b12">
"Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_急加速01");//あきゅん「ＳＥ：se乗物_改造バイク_急加速01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);

	Wait(500);

	CreateSE("SE11","se乗物_改造バイク_走行01L");//あきゅん「ＳＥ：se乗物_改造バイク_走行01L」
	MusicStart("SE11",2000,700,0,1000,null,true);

	DrawDelete("絵黒幕", 250, 100, null, "slide_01_03_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
We start to descend the stairs once again&.

No matter what&.&.&.
We have to get out of this tower&.

Aboslutely&, I need to do it for Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/0000310b08">
"Fuhahahahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※↑後ろ姿なのでｓｔ表示なしで

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000320a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/0000330b08">
"Fuhuhuhuhuhuhuhuhu&.&.&. Hmmmm&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se乗物_改造バイク_スピン01");//あきゅん「ＳＥ：se乗物_改造バイク_スピン01」

	CreatePlainSP("絵板写仮初", 9900);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	CreateTextureSP("絵背景滑", 1100, -1024, -550, "cg/bg/l/bg304061_5_東江タワー階段_l.jpg");
	SetBlur("絵背景滑", true, 3, 500, 100, false);

	CreatePlainSP("絵板写", 100);
	SetVolumeEX("SE11", 250, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 400, 0, 10, 0, 0, 1000, Dxl1, false);
	Delete("絵板写仮初");
	Move("絵背景滑", 800, 0, @0, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
Suddenly&, a laughing voice echos from below and I slam on 
the brakes&.

That back&.&.&.

Akushima!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵背景滑");
	FadeDelete("絵板写", 500, null, true);

	SetVolumeEX("@dm008", 3000, 450, null);

{	St("C",740, @0,@0,"st悪島_通常ハイパー_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
Akushima&, with his back to me&, turns around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_通常ハイパー_laugh");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/0000340b08">
"What&, yoouuuuu? Did you come to kill meeee???"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0126]
A disturbingly amused smile spans Akushima's entire face&.

He should be unable to move from when I used Scrap on him 
and the other Scratch members&.&.&.

For whatever reason&, he's acting more odd than usual&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 1000);
	SetShade("絵板写", SEMIHEAVY);
	Fade("絵板写", 800, 800, null, true);

	CreatePlainSP("絵板写最上段", 9990);

	CreateColorEX("絵色黒板写", 1010, "000000");
	Fade("絵色黒板写", 0, 750, null, true);

	CreatePlainSP("絵板写上", 9900);
	CreateTextureSP("絵演立絵", 1110, Center, -70, "cg/fu/fu悪島_通常ハイパー_laugh.png");
	Request("絵演立絵", Smoothing);
	Zoom("絵演立絵", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演背景", 1100, Center, Middle, "cg/bg/bg304061_5_東江タワー階段.jpg");
	Zoom("絵演背景", 0, 2000, 2000, null, true);

	DrawTransition("絵板写上", 1, 1000, 600, 100, null, "cg/data/slide_05_01_0.png", true);

	FadeDelete("絵板写最上段", 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
His eyes aren't focusing&.<ke>
He's looking this way but not at me&.

Oh no&, is he&.&.&.
Broken too?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	CreateTextureEX("絵演背景二", 9995, Center, Middle, "cg/bg/bg304062_5_東江タワー階段別アングル.jpg");
	Move("絵演背景二", 0, @0, @60, null, true);
	Request("絵演背景二", Smoothing);
	Zoom("絵演背景二", 0, 1200, 1200, null, true);
	Move("絵演背景二", 700, @0, @-60, Dxl2, false);
	Fade("絵演背景二", 700, 1000, null, true);

	CreatePlainSP("絵板写最上段", 9990);
	Delete("絵板写上");
	Delete("絵演立絵");
	Delete("絵演背景");
	FadeDelete("絵板写最上段", 0, null, true);
	FadeDelete("絵色黒板写", 0, Dxl3, false);
	FadeDelete("絵板写", 0, Axl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Behind Akushima are the Scratch members&.

Akushima must have caught up with them on their way out of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/0000350e45">
"! You!?"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/0000360e46">
"What happened to Mink-san!?!?"

{	Fw("fw悪島_通常ハイパー_laugh");}
//※ハイパー
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm37/0000370b08">
"I'm gonna kill alllll of yaaaaaaaa!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_通常ハイパー_laugh");
	FadeSt("C",0,true);}

	FadeDelete("絵演背景二", 0, null, true);

//※ＳＥ：悪島のメガホンからビーム
	CreateSE("SE01","se戦闘_メガ砲_発射01");//あきゅん「ＳＥ：se戦闘_メガ砲_発射01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_メガ砲H01.jpg");
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);
	DeleteAllSt(0,true);
	Wait(50);

	CreateSE("SE02","se戦闘_動作_跳躍高01");//あきゅん「ＳＥ：se戦闘_動作_跳躍高01」
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("絵演*");
	DrawDelete("絵黒幕", 150, 100, null, "slide_01_03_0", true);

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/0000380e45">
"Ahhh!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/0000390e46">
"Watch out!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se戦闘_衝撃_破損01");//あきゅん「ＳＥ：se戦闘_衝撃_破損01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
Akushima pulls out a weird weapon and starts firing away&. 
Blazing hot beams pierce the wall&, smoke floating above it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

{	St("C",740, @0,@0,"st悪島_戦闘ハイパー_normal");
	FadeSt("C",200,true);}

	Wait(300);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/0000400a01">
"Oh fuck&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm008", 1000, 0, null);

	ClearFadeAll(1000, true);
	Wait(1500);

//※次ファイル["dm3710.nss"]

}
