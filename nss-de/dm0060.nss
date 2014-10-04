//<continuation number="460">
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


scene dm0060.nss_MAIN
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
	#ev006紅雀登場=true;
	#ev006紅雀登場a=true;
	
	#bg101041_1_旧住民区通り裏路地05=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0070.nss";

}


scene dm0060.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101041_1_旧住民区通り裏路地05");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ich kann das Schild des Kuriers am Ende der breiten Strasse sehen&.

{
	CreateSE("SE01","se環境_喧騒_旧人民区青柳通り02L");
	MusicStart("SE01",1000,700,0,1000,null,true);
}
Waehrend ich mich dem Kurier naehere&, 
bemerke ich eine grosse Menschenmenge&.

Schien ein lauter Kampf zu sein&. 
Schaulustige sammelten sich darum und laermten&.

Ich laufe weiter und versuche das Chaos zu vermeiden&. 
Ploetzlich bewegt sich die Menge&, kurz darauf folgt ein schriller Schrei&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000010a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ich schaue auf Zehenspitzen in die Mitte der Menge&.

Ein grosser bulliger Mann liegt verschaemt auf dem Boden&,
waehrend ein anderer Mann neben ihm steht&.

Der stehende Mann war von mir abgewandt&. 
Trotzdem erkenne ich ihn sofort&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
}
Ein feuerroter Kimono und ein langes Schwert&. 
Es kann nur er sein&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク上", 2000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");

	CreateTextureSP("絵マスク上/絵背景", 100, -124, -496, "cg/ev/m/ev006紅雀登場_m.jpg");

	DrawDelete("絵板写", 200, 100, null, "slide_05_01_0", true);

	Move("絵マスク上/絵背景",1000,-124, -196,Dxl1,false);

	SoundPlay("@dm009",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000020a02">
"Du bist gross&, aber nicht sonderlich stark&.
 Ich kann nicht glauben das du vor den Augen einer so schoenen Frau
 so ein Chaos angerichtet hast&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000030e49">
"Kyaaa!! Koujaku-saaan!"

{
	Fw("fwmギャルB_通常_normal");
}
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm00/6000040e50">
"So cool! Soooo ein Traummann!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク*");
	DrawDelete("絵板写", 200, 100, null, "slide_05_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Als Koujaku das Schwert auf seine Schulter lehnt&,
rennen die verliebten Frauen zu ihm und treten auf den
auf dem Boden liegenden Mann&. Hnnm&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【大男の彼女】
<voice name="大男の彼女" class="大男の彼女" src="voice/dm00/6000050e11">
"Aehmm&.&.&.Aehmm&, Es tut mir wirklich Leid&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Eine entfernt stehende Frau naehrt sich Koujaku 
und senkt demuetig ihren Kopf&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【大男の彼女】
<voice name="大男の彼女" class="大男の彼女" src="voice/dm00/6000060e11">
"Ich war egoistisch und habe gesagt das Koujaku mein Haar machen soll&, und er&.&.&."

{	Fw("fwmギャルA_通常_normal");}
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000070e49">
"So frech!"

{	Fw("fwmギャルB_通常_normal");}
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm00/6000080e50">
"Ja! Warte bis du an der Reihe bist"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Die Frau scheint die Freundin des Mannes zu sein&,
welcher immer noch auf der Strasse liegt&.

Vielleicht haben die Beiden versucht Koujaku's Laden zu betreten&.&.&. 
und haben etwas angezettelt&.

Koujaku kontrolliert die herumstehenden Frauen mit vornehmen Handgesten
und laechelt die sich verneigende Frau an&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク上", 2000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");

	CreateTextureSP("絵マスク上/絵背景", 100, -547, -127, "cg/bg/l/bg101041_1_旧住民区通り裏路地05_l.jpg");
	Request("絵マスク上/絵背景", Smoothing);
	SetShade("絵マスク上/絵背景", MEDIUM);

	CreateTextureSP("絵マスク上/絵立絵", 100, 182, -266, "cg/fu/fu紅雀_通常太刀なし_normal.png");

	Move("絵マスク上/絵背景",1000,-497,-127,Dxl1,false);
	Move("絵マスク上/絵立絵",1000,132, -266,Dxl1,false);

	DrawDelete("絵板写", 200, 100, null, "slide_05_01_0", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000090a02">
"Junge Dame&, wenn sie das denken&, dann fuehle
 ich mich als Frisoer Geehrt und Priviligiert&.
 Aber trotzdem&, ihr seid alle wertvolle Kunden&. 
 Es ist wichtig die Warteschlange einzuhalten&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【大男の彼女】
<voice name="大男の彼女" class="大男の彼女" src="voice/dm00/6000100e11">
"Ja&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000110a02">
"Dein Freund war ein wenig aufdringlich&, aber er wollte nur dein Bestes&. 
 Verurteile ihn nicht zu sehr&, okay?
 Bitte komm' eines Tages wieder&. Wenn du kommst&, 
 werde ich dich Willkommen heissen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルC_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【大男の彼女】
<voice name="大男の彼女" class="大男の彼女" src="voice/dm00/6000120e11">
"Okay!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Der aufgewuehlte Gesichtsausdruck der Frau aendert sich schnell&.
Ihre Augen funkeln und ihre Backen erroeten&.

Ist das wirklich passiert&.&.&.?

Den Frauen ringsum gefiel die Richtung in die sich das entwickelte nicht&,
also fingen sie an die Frau wegzuschieben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm00/6000130e50">
"Hey! Wie lange willst du da stehen? Geh weg!"

{	Fw("fwmギャルA_通常_normal");}
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000140e49">
"Umm&, Koujaku-san? Du bist ins Schwitzen gekommen&, oder? 
 Ich habe dieser Stofftaschentuch erst neulich gekauft&, 
 aber&.&.&.wenn es dir gefaellt&, bitte verwende es!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク上/絵立絵", 100, 132, -266, "cg/fu/fu紅雀_通常太刀なし_normal2.png");

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000150a02">
"Nein&, Das kann ich nicht machen&. 
 Du hast es gekauft&, weil es dir gefallen hat&, oder? 
 Du solltest es selbst verwenden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000160e49">
"Es ist okay! Wenn Koujaku-san es verwendet&, 
 wuerde es dem Taschentuch sicher auch gefallen!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000170a02">
"Ihm auch&, huh&.&.&. Da du es so gesagt hast und ich aus der Reihe tanzen wuerde&,
 wenn ich ablehnen wuerde&.&.&.
 Gut&, ich werde es dankbar verwenden&."

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1200,null,false);
}
Koujaku nimmt die Hand der Frau zusammen mit ihrem 
Taschentuch und zieht sie naeher zu sich&, laechelnd&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク上/絵立絵", 102, 132, -266, "cg/fu/fu紅雀_通常太刀なし_smile.png");

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000180a02">
"Danke&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000190e49">
"!!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク*");
	DrawDelete("絵板写", 200, 100, null, "slide_05_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Da ist es&. Sein beruehmtes Lady Killer Laecheln&.

Zumindest nenne ich es so&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000200e49">
"Haaaaah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Die Taschentuch-Frau geht in einen geschwaechten Zustand
und zieht Blicke voller schrecklichem Neid auf sich&.
Jede der Frauen scheint bereit jemanden umzubringen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000210a01">
"&.&.&.Lass schon los&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Ich habe das schon oft gesehen&. 
Angewiedert entferne ich mich von der Menge&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev006紅雀登場.jpg");
	Fade("絵ＥＶ100", 800, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000220a02">
"Aoba?"

&.&.&.Mist&.

Ich weiss das die Aufmerksamkeit nun komplett auf mich gerichtet ist&. 
Ruf mich nicht&, nicht jetzt&.&.&.

Das ist schlecht&, lass uns so tun als haette ich das nicht gehoert&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ100", 250, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Ich drehe mich um und fange an mich mit zuegigem Schritt zu entfernen&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000230a02">
"Hey&, warte&."

{
	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,900,0,1600,null,false);

	Wait(1300);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");
}
Koujaku rennt mir&, mein Verhalten ignorierend&,
nach und greift nach meinem Arm&.

Schon wieder dasselbe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※紅雀の紹介演出
//voice/ex/0000010c06

	CreateTextureEX("絵ＥＶ101", 101, -165, -90, "cg/ev/l/ev006紅雀登場a_l.jpg");
	Fade("絵ＥＶ101", 500, 1000, null, true);
	Profile("紅雀", "ex/0000010c06");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000240a02">
"Aoba&. Du bist es wirklich!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000250a01">
"&.&.&.Yo&.."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000260a02">
"Du hast ein paar schlechte Angewohnheiten&. Wenn du in der Naehe bist&, 
 solltest du etwas sagen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000270a01">
"Tja&, ehmm&.&.&.Bin nur zufaelligerweise der Arbeit wegen vorbeigekommen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ102", 102, Center, Middle, "cg/ev/ev006紅雀登場a.jpg");
	Fade("絵ＥＶ102", 500, 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000280a02">
"Wahrend der Arbeit? Eine Lieferung?"

Koujaku atmet aus und laechelt&. 
Die Augen der Frauen werden wieder zu Herzen&.

Das Laecheln ist eine alte Angewohnheit&, 
aber es gibt immernoch einige Frauen die darauf reinfallen&. 

Es ist seine Geheimwaffe&.

Aber&.&.&. wegen den vielen Menschen ist es unmoeglich sich zu unterhalten.&.&.
Und die Augen der Frauen sind angsteinfloesend&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000290a01">
"Musst du nicht auch arbeiten? Andereseits&, sehe ich 
 den ganzen Tumult hier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000300a02">
"Ja&, nur weil der Typ hier die Warteschlage missachtet hat&.
 Nicht zu schwer mit dem fertig zu werden&."

Koujaku zeigt auf den immer noch auf dem Boden liegenden Mann&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000310a01">
"Wenn du nicht bald einen Gang runterschaltest&, 
 wirst du noch eines Tages erstochen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000320a02">
"Ich? Erstochen? Von wem?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000330a01">
"Wenn du dich umsiehst&, wirst du sehen&.&.&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Ich fuehle mich erschoepft und blicke auf die
Frauen die mich anstarren&.

Man kann sie foermlich sagen hoeren:
"Es ist egal ob du ein Mann oder eine Frau bist&, 
wenn du in die Naehe von Koujaku kommst&, werde ich dir nie verzeihen!" .
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ101", 500, @20, @0, Dxl1, false);
	FadeDelete("絵ＥＶ102", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000340a02">
"Ah&, na ja&, es sollte kein Problem sein&. 
 Sehe ich so aus als wuerde ich so einfach erstochen werden?"

Koujaku hebt seine Mundwinkel zu einem Grinsen an und lacht&.

Dieser Typ&.&.&.

Aber er ist begabt&, also werde ich nichts sagen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
Koujaku sind die Vorzuege seines Aussehens seit langer Zeit bekannt  und&,
um es freundlich Auszudruecken&, ist er ein selbstsicherer
Mann der gut Kaempfen kann&.

Er arbeitet auf seine eigene Art und Weise als Frisoer
und scheint dafuer ziemlich beruehmt zu sein&.

Er arbeitet nach seiner eigenen Laune und setzt Zeichen
wann er will&. Es gibt keine Ankuendigung und nimmt
keine Reservierungen entgegen&.

Abgesehen davon&, stellen sich immer sofort Leute an&.

Sobald Koujaku dein Haar beruehrt&,
sollst du angeblich im Himmel sein&.

&.&.&.Ich kann mir nicht vorstellen wie das funktionieren soll&.

Aus meiner Sicht&, ist dieser "netter Typ" Trip einfach nur billig&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 250, null, true);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000350a01">
"Egal&, halt das Theater im Rahmen&. Wie viele
 Frauen weinen sich wegen dir die Augen aus?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000360a02">
"Du sagst das immer wieder&, aber ich kann nichts dagegen machen&,
 es ist beschaemend wenn ein Mann eine Frau die sich ihm anbietet ablehnt&. 
 Frauen sind die Schaetze dieser Welt&."

{
	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000370a02">
"Frauen sind schoen und suess&. 
 Deshalb will ich gegenueber Allen einfuehlsam sein&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se環境_ガヤ_歓声女性01");
	MusicStart("SE02",0,500,0,800,null,false);

	CreateSE("SE01","se環境_ガヤ_歓声女性01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000380e49">
"Koujaku-san&, du bist so cool!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm00/6000390e50">
"Ich liebe dich!"

{
	Fw("fw蒼葉_通常_sigh2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000400a01">
"&.&.&.Gut&, Ich schaetze dann ist es in Ordnung&.
 Egal&, ich gehe&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000410a02">
"Richtig&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,700,null,false);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm00/6000420e49">
"Koujaku-san&, beeil' dich!"

{
	SetVolumeEX("SE*", 1000, 0, null);
	Fw("fwmギャルB_通常_normal");
}
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm00/6000430e50">
"Hey da&, ich bin als Naechstes dran&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
Sofort nachdem ich meinen Satz vollendet hatte&, 
begannen die Frauen sofort wieder Koujaku zu belagern&.

Koujaku sieht mich an&, als waere ihm gerade etwas eingefallen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm00/6000450a02">
"Ah&, stimmt&. Ich werde dich mal besuchen&, also gruesse Tae-san von mir&."

{
	Fw("fw蒼葉_通常_cranky");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/6000460a01">
"Ja&, ja&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
Ich gebe eine kurze Antwort und fange an zu laufen&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
Trotzdem&.&.&. 
Dieser Typ scheint nicht erschoepft zu sein&.

Er tut nach was ihm ist&, weil er Frauen Schaetze nennt&,
aber fuer mich ist das einfach Unmoeglich&.

Wird Leuten wie ihm nicht ein gewisser Charakter nachgesagt?

Waehrend ich den foermlich uebersprudelnden Stimmen der Frauen 
hinter mir lausche&, laufe ich zum Kurier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm0070.nss"]

}
