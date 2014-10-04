//<continuation number="280">
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


scene dm0130.nss_MAIN
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
	#bg104001_3_蒼葉宅前通り=true;
	#bg104011_5_蒼葉宅玄関=true;
	#bg104021_5_蒼葉宅台所=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0140.nss";

	//▼頭痛レベル設定
	$HALevel=1;

}


scene dm0130.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104001_3_蒼葉宅前通り");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Als ich die Wohngegend betrete und etwas weiter laufe&, 
erblicke ich ein mir bekanntes Haus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000010a01">
"Ich bin zu&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 110, Center, -100, "cg/bg/l/bg104011_5_蒼葉宅玄関_l.jpg");
	CreateMovieEX("絵動画", 2000, 286, 50, true, true, "dx/mv0003集中線01_白.ngs");
	Zoom("絵動画",0,3000,3000,null,true);

	SetShade("絵背景", MEDIUM);

	St("C",740, @0,@0,"buタエ_通常_shock");
	FadeSt("C",0,true);
	St("C",740, @0,@0,"buタエ_通常_shout");

	Request("@StNameC/C*", Smoothing);

	FadeDelete("絵板写", 0, null, true);

	Zoom("@StNameC/C*", 300, 1100, 1100, Dxl3, false);
	Shake("絵背景", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Fade("絵動画", 0, 1000, null, true);

	FadeSt("C",200,false);
	FadeDelete("絵動画", 400, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000020b03">
"Begreif es endlich!! Du dummer Enkel!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※タエ紹介演出
//voice/ex/0000050c06
	Profile("タエ", "ex/0000050c06");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Nachdem ich die Tuer geoffnet habe&, laesst Donner mein Trommelfell erzittern&. 
Meine Ohren schellen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm003",0,450,true);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	DeleteSt("C", 0,true);
	CreateTextureSP("絵背景100", 100, -222, -41, "cg/bg/m/bg104011_5_蒼葉宅玄関_m.jpg");

	St("C",740, @0,@0,"stタエ_通常_shock");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000030a01">
"So&.&.&. lauuut&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000040b03">
"Natuerlich! Ich schreie damit du mich klar und deutlich hoeren kannst!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Der echte Ursprung des Donners&.&.&. Grossmutter steht auf der Plattform 
beim Eingang&, schnaubend und Finster drein blickend&.

Ich habe mich schon immer gewundert&, woher sie diese laute Stimme hat&. 
Es ist so mysterioes&, ich kann nichts dagegen tun&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000050a01">
"Was ist nun schon wieder&, wieso bist du wuetend?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000060b03">
"Natuerlich bin ich wuetend! Der Schluessel&, der Schluessel!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000070a01">
"Schluessel?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000080b03">
"Wenn du zur Arbeit gehst&, nimm den Schluessel und schliess die Tuer! 
 Ich habe es dir schon so oft gesagt!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000090a01">
"Aah&.&.&. Ich verstehe&. Es tut mir Leid&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Als ich heute aufgewacht bin war ich spaet dran&, deshalb habe ich Panik bekommen 
und bin einfach aus dem Haus gerannt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"stタエ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000100b03">
"Sag nicht einfach nur 'Es tut mir leid'! Wirklich&, 
 wie habe ich ein Kind mit einem so schlechtem Errinerungsvermoegen erzogen?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000110a01">
"Meine Guete&, Ich konnte nichts machen&.
 Ich hab's vergessen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_sigh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000120b03">
"Natuerlich hast du wieder verschlafen und bist aus dem Haus gestuermt&. 
 Wirklich&, obwohl du 23 bist&, immernoch so hilflos&. 
 Es ist so traurig&, ich koennte weinen&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000130a01">
"Aber ich habe doch schon gesagt das es mir Leid tut! Gibt es irgendeinen Menschen der noch nie nachlaessig war?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000140b03">
"Was&, ziehlst du auf die Weltmeisterschaft im Fahrlaessig sein ab? 
 Wie oft ist das schon passiert?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000150a01">
"&.&.&.Sechs mal?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000160b03">
"Wirklich&.&.&. Ein Balg wie du&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Grossmutter zittert vor Wut&. Man kann deutlich eine blaue Ader auf ihrer Stirn 
erkennen&, das koennte gefaehrlich werden&.

Grossmutter koennte unmaechtig werden&, wenn ihr zu viel Blut in den Kopf steigt&, 
dass ist kein Witz&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000170a01">
"Ich kapiers&, Ich kapiers! Ab Morgen werde ich vorsichtiger sein&, 
 also schrei bitte nicht mehr!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_sigh");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000180b03">
"&.&.&.Hmph&. Wie oft habe ich diese Worte schon gehoert? Wenn du dich so benimmst&, 
 kann ich nicht einfach umfallen und sterben&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※足音_木の床_１人_どすどす
	CreateSE("SE01","se人体_足音_歩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	FadeDelete("絵背景*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Grossmutter schnaubt auf und geht mit lauten Schritten in die Kueche&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000190b03">
"Ach&, komm schon rein&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
&.&.&.Sie scheint sich erstmal beruhigt zu haben&.

Erleichtert ziehe ich meine Schuhe aus und betrete den Flur&.

Das Geschreie passiert fasst taeglich&, aber unser Verhaeltnis ist nicht wirklich schlecht&. 
Eigentlich ist sie ziemlich gut&.

Grossmutters Geschrei ist ein Zeichen dafuer das es ihr gut geht&. 
Wenn das Geschrei eines Tages verschwinden wuerde&, 
wuerde ich mich einsam fuehlen&.

Ich bin Grossmutter dankbar&, dass sie mich alleine aufgezogen hat 
und ich respektiere sie&. Es waere peinlich ihr das zu sagen&, also sage ich es nicht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateTextureEX("絵背景100", 100, -1023, -203, "cg/bg/l/bg104021_5_蒼葉宅台所_l.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

	SoundPlay("@dm013",0,450,true);

	CreateSE("SE01","se環境_動作_食事01L");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Grossmutter wirft in der Kueche etwas eingefrorenes in die Pfanne&.

{
	Move("絵背景100", 500, @100, @0, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);
}
Ich wasche mir am Waschbecken meine Haende&, hole mir aus einem Regal 
Essstaebchen und verteile sie auf dem Tisch&.

Meine Eltern haben auch hier mit uns gelebt&, aber sie waren schon immer Freigeister
und nie Zuhause&.

Als ein Jahr vergangen war dachte ich das sie nicht mehr wieder kommen&, 
doch dann kamen sie wieder&, nur um wieder zu verschwinden&.&.&.

Das war schon so als ich klein war&, deshalb ist das Leben mit Grossmutter alltaeglich
fuer mich&.

Deshalb war ich seltsamerweise ruhig&, falls meine Eltern wieder mal nicht wiederkamen&.
Ich habe alles Grossmutter zu verdanken&.

Auch wenn ich dafuer gesorgt habe&, dass sie aus allen moeglichen Grunden Angst um 
mich hatte&. Ich moechte die Zeit in der ich mit Grossmutter lebe festhalten&.

Selbst ohne Luxus&, so zu leben ist genug&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000200b03">
"Nun denn&, lass uns essen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Somen Nudeln&, Tunfisch&, pfannengeruehrte Shiitake Pilze&, gekochtes Gruengemuese&,
frittierter Fisch und Miso Suppe sind alle auf dem Tisch aufgereiht&.

{
	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,600,0,1200,null,false);
	CreateSE("SE02","se物体_椅子_引く01");
	MusicStart("SE02",0,600,0,900,null,false);
}
Ich setze mich neben Grossmutter und wir falten unsere Haende&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000210b03">
"Danke fuer das Essen&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000220a01">
"Danke fuer das Essen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※カチャカチャ（食事中・食器の音）
	CreateSE("SE01","se環境_動作_食事01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(500);

	Fw("fw蒼葉_通常_smile3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000230a01">
"Grossmutter&, das ist koestlich&."

{	Fw("fwタエ_通常_smile");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000240b03">
"Ist es das?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Von der Polizei gejagt werden hat mich hungrig gemacht&, deshalb ist Grossmutters Essen jetzt genau das richtige&.
 
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：１
	SetVolumeEX("SE*", 0, 0, null);
//覇：頭痛
$HALevel=1;
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Als ich mein Essen verschlinge&, rennt plotzlich ein scharfer Schmerz durch meinen 
Kopf&.

Aaah&, schon wieder&.&.&. 
Der uebliche Schmerz&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000250a01">
"Ow&, ow&, ow&.&.&."

{	Fw("fwタエ_通常_sad");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm01/3000260b03">
"Das Uebliche? Vergiss nicht nach dem Essen deine Medizin zu nehmen&."

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000270a01">
"Ja&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Vor langer Zeit&, als ich dummes Zeug gemacht habe und im Krankenhaus gelandet bin&,
wurden die Kopfschmerzen schlimmer&. Ich hatte heute schon zwei Mal Kopfschmerzen&.

Sie haben im Krankenhaus einiges untersucht&, aber sie haben die Ursache der 
Kopfschmerzen nicht feststellen koennen&.

Seitdem nehme ich eine Medizin die mir Grossmutter verschrieben hat&.

Grossmutter hat eine Approbation&, untersucht alte Leute aus der Nachbarschaft und 
verschreibt Medizin&.

Da es sicherer ist sich auf sie zu verlassen&, als auf irgendeinen ueberbezahlten Doktor
ohne Ahnung&, hat sie in der Nachbarschaft einen ziemlich guten Ruf&.

Andere Medikamente helfen nicht&,  aber wenn ich Grossmutters Medizin nehme&, 
verschwinden die Kopfschmerzen schnell&.

Das ist sicherlich ein Grund sie begabt zu nennen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/3000280a01">
"Danke fuer das Essen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Nachdem ich gegessen habe&, nehme ich die Medizin und nachdem ich den Tisch 
aufgerauemt habe&, gehe ich den zweiten Stock&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);

//※次ファイル["dm0140.nss"]

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(500);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	ClearFadeAll(0, true);

	Wait(500);

}
