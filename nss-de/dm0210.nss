//<continuation number="310">
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


scene dm0210.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	$GameName = "dm0220.nss";

}


scene dm0210.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//	OnBG(10,"bg102031_1_平凡前通り");
//	FadeBG(0,true);

//	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
//	CreateColorSPsub("絵色黒", 5000, "WHITE");
//	CreateColorSP("絵窓/絵色黒帯", 4000, "BLACK");
//	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
//	DrawTransition("絵窓/絵色黒帯", 0, 0, 300, 100, null, "cg/data/slide_05_00_0.png", true);
//	Fade("絵色黒", 0, 800, null, true);
	CreateColorSPsub("絵色黒", 5000, "WHITE");
	Wait(1000);
	FadeDelete("上背景", 0, null, true);

//※演出：白蒼葉の台詞、ぽつっと表示
//あきゅん「ＱＵ：中央文字に変更しました」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm02/1000010b01">
"&.&.&.Zerstoerung und Tod&."

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(500);

//※演出：場面転換

	Fade("絵色黒", 200, 1000, Dxl1, true);

//	Delete("絵窓/絵*");
//	Delete("絵窓*");
//	Delete("絵背景");

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);
	Zoom("@OnBG*",0,1005,1005,null,false);
	Request("@OnBG*",Smoothing);
	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵黒幕", 3000, "000000");
	DrawTransition("絵窓/絵黒幕", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);

	Wait(1000);

	Fade("絵色黒", 2000, 500, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000020a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　&.&.&.Ugh&. 
Mein Kopf schmerzt&.&.&.

Was&.&.&.
Was ist passiert&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000030a01">
"&.&.&.Ah&, au au&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Es scheint so&.&.&. als waere ich irgendwo hingefallen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,900,null,false);
	Fade("絵色黒", 1500, 300, null, false);
	Move("絵背景", 1500, @0, @100, Dxl1, false);
	DrawTransition("絵窓/絵黒幕", 1500, 500, 0, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("絵窓/絵*");
	Delete("絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Ich ertrage den Schmerz in meinen ganzen Koerper&, sammele die uebrig gebliebene Kraft in meinen Armen&, und stehe auf&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 400, @-50, @0, Dxl1, true);
	Wait(100);
	Move("絵背景", 100, @50, @0, Dxl1, true);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 500, 0, 15, 0, 0, 500, Dxl1, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ich schwanke und falle fast wieder hin&, aber ich schaffe es irgendwie stehen zu bleiben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000040a01">
"Es tut weh&.&.&. aber&.&.&. Wie bin ich hier her gekommen&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Ich halte mir meine Stirn und versuche meine verwirrten Errinerungen aneinander zu reihen&.

Es muss&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	Fade("絵色黒", 0, 0, null, true);

	CreateTextureEX("絵演背景", 100, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	Fade("絵演背景", 0, 1000, null, true);
	St("C",740, @0,@0,"stウサギ頭_通常_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Ich wurde ploetzlich in Rhyme gezogen&, und irgendein Hasenkopf&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵演*");
	DeleteSt("C", 0,true);
	CreateTextureSP("絵背景霞", 105, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
	CreateTextureSP("絵背景", 110, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
//	CreateTextureSP("絵下背景", 100, Center, -190, "cg/bg/m/bg102031_1_平凡前通り_m.jpg");
	SetShade("絵背景霞", MEDIUM);

	Fade("絵色黒", 0, 300, null, true);

	Move("絵背景", 0, @0, @100, Dxl1, true);
	Move("絵背景霞", 0, @0, @100, Dxl1, true);


	EfRecoIn2(400);

	Wait(500);


	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背*", 3000, @0, -160, AxlDxl, false);
	FadeDelete("絵色黒", 1000, null, false);
	Fade("絵背景", 3000, 0, Axl3, false);
	Wait(3500);
	Fade("絵背景", 500, 1000, null, true);
	Delete("絵背景霞");
	Wait(500);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000060a01">
"&.&.&.Ich bin vor dem Laden?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm006",0,450,true);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Ich sehe ihn taeglich&, also muss es stimmen&.

Ich&.&.&. stehe vor Heibon&.

Aber wieso? 
Ich haette etwas ausliefern sollen&.&.&.

Als ich mich umsehe&, bemerke ich ein blaues Fellkneul am Boden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000070a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵画像", 1000, Center, Middle, "cg/ev/ev004犬蓮起動.jpg");
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
	Fade("絵画像", 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Ich renne sofort zu ihm hin und umarme ihn&. 
Keine Reaktion&.

Ich beruehre Rens Kopf und sage seinen Namen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000080a01">
"Ren&, hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(1000);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵画像弐", 1005, Center, Middle, "cg/ev/ev004犬蓮起動a.jpg");
	Fade("絵画像弐", 300, 1000, Dxl1, true);

	Delete("絵画像");

	Wait(500);

//	Fw("fwAM蓮_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000090a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
After a short pause&, Ren opens his eyes&.

I feel relieved from the bottom of my heart after seeing 
him safe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000100a01">
"Alles okay?"

//{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000110a06">
"Es gibt keinerlei groessere Probleme&."

//{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000120a01">
"Wirklich? Bist du nicht irgendwo kaputt?"

//{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000130a06">
"Einige der Daten sind beschaedigt&."

//{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000140a01">
"Ist das Problem nicht gross genug?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Ren muss in Rhyme auch Schaden von diesem Hasenkoepfigen Typen abbekommen
haben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se人体_動作_衣擦れ01");
//	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵画像弐", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000150a01">
"Ich untersuche dich&, sobald wir zu Hause sind&, okay?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000160a06">
"Um sicher zu sein&, mach das bitte&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000170a01">
"Ja&. Es fuehlt sich bei mir auch so an als waeren in meinem Gehirn Daten beschaedigt worden&.&.&."

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000180a01">
"Ich errinere mich daran mit diesem Hasenkopf gekaempft zu haben&,
 aber was ist dann passiert?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000190a06">
"Meine Daten sind von diesem Zeitpunkt an beschaedigt&."

{FwPro("fw蒼葉_通常_worry3",2000,"fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000200a01">
"Ich verstehe&.&.&. Warte kurz&, ich versuche mich zu errinern&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, AxlDxl, "cg/data/slide_05_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Ich ertrage die Kopfschmerzen&, schliesse meine Augen und dursuche meine Errinerungen&.

Aber desto mehr ich mich errinern versuche&, desto weiter rueckt die Errinerung davon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵色黒", 500, 100, Dxl1, "slide_05_00_0", true);

//	Wait(500);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000210a01">
"&.&.&.Es bringt nichts&. Ich kann mich an gar nichts errinern&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000220a06">
"Wir koennen nichts dagegen tun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000230a01">
"Wirklich? Wieso?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000240a06">
"Wenn die Durschnittskapazitaet des Mannes 100 ist&, 
 Ist deine Kapazitaet&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_fake",3050,"fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000250a01">
"Fuehren wir diese Konversation wirklich gerade?
 &.&.&.Ah&.&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000260a06">
"Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5001);
	//CreatePlainSP("絵板写弐", 5000);
	CreateTextureSP("絵板写弐",5000,0,0,"cg/bg/bg102031_1_平凡前通り.jpg");
	Zoom("絵板写弐",0,1005,1005,null,false);
	Request("絵板写弐",Smoothing);
	DrawEffect("絵板写弐", 0, "Ripple", 100, 100, null);
//	DrawEffect("絵下背景", 0, "Ripple", 100, 100, null);
	FadeDelete("絵板写", 1000, null, true);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000270a01">
"Hu&.&.&. heh? Mir wird irgendie schwindlig&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000280a01">
"&.&.&.Ren&, du&.&.&. seit wann hast du acht Beine&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：蒼葉、どさっと倒れる

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorEX("絵窓/絵色黒", 5000, "000000");
//	CreatePlainSP("絵板写弐", 100);

//	Move("絵下背景", 300, @0, @-70, Axl3, false);
//	Wait(100);

//※ＳＥ：地面に倒れる
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵窓/絵色黒", 0, 1000, null, false);
	DrawTransition("絵窓/絵色黒", 300, 0, 700, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
//	Delete("絵板写");
	Shake("絵下背景", 200, 0, 10, 0, 0, 500, Dxl1, true);


//	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000290a06">
"Aoba!"

//{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Was ist das&.&.&.?

Alles dreht sich vor meinen Augen&.&.&.

Wo ist der Boden&.&.&.? Was&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：蓮_足音_走り去る（蓮、ててててっと遠ざかっていく）

//	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000310a06">
"Warte hier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Ren rennt davon&.

Ich beobachte ihn dabei&. Es sieht so aus als gaebe es drei von Ihnen&,
und ich lache unbewusst&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 1000, 700, 1000, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("絵下背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Haha&, das ist seltsam&.&.&.

Ren hat drei Koepfe&.&.&.

&.&.&.Ab da verlor ich das Bewusstsein&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//※次ファイル["dm0220.nss"]

}
