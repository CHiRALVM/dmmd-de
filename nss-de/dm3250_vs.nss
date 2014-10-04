//<continuation number="190">
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


scene dm3250_vs.nss_MAIN
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
	$GameName = "dm3260.nss";


	//▼頭痛レベル設定
	$HALevel=2;
}


scene dm3250_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg306031_5_倉庫内部荷物側");
	FadeBG(0,true);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSPadd("絵窓/絵煙白", 200, "WHITE");
	DrawTransition("絵窓/絵煙白", 0, 0, 160, 1000, null, "cg/data/effect_01_00_0.png", true);

	DrawDelete("上背景", 300, 100, Dxl1, "slide_01_01_1", true);

	St("C",740, @0,@0,"stミンク_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/5000010a05">
"Hey&, over here!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Mink raises his voice in a place where he can be clearly 
seen and won't be interrupted&. The policemen notice him&.

They'll come here like a swarm of bees&.&.&.!
What the hell is he thinking&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

	Fw("fwmミンクチームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/5000020e45">
"All right&, here we go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※どさっ！！！小麦粉がもうもう

	CreateColorEXadd("絵窓/絵煙白弐", 1100, "WHITE");
	CreateColorEX("絵窓/絵煙白参", 1105, "WHITE");
	CreatePlainSP("絵板写", 1000);

//	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");

	CreateSE("SE01","se戦闘_衝撃_爆発小麦粉袋01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 10, 10, 0, 0, 500, null, false);
	Fade("絵窓/絵煙白弐", 0, 500, null, true);
	DrawTransition("絵窓/絵煙白弐", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
	Fade("絵窓/絵煙白参", 0, 1000, null, true);
	DrawTransition("絵窓/絵煙白参", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);


	FadeDelete("絵板写", 500, Dxl2, true);

	OnBG(10,"bg306021_5_倉庫内部入り口側");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I heard the sound of something large fall down&, and the 
room goes white once again&.

This time it's even more dense&, I can't see a thing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_shock2",800,"fw蒼葉_通常_pinch");
//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000030a01">
"Wha&.&.&.&.! Hck&, ghack!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	Fade("絵窓/絵煙白弐", 500, 100, null, false);
	Fade("絵窓/絵煙白参", 500, 800, null, false);
	DrawTransition("絵窓/絵煙白弐", 500, 1000, 500, 1000, Dxl1, "cg/data/slide_02_00_0.png", false);
	DrawTransition("絵窓/絵煙白参", 500, 1000, 200, 1000, Dxl1, "cg/data/slide_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I choke while trying to breathe&.
This texture&.&.&. flour?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//	St("C",740, @0,@0,"st悪島_通常_pain");
//	St("C",740, @0,@0,"st悪島_通常_sigh");
//	FadeSt("C",200,true);
//	FadeStPro("C", 5650, 200);

	Fw("fw悪島_通常メガホンなし_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/5000040b08">
"Urk! Gff! Wh-What the hell!! Flour!?"

{
	Fw("fwm警官B_通常_normal");
}
//【警官Ｃ】
<voice name="警官Ｃ" class="警官Ｃ" src="voice/dm32/5000050e15c">
"Shit&, shoot! Shoot!"

{
	Fw("fw悪島_通常メガホンなし_shock");
}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/5000060b08">
"Stop it&, idiots!!! Are you trying to kill me!! Stop
 shooting!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw悪島_通常メガホンなし_shout");
//	St("C",740, @0,@0,"st悪島_通常_shout");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/5000070b08">
"It's different from a smokescreen! The flour spreads like
 fire in this damn warehouse!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

//	DeleteSt("C", 180,true);
	St("C",740, @0,@0,"stミンク_通常_shout");
	FadeSt("C",0,true);

	OnBG(10,"bg306031_5_倉庫内部荷物側");
	FadeBG(0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/5000080a05">
"Hey&, do it!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The policemen wrangle around&, and Mink yells at me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000090a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I don't want to use my power if I can avoid it&.

But&.&.&. there's no other way to get out of here unscathed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	SetVolumeEX("@dm*", 3000, 0, null);
	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
I put up the megaphone to my mouth&, close my eyes&, and 
concentrate&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_心臓_鼓動02L");
	MusicStart("SE11",1500,700,0,1000,null,true);

//	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Cutting off all of the voices around me&, I listened 
carefully to the pounding of my heart&.

{
	SetVolumeEX("SE*", 500, 1000, null);
}

I'll do whatever I can&.&.&. to make it work&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",2102);
	TemptationAobaSet("絵演黒蒼葉誘惑",2100,Center,Middle,"cg/ev/ev900もう１人の蒼葉.jpg",1500,1500);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 2110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("絵演黒蒼葉誘惑黒隠", 0, 2000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 2000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");

	SetVolumeEX("SE*", 1500, 1500, null);
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
I'll concentrate on my "voice"&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	SetVolumeEX("SE*", 300, 0, null);
	DrawDelete("絵色黒",1000, 100, Dxl3, "slide_05_00_0", true);

	Wait(300);

	Fw("fw蒼葉_通常力行使_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//※声発動＋メガホン
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000100a01">
"&.&.&.Stop!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateColorEXadd("絵色白弐", 5001, "WHITE");
	Fade("絵色白", 300, 1000, Dxl1, true);
	Fade("絵色白弐", 0, 300, Dxl1, true);
	CreateTextureSPadd("絵効果", 1000, Center, Middle, "cg/ef/efbg効果01.jpg");
	Zoom("絵効果", 500, 2000, 2000, Axl2, false);
	Wait(100);

	CreatePlainEX("絵板写", 2000);
	CreatePlainEX("絵板写弐", 2000);
	Request("絵板写*", Smoothing);
	Zoom("絵板写", 0, 2000, 2000, null, true);
	Zoom("絵板写弐", 0, 2150, 2150, null, true);
	Fade("絵板写", 0, 300, Dxl1, true);
	Fade("絵板写弐", 0, 300, Dxl1, true);

	Zoom("絵板写*", 600, 1000, 1000, Axl2, false);
	Wait(50);
	FadeDelete("絵色白", 150, Dxl1, false);
	FadeDelete("絵効果", 150, Dxl1, false);
	Wait(50);
	FadeDelete("絵板写*", 1000, Dxl1, false);
	FadeDelete("絵色白弐", 1000, Dxl1, true);

//※数秒の間

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]

//【警官Ｂ】
<voice name="警官Ｂ" class="警官Ｂ" src="voice/dm32/5000110e15b">
"Guh&.&.&. Ugh&.&.&.!"

//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/5000120e45">
"Ahhh&, ahhhhh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
//	BGPlainShake(5000,200,5,5,0,0,1000,Dxl1,false);

	Wait(200);

	CreateSE("SE02","se人体_衝撃_転倒02複数");
	MusicStart("SE02",0,700,0,1000,null,false);
//	BGPlainShake(5000,300,0,5,0,0,1000,Dxl1,false);

	Wait(500);

//	St("C",740, @0,@0,"st悪島_通常_pinch");
//	FadeSt("C",200,true);
	Fw("fw悪島_通常メガホンなし_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/5000130b08">
"W-What the&.&.&. My head&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	BGPlainShake(5000,300,5,5,0,0,1000,Dxl1,true);
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
&.&.&.

&.&.&.Did it work?

The gunshots have stopped&, but&.&.&.
Painful groans are coming from all over&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：エフェクト消去
	DrawTransition("絵窓/絵煙白", 1000, 160, 0, 1000, null, "cg/data/effect_01_00_0.png", false);
	DrawTransition("絵窓/絵煙白弐", 2000, 500, 0, 1000, null, "cg/data/slide_02_00_0.png", false);
	DrawTransition("絵窓/絵煙白参", 2000, 200, 0, 1000, null, "cg/data/slide_02_00_0.png", true);
	Delete("絵窓/絵*");
	Delete("絵窓*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
The white mist dissipates and I don't know what's going on 
around me&.

The display in front of me&.&.&. freezes me in place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -250, InBottom, "cg/bg/l/bg306031_5_倉庫内部荷物側_l.jpg");
	Move("絵背景", 0, @0, @50, null, true);
	Move("絵背景", 2500, @250, @0, AxlDxl, false);
	Fade("絵背景", 1000, 1000, null, true);

	Wait(1500);

//	SoundPlay("@dm006",0,450,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
Both the policemen and Mink's members&.&.&. all of them are 
writhing down on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
This&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 6000, "BLACK");
	Fade("絵黒幕", 500, 1000, Dxl1, true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg306031_5_倉庫内部荷物側_m.jpg");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
This isn't a success&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
&.&.&.This is a failure&. I failed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(1000,300,5,5,0,0,1000,Dxl1,false);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_03_01_1", true);

	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/5000160a05">
"Hey&, we're going&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Mink comes up to me and pulls me by the arm&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000170a01">
"But your team members&.&.&.!"

{	St("C",740, @0,@0,"buミンク_通常_shout");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/5000180a05">
"Police reinforcements are coming&. Just run&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_動作_走る01a");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	DeleteSt("C", 0,true);

	Delete("絵背景");

	OnBG(10,"bg306011_5_倉庫外観通り");
	FadeBG(0,true);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateSE("SE02","se人体_足音_走る01L");
	MusicStart("SE02",0,700,0,900,null,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/zzex_circle_01_00_1.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg疾走001.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	Rotate("絵背景", 0, @0, @0, @-20, null,true);

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("絵黒幕", 200, 100, null, "zzex_circle_01_00_1", true);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
He pulls me roughly by the arm&, and I can't help but run
along with him&.

I can hear the sound of hundreds of footsteps coming from 
the other direction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

$HALevel=2;
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]
As if to condemn me&, my head starts to throb with pain&.

I failed with Scrap&.

And because of that&, even Mink's people&.&.&.

The reason why I failed&.&.&. was probably because I couldn't 
concentrate enough power&.

That's why it only worked halfway&, and went wrong 
somewhere&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/5000190a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
The violent wave of self-hatred hits me&.

It's too late to repent&.
Nothing can be done&.

I know that&.
I know that&, but&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");

	Fade("絵色黒", 2000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
We make our escape from the warehouse and go back to 
Glitter&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

//※次ファイル["dm3260.nss"]

}
