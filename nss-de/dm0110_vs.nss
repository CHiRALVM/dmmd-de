//<continuation number="370">
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


scene dm0110_vs.nss_MAIN
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
	#ev011ウイトリ登場=true;

	#dm0110_vs_Add1=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0120_vs.nss";

}


scene dm0110_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	$NoTextBoxDelete=true;
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, -1190, -1656, "cg/bg/l/bg101051_5_旧住民区通り裏路地06ライム喧騒モブ_l.jpg");
	Zoom("絵背景", 0, 3000, 3000, null, true);
	Request("絵背景", Smoothing);
	FadeDelete("上背景", 0, null, true);


//※じゃり、と目の前に誰か立つ音
	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000010a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ", 1000, Center, InBottom, "cg/ev/ev011ウイトリ登場.jpg");
	Fade("絵ＥＶ", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.Ist hier jemand?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ", 4500, @0, -3, AxlDxl, true);//-40
	Wait(500);
//	SoundPlay("@dm003",0,450,true);//愉快な空気
	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Als ich aufsehe&, erblicke ich ein vertrautes Duo&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000020b04">
"Guten Abend&."

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000030b09">
"Hey&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000040b04">
"Was ist los? Fuehlst du dich nicht gut?"

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000050b09">
"Ist dir uebel weil du in der Menge gestanden bist?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ウイトリ紹介演出
//voice/ex/0000030c06
	Profile("ウイトリ", "ex/0000030c06");

{	Fw("fw蒼葉_通常_shock");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000060a01">
"Ihr beiden&.&.&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000060a01_b">
"Ja&, koennte sein&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「※：上記紹介演出入るならアップとかいらないかな？　と思ってこのタイミングでは何もしてません」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Virus ist der Brillentraeger und der Kraeftigere ist Trip&.
Ich kenne die Beiden schon seit einiger Zeit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	PrintGO("上背景", 5000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

//あきゅん「※：キャラの声と印象付けのためBUでいきます」

	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	St("MR",700, @30,@0,"buトリップ_通常_normal");
	FadeAllSt(0,true);

	FadeDelete("上背景", 500, null, true);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/1000070a06">
"Aoba&, wie geht es dir?"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000080a01">
"So-lala&, aber es wird schon&."

{	DeleteFw();}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000090b04">
"Was machst du hier? Es kommt selten vor das du Rhyme beobachtest&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000100a01">
"Tja&, es gibt keinen besonderen Grund&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @-30,@0,"buウイルス_通常_fake");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000110b04">
"Faengst du an dich fuer Rhyme zu interessieren?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000120a01">
"Nicht wirklich&."

{	St("MR",700, @30,@0,"buトリップ_通常_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000130b09">
"Dann bist du nur umhergelaufen und hier gelandet?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fw("fw蒼葉_通常_sigh3");}
	FwPro("fw蒼葉_通常_sigh3",2000,"fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000140a01">
"Bin ich nicht&. Ausserdem gilt fuer euch das selbe&, wieso schleicht ihr hier rum?"

{	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000150b04">
"Wir sind der Arbeit wegen hier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",700, @30,@0,"buトリップ_通常_normal");
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000160b09">
"Weil die Rhymer in letzter Zeit etwas ausser Kontrolle geraten sind&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Es gibt einige so genannte gefaehrlichen Vereinigungen im Old Resident District&, 
die beiden sind Mitglieder in einer&.

Ich habe sie vor einer langen Zeit kennen gelernt&, damals als ich ein Teenager 
war und dumme Dinge getan habe&.

Ich habe meine ganze Zeit im westlichen Wanibashi Bezirk verbracht und 
bin nie nach Hause gegangen und aus irgendeinem Grund war ich immer leicht reizbar&.

Als ich so lebte&, machte ich einmal einen Fehler in einem Kampf und
traff auf eine Person die Rache wollte&, schlussendlich landete ich im Krankenhaus&.

Selbst die Errinerung daran ist peinlich&.&.&.

Momentan wissen nur die Beiden und Grossmutter ueber diese Zeit bescheid&.

Einmal haben wir Kontakt verloren&, aber wir haben seit ein paar Jahren wieder welchen&.

Ich bin nun Teilzeitbeschaeftigt und die Beiden sind der Yakuza beigetraeten&.

Die Yakuza sind hier wie die Polizei&, deshalb halte ich nicht viel von ihnen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cheese2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000170a01">
"Egal&, ihr Beiden seht euch so aehnlich wie Eh und Je&. Fast wie Zwillinge&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	St("ML",720, @-30,@0,"buウイルス_通常_fake");
	St("MR",700, @30,@0,"buトリップ_通常_normal2");
	FadeSt("ML",0,true);
	FadeSt("MR",0,true);
	FadeDelete("絵板写", 200, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//※同時に表示
//【ウイルス】
//<voice name="その他" class="その他" src="voice/dm01/1000180ex">
*gleichzeitig* "Wir sind keine Zwillinge&."
<BR>

//※同時に表示
//【トリップ】
//<voice name="トリップ" class="トリップ" src="voice/dm01/1000190b09">
//"Wir sind keine Zwillinge&."

</PRE>
	SetText();
	AddText(1,""We are not twins."","ウイルス","dm01/1000180b04",true,true,1000);
	AddText(2,""We are not twins."","トリップ","dm01/1000190b09",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――



	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000200b04">
"Aoba-san&, alles in Ordnung bei der Arbeit?"

{	St("MR",700, @30,@0,"buトリップ_通常_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000210b09">
"Aaah&, du hast bei einer Eisdiele gearbeitet? Die mit den Pinguinschuerzen? 
 Wurdest du nicht nach einem Tag gefeuert?"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000220a01">
"Nicht nach einem Tag&, nach drei Tagen&. Ich bin jetzt Verkauefer in einem 
 Ramschladen&."

{	St("MR",700, @30,@0,"buトリップ_通常_think");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000230b09">
"Aah&, welcher? Byoudou?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000240a01">
"'Heibon'&. Ich arbeite dort schon seit einiger Zeit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",700, @30,@0,"buトリップ_通常_normal");
	FadeSt("MR",200,false);

	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	FadeSt("ML",200,true);
//	St("ML",720, @-30,@0,"buウイルス_通常_think");
//	FadeSt("ML",200,true);
//	St("ML",720, @-30,@0,"buウイルス_通常_normal");
//	FadeStPro("ML", 5000, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000250b04">
"Dass du einem Ort mit einem derartigen Namen arbeitest passt nicht zu dir&, 
 Aoba-san&. Nun denn&, falls du wieder gewalttaetig werden willst&, 
 ruf uns jeder Zeit an&."

{	St("ML",720, @-30,@0,"buウイルス_通常_fake");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000260b04">
"Wir sind ziemlich erfolgreich&, also ist es empfehlenswert&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000270a01">
"Haha&.&.&. Ich werde nur eure Gedanken annehmen&."

{	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000280b04">
"Ich denke immernoch oft daran&, dass ich dich wieder kaempfen sehen will&, Aoba-san&."

{	St("MR",700, @30,@0,"buトリップ_通常_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000290b09">
"Das ist richtig&, wir sind Fans&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ざわっとライムの群衆が盛り上がる
	CreateSE("SE01","se環境_ガヤ_歓声01");
	MusicStart("SE01",0,900,0,800,null,false);
	CreateSEEX("SE02","se環境_ガヤ_歓声02");
	MusicStart("SE02",0,900,0,1000,null,true);

	FwMask(-794, 120, "cg/ev/l/ev010ライムの様子_l.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【卯水】
<voice name="卯水" class="卯水" src="voice/dm01/1000300c06">
"Oh meine Guete! 'Route 44' steckt 250 Schaden ein!! 
 Haben wir den Hoehepunkt erreicht!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	SetVolumeEX("SE0*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Die Aufregung in Publikum erreicht ihren Hoehepunkt&, waehrend Usui weiter
kommentiert&.

{
	Wait(500);
	SetVolumeEX("@dm*", 2000, 0, null);
}
&.&.&.Dann&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm01/1000310b08">
"HEY&, ihr Hooligans!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE91","se人体_足音_走る03複数L");
	MusicStart("SE91",1400,700,0,650,null,true);
	CreateSE("SE92","se人体_足音_走る04複数L");
	MusicStart("SE92",2000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
Eine Stimme durchbricht die enthusiastische Atmosphaere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE9*", 800, 0, null);
	SetFrequency("SE91", 800, 100, null);
	SetFrequency("SE92", 800, 100, null);

//あきゅん「※：紹介演出次第で調整、ウイトリでやってるから足元パンとかしないよ」

	Wait(200);

	St("C",740, @0,@0,"st悪島_通常_normal");
	FadeSt("C",200,true);

//悪島紹介演出
//voice/ex/0000040c06
	Profile("悪島", "ex/0000040c06");

	SoundPlay("@dm009",0,450,true);//バトル

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Der von Polizei Offizieren begleitete&, Megaphone haltende&, 
boesartige Kriminalbeamte Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000320b04">
"Ah&, der Laermmacher ist endlich angekommen&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st悪島_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm01/1000330b08">
"Jammert nicht!!! ALL IHR ARSCHLOECHER SEID VERHAFTET!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_ガヤ_荒くれ不満01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se環境_ガヤ_歓声02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se擬音_コミカル_ダッシュ01");
	MusicStart("SE03",0,700,0,800,null,false);
	CreateSE("SE04","se人体_足音_走る03複数L");
	MusicStart("SE04",0,700,0,800,null,false);

	SetVolumeEX("SE*", 8000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Usui loest sich in Rauch auf und Rhyme haelt an&. Die Teilnehmer und Zuschauer fliehen in alle Richtungen&.

Akushima&. Er ist ein Kriminalbeamter&, der seine Macht missbraucht und tut wonach ihm
ist&.

Die Zahl der Leute auf Basis von falschen Beschuldigungen verhaftet oder von
diesem Typen misshandelt wurden reicht ins Endlose&.

Passend zu seinem hageren Erscheinungsbild&, wird er oft der der Todesgott des 
Old Resident Destrict genannt&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("ML",720, @-30,@0,"buウイルス_通常_normal");
	St("MR",700, @30,@0,"buトリップ_通常_normal");
	FadeAllSt(180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm01/1000340b04">
"Rennen wir besser weg&. Beeil dich besser auch&, Aoba-san&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/1000350a01">
"Ja&."

{	St("MR",700, @30,@0,"buトリップ_通常_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm01/1000360b09">
"Ciao&, Aoba&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE00","se人体_足音_走り去る01複数");
	MusicStart("SE00",0,700,0,800,null,false);
	DeleteAllSt(180,true);

	Fw("fw悪島_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm01/1000370b08">
"Wartet ihr Idioten!!! RENNT NICHT WEG!!! ICH WERDE JEEDEN MICKRIGEN SCHEISSER 
 HIER VERHAFTEN!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Ich renne sofort weg damit ich nicht von Akushima verhaftet werde&,
welchem wohl gleich eine Ader platzt&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolume("SE*", 700, 0, null);
	Wait(750);

//※次ファイル["dm0120_vs.nss"]


	ClearFadeAll(0, true);

}
