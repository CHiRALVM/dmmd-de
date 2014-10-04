//<continuation number="510">
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


scene dm0070.nss_MAIN
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
	#bg103011_5_デリバリーワークス店内=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0080.nss";

}


scene dm0070.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	CreateTextureSP("絵背景100", 100, -461, -412, "cg/bg/l/bg101041_1_旧住民区通り裏路地05_l.jpg");//-895, -479

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ich bin am Kurier angekommen: Delivery Works&.

Ich betrete den Laden durch die automatische Tuer und werde von der laechelnden 
Yoshie-san begruesst&, welche am Tresen sitzt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドアデリバリ_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg103011_5_デリバリーワークス店内");
	FadeBG(0,true);

	FadeDelete("絵背景100", 1000, null, true);

	St("C",740, @0,@0,"stヨシエ_通常_normal");
	FadeSt("C",200,true);

	SoundPlay("@dm003",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000010b15">
"Guten Tag&. Oh&, Aoba-chan&. Hallo!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000020a01">
"Danke&, wie immer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Ich verbeuge mich leicht und lege den Papierbeutel auf den Tresen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵マスク上", 110, 0, 0, "ciライン_00_00", true, "ciライン_00_00z");

	CreateTextureSP("絵マスク上/絵背景", 100, -742, -399, "cg/bg/l/bg103011_5_デリバリーワークス店内_l.jpg");
	Zoom("絵マスク上/絵背景", 0, 2000, 2000, null, true);
	Request("絵マスク上/絵背景", Smoothing);
	CreateTextureSP("絵マスク上/絵立絵", 100, 539, 48, "cg/st/stAMクララ_通常_normal.png");

	DrawDelete("絵板写", 200, 100, null, "slide_05_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Ein kleiner Hund mit langem&, glaenzendem Fell sitzt stolz auf dem Tresen&.

Der Hund ist das Logo von Delivery Works&, Yoshie-san's Allmate&, Clara&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵マスク*");
	DrawDelete("絵板写", 200, 100, null, "slide_05_00_1", true);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000030a01">
"Ich moechte dieses Paket verschicken&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000040b15">
"Ja&, ja&. Ich kuemmere mich um den Rest&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_紙_袋漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Mit geschickten Handgriffen prueft Yoshie-san die Addresse und 
drueckt einen Knopf in der Naehe des Tresens&.

Eine Box oeffnet sich und Yoshie-san wirft den Papierbeutel hinein&.

Delivery Works ist ein Versanddienst der Pakete sofort ueberall ins Old Resident District schickt&.

Obwohl wir auf einer kleinen Insel leben&, koennte niemand an einem Tag so weit laufen&.

Deshalb ist es hier&, wo Autos und aehnliches unpraktisch sind&, 
der Kurier ziemlich hilfreich&.

&.&.&.Nun denn&. 
Damit ist meine Arbeit fuer heute abgeschlossen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000050a01">
"Na dann&, entschuldige mich&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000060b15">
"Aoba-chan&, gehst du zurueck in den Laden?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000070a01">
"Nein&, ich gehe nach Hause&. Der Chef schliesst den Laden heute frueher&, 
 deshalb hat er mir erlaubt nach der Auslieferung 
 nach Hause zu gehen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000080b15">
"Oh! Ist das so&.&.&. Ist das nicht schoen? Kommt heute nicht die letzte Episode
 "If it's Dan"? Du kannst sie in Echtzeit ansehen!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000090a01">
"Dan&.&.&.? Was ist das?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000100b15">
"Nicht dein Ernst&, oder? 
 Habe ich es dir nicht erst erzaehlt!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000110a01">
"Ah&, hast du&.&.&. Uh&.&.&. Was war es nochmal?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"stヨシエ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000120b15">
"Es ist ein Dra-ma&, ein Dra-ma! "Goodbye With a Cheek Dance"!
 Heute wird entschieden wer der Partner wird!"

{
	St("C",740, @0,@0,"stヨシエ_通常_happy");
	FadeSt("C",200,true);
}
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000130b15">
"Ich bin mir sicher das Kaiser Matsuoka der perfekte Partner waere! 
 Dieses Laecheln ist so wunderschoen&, ich bekomme nicht genug!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000140a01">
"Richtig&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Yoshie-san dreht ihr Haar um ihren Finger&.
Dabei sieht sie fast wie ein verliebtes Schulmaedchen aus&.

Na ja&.&.&. Sie ist wirklich kein schlechter Mensch&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000150a01">
"Tja&, Ich werde mal&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000160b15">
"Wo wir gerade dabei sind Aoba-chan&, 
 hast du schon gehoert? Du weisst schon&, davon&. 
 Ich glaube du weisst es noch gar nicht!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Yoshie-san scheint es ziemlich Ernst zu meinen und
zieht ihre Augenbrauen zusammen&.

&.&.&.Sie ist kein schlechter Mensch&.&.&.

Ich gebe auf und beuge mich in ihre Richtung&.

Es sind keine anderen Menschen im Laden&, aber aus irgendeinem Grund fluestert 
Yoshie-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buヨシエ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000170b15">
"Du kennst doch Hyougadani&, im Norden? 
 Dieses gefaehrliche Viertel&."

//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000180b15">
"Es war nie ein gutes Viertel&,
 aber ich habe neulich beaengstigende Geruechte gehoert&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000190a01">
"Ja?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000200b15">
"Es gibt anscheinend ein Team&, welches von einem gefaehrlichen diabolischen
 Verbrecher angefuehrt wird!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000210a01">
"Ah&.Ich glaube die Gang heisst "Scratch"&.
 Sie scheint sich in der Gegend herum zu treiben&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000220b15">
"Ja&, die Gruppe scheint komplett aus Gefangenen zu bestehen&."

//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000230b15">
"Ausserdem gab es die Geruechte darueber&,
 das Gebauede zerstoert und Menschen entfuehrt werden
 davor auch schon&, oder?"

{
	St("C",740, @0,@0,"buヨシエ_通常_worry");
	FadeSt("C",200,true);
}
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000240b15">
"Das ist so unheimlich! 
 Man ist Nachts auf den Strassen nicht mehr sicher&."

//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000250b15">
"Und die Polizei ist unzuverlaessig&.&.&.
 Davon abgesehen das sie nichts mit uns anfangen koennen&. 
 Wirklich&, die Welt in der wir leben ist schrecklich&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Es stimmt das die Polizei des Old Resident District 
sich kaum um ihre Aufgaben kuemmert&.

Es interessiert sie nicht ob Verbrechen begangen werden&. 
Zum Beispiel&, wenn man einem Polizeibeamten nur geringfuegig stoert&,
wird man zusammengeschlagen oder sogar verhaftet&.

Sie sind genau wie die Yakuza&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buヨシエ_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000260b15">
"Aw&, ohhh&. Ich will bald nach Hause gehen&. 
 Hey&, was soll ich machen&, falls ich auf dem Heimweg angegriffen werde!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000270a01">
"Eh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se擬音_コミカル_キラキラ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("ヨシエキラキラ", 1000, Center, Middle, "cg/ef/efヨシエキラキラ.png");
	Fade("ヨシエキラキラ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Yoshie-san schaut mich mit glitzernden Augen an&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000280a01">
"&.&.&.I-Ich denke du wirst es ueberleben&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("ヨシエキラキラ", 200, null, false);

	St("C",740, @0,@0,"buヨシエ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000290b15">
"Was&, was&, waaaaas!? Aoba-chan&, wie gemein!"

//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000300b15">
"Wie kannst du einfach sagen das es in Ordnung sein wird!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000310a01">
"Ah&, tja ich bin fertig also&.&.&. Gute Arbeit heute&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【クララ】
<voice name="クララ" class="クララ" src="voice/dm00/7000320c04">
"Warte&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Waehrend ich zum Ausgang eile&, ruft mich eine andere Stimme die nicht Yoshie-san 
gehoert&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000330a01">
"Huh?"

{
	Fw("fwAMクララ_通常_normal");
}
//【クララ】
<voice name="クララ" class="クララ" src="voice/dm00/7000340c04">
"Ich frage mich was der Blaue macht?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000350b15">
"Oh Clara-chan&. Hast du Ren vermisst? 
 Das stimmt&, Clara-chan ist eine gute Freundin von Ren-chan!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
Yoshie-san hebt Clara auf ihren Arm und
schaut mich erwartungsvoll an&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000360a01">
"Uh&, ungluecklicherweise habe ich ihn Zuhause gelassen&.&.&."

{
	Fw("fwAMクララ_通常_normal");
}
//【クララ】
<voice name="クララ" class="クララ" src="voice/dm00/7000370c04">
"Er ist in deiner Tasche&, oder? 
Wolltest du gehen&, ohne das er zu mir Hallo sagt?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Wenn sie mich so unter Druck setzt&, 
kann ich einfach nicht mehr entkommen&.

Es tut mir Leid Ren&.&.&. aber ertrage es kurz&.

{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);
}
Ich nehme Ren&, welcher im Schlaf-Modus ist&, aus seiner Tasche
und beruehre auf seinen Vorderkopf um ihn zu starten&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/7000380a06">
"&.&.&.Aoba&. Was ist los?"

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000390a01">
"Ren&. Um&, koenntest du Clara-chan Hallo sagen?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/7000400a06">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Ren's Schwanz und Ohren senken sich&.

Vor ihm ist die eingebildete Clara-chan&, welche von Yoshie-san gehalten wird&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/7000410a06">
"&.&.&.&.&."

{
	Fw("fwAMクララ_通常_normal");
}
//【クララ】
<voice name="クララ" class="クララ" src="voice/dm00/7000420c04">
"Was ist los? Schlaeft er noch?"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/7000430a06">
"&.&.&.Wie geht es dir&, Clara?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMクララ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クララ】
<voice name="クララ" class="クララ" src="voice/dm00/7000440c04">
"Mir geht es gut&, Ren&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Clara wedelt froehlich mit ihrem Schwanz&. 
Yoshie-sans Blick senkt sich und sie laechelt ebenfalls&.

{
	St("C",740, @0,@0,"stヨシエ_通常_happy");
	FadeSt("C",200,true);
}
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000450b15">
"Wirklich&, Clara-chan und Ren-chan sind so gute Freunde!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000460a01">
"Ah&, ahahaha&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000470a01">
"Da das Gruessen jetzt vorbei ist&, muss ich wirklich&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000480b15">
"Ah&, warte! Warte eine Minute&, Aoba-chan!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000490a01">
"&.&.&.Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stヨシエ_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【ヨシエ】
<voice name="ヨシエ" class="ヨシエ" src="voice/dm00/7000500b15">
"Nur eine Sache! Warte nur eine Minute! Es tut mir Leid&,
 ich weiss das du gehen moechtest!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/7000510a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);

//※次ファイル["dm0080.nss"]

//※演出：暗転
	ClearFadeAll(1000, true);
	Wait(1000);
}
