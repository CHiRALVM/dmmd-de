//<continuation number="440">
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


scene dm0230.nss_MAIN
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

	#dm0230_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0240.nss";

}


scene dm0230.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	CreateColorSP("絵色黒", 5000, "000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg104031_5_蒼葉宅自室.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se擬音_コミカル_ツンツン01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(1500);

	SetVolumeEX("SE*", 0, 0, null);

//※演出：場面転換
//※つんつん（つんつんとつつく音がだんだん大きくなってくる）

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※つんつん
	CreateSE("SE01","se擬音_コミカル_ツンツン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Autsch&.
Irgendetwas schmerzt&.

Es fuehlt sich so an als wuerde mich etwas spitzes anstupsen&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※つんつん
	CreateSE("SE01","se擬音_コミカル_ツンツン01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000010b16">
"Wach auf&, Schlafmuetze! Hey&, komm schon!"

//{	Fw("fw蒼葉_通常_pain");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000020a01">
"Tch&, autsch&.&.&."

{
//	DeleteFw();
	CreateSE("SE01","se擬音_コミカル_ツンツン01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000030b16">
"Ich sage dir das du aufstehen sollst! Ich werde dich schlagen&, Idiot!"

//{	FwPro("fw蒼葉_通常_pain2",1200,"fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000040a01">
"&.&.&.Mmh&, das tut weh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 0, 15, 0, 0, 500, Dxl1, false);
	FadeDelete("絵色黒", 500, Dxl1, true);

	Wait(300);

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);

//※ベッドから勢いよく起きる→プニュ（おもちゃのような）
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Springe trotz des anwesenden Angreifers auf und
das anstupsende Ding faellt herunter&. 
Ich greife es reflexartig mit beiden Haenden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 1900, 275, -530, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	CreateTextureSP("絵マスク中/絵立絵", 2000, Center, Middle, "cg/fu/fuAMベニ_通常_normal.png");
	CreateColorEX("絵マスク中/絵色黒", 1950, "000000");
	Fade("絵マスク中/絵色黒", 0, 300, null, true);

	SetShade("絵マスク中/絵画像", MEDIUM);


	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000050a01">
"Oh&, Beni&."

{	DeleteFw();}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000060b16">
"Arhh&, lass mich los! Wie kannst du nur einen Gast so behandeln!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Beni flatttert in meiner Hand and schaut mich duester an&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000070a01">
"Bedeutet das Koujaku hier ist?"

{
	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000080b16">
"Ist das nicht offensichtlich!? Lass mich los!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm001",0,450,true);

	CreatePlainSP("絵板写", 5000);
	Delete("絵背景");
	Delete("絵色黒");
	Delete("絵黒帯");

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Ich stehe mit dem schreiendem Beni in meiner Hand auf&.

Huh? Wo ist Ren?

Ich suche nach ihm und sehe das er an der Ecke des Bettes schlaeft&.

Oh stimmt&, er hat gesagt das die Daten beschaedigt sind&. 
Ich muss ihn spaeter warten&.

Aber erst muss ich etwas essen&.

Dank des Schlafes&, fuehle ich mich deutlich besser&.

Die Kopfschmerzen sind auch verschwunden&.

Meine Gelenke schmerzen etwas&, aber es ist nicht so schlimm&, 
das ich nicht laufen kann&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Als ich den Raum verlasse&, rieche ich von unten koestliches Essen&.

Grossmutter ist wieder da&. Sie hat angefangen zu kochen&.

Als ich auf meinen Coil schaue&, stelle ich fest das es bereits 
Zeit zum Essen ist&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(1000,true);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000090a01">
"Ist es schon so spaet?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000100b16">
"Du bist fast nicht aufgewacht und ich wurde wuetend&. Kapierst du es endlich?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteFw();

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Benis Beschwerden ignorierend&, gehe ich die Treppen herunter und schaue in die
Kueche&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景100", 100, 565, -76, "cg/bg/m/bg104021_5_蒼葉宅台所_m.jpg");
	St("C",740, @0,@0,"fu紅雀_通常太刀なし_normal");
	FadeSt("C",0,true);
	Request("絵背景100", Smoothing);
	SetShade("絵背景100", MEDIUM);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Koujaku sitzt am Esstisch und der Raum ist mit appetitlichen Geruechen 
gefuellt&.

Grossmutter steht auch da&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
Als Koujaku mich sieht&, grinst er&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_smile2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0048]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000110a02">
"Yo&, Guten Morgen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000120a01">
"&.&.&.Morgen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常太刀なし_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000130a02">
"Siehst super cool aus&, wie immer&, wie ich sehe&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000140a01">
"&.&.&.Nein Danke dir&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Ich gaehne gegen meinen Willen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000150a01">
"Here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※ポイッ（ギャグより演出）
	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,700,0,1600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Ich werfe Beni&, den ich immernoch in der Hand hielt&, in Richtung Koujaku&. 
Koujaku faengt ihn geschickt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000160b16">
"Ich habe dich sogar aufgeweckt und du behandelst mich immer noch schlecht! 
 Schau nicht auf mich runter&, Aoba!"

{	Fw("fw蒼葉_通常_cranky");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000170a01">
"Beschwer dich bei deinem Master&. Laesst er dich nicht seine Besorgungen erledigen?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000180a02">
"Ich kann nichts dagegen tun&. Du bist ein echter Griesgram&, wenn du gerade
 aufgestanden bist&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000190a01">
"Das stimmt nicht&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000200b03">
"Aoba&, wenn du wach bist&, hilf ein wenig! Das Essen ist fertig&, also
 hol Essstaebchen und Tee!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000210a01">
"Okay&, okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm003",0,450,true);

	CreateTextureEX("絵背景100", 100, -953, -203, "cg/bg/l/bg104021_5_蒼葉宅台所_l.jpg");
	Move("絵背景100", 500, -1023, -203, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Grossmutters Geschrei zwingt mich dazu zum Regal zu eilen&. Koujaku hoert zu und lacht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_happy");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000220a02">
"Egal wie oft ich dich besuche&, du veraendrst dich nie&, Tae-san&. 
 Allein vom hoeren deiner kraeftigen Stimme fuehle ich mich erleichtert&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000230a01">
"Es ist anders wenn du jeden Tag angeschrien wirst&. Es ist ziemlich schwer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000240a02">
"Ahahahaha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Als ich mit den Schultern zucke waehrend ich die Essstaebchen verteile&,
lacht Koujaku noch gluecklicher&.

{
	FadeDelete("絵背景100", 500, null, true);
}
Ich fuelle Tee in die Drei Tassen&, waehrrend Grossmutter die Teller
 mit frischen Gerichten auf  dem Tisch verteilt&.

Da all die Vorbereitungen fuer das Essen abgeschlossen sind&, 
Setze ich mich mit jedem an den Tisch&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//覇：下記音声合成お願いします

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
"Danke fuer das Essen&."{WaitAddText2();}
<BR>

</PRE>
	SetText();
	AddText(1,""Danke fuer das Essen&."","タエ","dm02/3000250b03",true,true,1000);
	AddText(2,""Danke fuer das Essen&."","蒼葉","dm02/3000260a01",true,true,1000);
	AddText(3,""Danke fuer das Essen&."","紅雀","dm02/3000270a02",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

/*
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000250b03">
"Thank you for the food&."
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000260a01">
"Thank you for the food&."
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000270a02">
"Thank you for the food&."
*/

	CreateSE("SE01","se環境_動作_食事01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Heute gibt es gekochten Fisch mit Salz&, pfannengeruehrtes Konbu und Schweinefleisch&.

Ich probiere das Schweinefleisch und bin sofort beeindruckt&.

Lecker&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
Essen&, nachdem man seine Erschoepfung ausgeschlafen hat&,
ist koestlich&. Wirklich koestlich&.

Waehrend ich das feststelle&, beobachtet Koujaku waehrend er isst Grossmutter laechelnd&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000280a02">
"Es ist wirklich gut&. Trotzdem ist es nicht ueberraschend&,
 Tae-sans Essen ist das Beste&."

{	Fw("fwタエ_通常_sigh");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000290b03">
"Hmmf&. Wie kannst du das sagen&, wenn du spontan entschieden hast her zukommen?"

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000300a02">
"Hat Aoba nicht gesagt das ich komme?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Aufeinmal bin ich schuld und Koujaku starrt mich an&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000310a01">
"Hast du nicht gesagt 'in naher Zukunft'?"

{	Fw("fwタエ_通常_normal2");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000320b03">
"Du hast wie ein Stein geschlafen&. Du bist nicht aufgestanden&,
 egal wie oft wir gerufen haben&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000330a01">
"Das war&.&.&. tja&, Ich schaetze das es stimmt&.&.&."

{	Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000340a02">
"Aber ich bin sehr dankbar fuer dieses gehoerige Mahl&."

{	Fw("fwタエ_通常_shock");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000350b03">
"Verstehe mich nicht falsch&. Ich hatte Lebensmittel die bald ablaufen 
 und das war die perfekte Gelegenheit sie zu verwenden&."

{	Fw("fw紅雀_通常_cheese2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000360a02">
"Deshalb liebe ich dich so&, Tae-san&."

{	Fw("fwタエ_通常_shout");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000370b03">
"Sei einfach leise&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Grossmutter schnaubt und stopft ihren Mund mit Konbu&. 
Koujaku beobachtet sie laechelnd&.

Aus irgendeinem Grund&, scheint Grossmutter Koujaku zu moegen&.

Koujaku kam mit seiner Mutter auf die Insel&,
aber man traf ihn hauefiger alleine an&.

Deshalb haengt er oft mit mir rum und kommt zu mir nach Hause&. 
Natuerlich ist er viel auch viel von Grossmutters Essen&.

So wie ich Grossmutter kenne&, denkt sie jetzt das sie 
einen zweiten Enkel hat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000380b03">
"Bleibst du die Nacht ueber hier?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
fragt Grossmutter mit erhobenen Augenbrauen&. Koujaku der gerade etwas Essen wollte&, 
hielt ein und nickte ohne zu zoegern&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000390a02">
"Das hatte ich vor&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/3000400b03">
"Wirklich&, wuerde es dich umbringen etwas Scham zu haben?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000410a01">
"Tja&, es ist so wie immer&. Aber ich habe Arbeit&, also werde ich dich schlagen&,
 auch wenn du schlaefst&."

{	Fw("fw紅雀_通常_smile");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm02/3000420a02">
"Aber ist es nicht anders herum? Ich habe dich immer zaertlich geweckt
 auch wenn du nicht aufstehen wolltest&."

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm02/3000430b16">
"Stimmt das nicht?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/3000440a01">
"&.&.&.Ihr Leute&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Nachdem er ein irritierend nettes Laecheln an den Tag gelegt hatte&, 
beginnt Koujaku weiter aus der Schuessel zu essen&.

Wir redeten zu Dritt dummes Zeug und die Zeit verging im Flug&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//※次ファイル["dm0240.nss"]

}
