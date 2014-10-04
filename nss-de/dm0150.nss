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


scene dm0150.nss_MAIN
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
	$GameName = "dm0160.nss";

	//▼頭痛レベル設定
	$HALevel=1;

}


scene dm0150.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm001",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Der naechste Morgen&. 

Ich gehe wie immer zu Heibon zur Arbeit und beobachte
den Laden von hinter der Theke aus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Ow&, ow&, ow&.&.&.

Ich habe meine ueblichen Kopfschmerzen und massiere die Innenwaende meiner 
Augenhoehle mit meinem Zeigefinger und Daumen&.

Mein Kopf fuehlt sich schon seit heute Frueh schwer an&.

Obwohl ich nach dem Fruehstueck meine Medizin genommen habe&.&.&.
Habe ich mich erkaeltet?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ガタガタ（店の奥から）
	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se物体_物_鳴る01");
	MusicStart("SE02",0,600,0,800,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【羽賀】※遠い
<voice name="羽賀" class="羽賀" src="voice/dm01/5000010b07">
"Aoba-kun&, Ich moechte das du eine Kleinigkeit fuer mich auslieferst&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Klapendere Gerauesche und Haga-sans Stimme kommen aus dem hinteren Teil des 
Ladens&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_normal2",2050,"fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/5000020a01">
"Ah&, Ich helfe&, &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	HAFade(2000, 0,false);

	Wait(100);

	CreatePlainSP("絵板写", 5000);
	CreateSE("SE01","se物体_物_鳴る01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Shake("絵板写", 300, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 300, Dxl1, true);

//※ガタッ（蒼葉カウンターに手を付く）

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Ich versuche mit wackligen Beinen aufzustehen&. 
Ich halte mich sofort am Tresen fest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st羽賀_通常_normal");
//	FadeSt("C",200,true);

	Fw("fw羽賀_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000030b07">
"Aoba-kun&, ist alles in Ordnung?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/5000040a01">
"Sorry&, Ich fuehle mich ein wenig benebelt&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw羽賀_通常_worry",5100,"fw羽賀_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000050b07">
"Setze dich&. Ich kann es schon machen&. &.&.&.Huuun! Ha! Hiiya!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※箱ドサッ（羽賀さんが箱を持って歩いてきて、カウンターにドサッと置く）
	DeleteFw();
	CreatePlainSP("絵板写", 5000);
	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,1000,0,800,null,false);
	CreateSE("SE03","se戦闘_打撃_ヒット低02");
	MusicStart("SE03",0,700,0,800,null,false);
	Shake("絵板写", 200, 0, 50, 0, 0, 500, Dxl1, true);
	Shake("絵板写", 300, 0, 80, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 300, Dxl1, true);

	Wait(200);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]

//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000060b07">
"Puuh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/5000070a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000080b07">
"Hm? Was ist los&, Aoba-kun?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/5000090a01">
"Ah&, Nein&, Ich finde nur das es beeindruckend war&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000100b07">
"Oh&, war es nicht mal annaehrend&. Hahaha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",740, @150,@0,"stAM凡人くん_通常_normal");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 800, @-110, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm01/5000110e59">
"Saubern&, Saeubern&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Haga-sans Allmate Bonjin-kun erscheint and rotiert um Ihn&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000120b07">
"Ah&, Bonjin-kun&. Kuemmere dich bitte um Hinten&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);

	St("C",740, @40,@0,"stAM凡人くん_通常_normal");
	FadeSt("C",180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【凡人くん】
<voice name="凡人くん" class="凡人くん" src="voice/dm01/5000130e59">
"Hinten&, hinten&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se動物_足音_歩く凡人01L");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @30, @0, null, false);
	DeleteSt("C", 200,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Bonjin-kun verschwindet in den hinteren Teil des Ladens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000140b07">
"Ah&, Ja&. Koennte ich dich darum bitten diesen Gegenstand fuer mich auszuliefern?"

Haga-san holt einen kleinen Papierbeutel aus seiner Tasche&.

{	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000150b07">
"Die Bestellung kam mitten in der Nacht vom gestrigen Kunden rein&, es ist eine 
 Speziallieferung&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
Als ich auf das Etikett schaue&, bemerke ich das die Addresse&, wie der Laden&, 
im Ost Bezirk liegt&. Es ist am schnellsten es persoenlich abzuliefern&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000160b07">
"Da einer unserer Vertragspartner herkommt&, kann ich den Laden nicht verlassen&. 
 Es tut mir Leid&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/5000170a01">
"Es ist okay&. Ich liefere es jetzt sofort aus&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm01/5000180b07">
"Vielen Dank&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Haga-san laechelt und laueft in Richtung Keller&.

Mein Kopf fuehlt sich immernoch schwer an&. 
&.&.&.Aber es ist mein Job&. Ich werde mein Bestes geben&.

Ich taetschle meine Stirn&, reisse mich zusammen und atme erschoepft aus&.

Ich nehme meine nahe gelegene Tasche mit Ren darin und
verlasse den Laden mit dem Papierbeutel&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE02","se物体_ドア平凡_鳴る01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);

//※次ファイル["dm0160.nss"]

}
