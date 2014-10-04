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


scene dm0140.nss_MAIN
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
	#bg104031_5_蒼葉宅自室=true;
	#bg104041_3_蒼葉宅ベランダ=true;
	#bg001011_1_碧島全景=true;

	#MF_0140ムービー１=true;
	#MF_0140ムービー２=true;
	#MF_0140ムービー３=true;
	#MF_0140ムービー４=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0150.nss";

}


scene dm0140.nss
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

	CreateSE("SE01","se物体_蒼葉宅照明_点灯01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ich betrete den Raum und nehme Ren&, welcher im Schlafmodus ist&,
aus meiner Tasche und starte ihn&.

Mein Kopf schmerzt immer noch&.&.&.

Ich denke darueber nach frische Luft zu schnappen und gehe auf die Veranda&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蒼葉自室_ベランダ扉開閉
	CreateSE("SE01","se物体_蒼葉自室窓_開閉01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg104041_3_蒼葉宅ベランダ");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Ich gehe auf die Veranda und lehne mich an das Gelaender&.
Der kuehle Wind fuehlt sich angenehm an&.

{
	SoundPlay("@dm012",0,450,true);
}
Ich atme kurz aus und schaue in den Himmel&, nur die eckigen Schatten der Gebauede 
sind im Weg&.

Die Szenerie ist nicht so wie sie mal war&.
Es war schoener&. Diese Insel&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg001011_1_碧島全景");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg001011_1_碧島全景.jpg");
	CreateTextureSP("絵背景弐", 100, 0, InBottom, "cg/bg/m/bg001011_1_碧島全景_m.jpg");

	Move("絵背景弐", 0, @-70, @80, null, true);

	FadeDelete("絵板写", 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Midorijima schwimmt in der entfernten See suedwestlich der japanischen 
Island Honshu&.

Verkaufsargumente dieser Insel waeren die blaue See&, weisser Sand und das 
weitverbreitete Blattwerk&.

&.&.&.zumindest waren sie es einmal&. 

Das sind alles Geschichten aus der Vergangenheit&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景弐", 1000, @70, @-50, Dxl1, false);
	FadeDelete("絵背景", 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Nun nimmt allein Platinum Jail auf der oestlichen Seite etwa ein Drittel der Insel ein&.

Da das Old Resident District und Platinum Jail durch eine Mauer getrennt sind&, 
koennen wir nicht auf die andere Seite sehen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：東江の顔出しはしない方がよいかと思ったのでシルエットです。
	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵立絵", 550, Center, InBottom, "cg/bu/bu東江_通常_normal.png");
	CreateStencil("絵マスク１",1500,center,InBottom,128,"cg/bu/bu東江_通常_normal.png",false);
	CreateColorSP("絵マスク１/絵色１", 1000, 0, 0, 800, 600, "BLACK");

	SetAlias("絵マスク１","絵マスク１");

	Move("絵マスク１", 0, @0, @40, null, true);
	Move("絵立絵", 0, @0, @40, null, true);

	DrawTransition("絵マスク１/絵色１", 0, 0, 400, 300, null, "cg/data/slide_02_00_0.png", true);

	CreateTextureSP("絵ロゴ", 500, Center, Middle, "cg/ef/eflロゴ東江.jpg");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Ich habe die Vertreter von Toue Inc&.&, die Firma welche Platinum Jail gebaut hat&, 
schon mehrfach im Fernsehen und Netz gesehen&.

Als ich noch ein Kind war&, hat Toue Inc&. anscheinend verlangt das die Insel waehrend 
des Baus von Platinum Jail gerauemt wird&.

Trotzdem&, den Einwohnern wurden luxorioese Haeuser und Geld versprochen&, 
deshalb gingen die meisten von Ihnen nach Verhandlungen mit Toue&.

Doch es gab immernoch ein paar sture Einwohner die nicht gehen wollten&. 
Wir gehoerten dazu&.

Egal welche Konditionen angeboten wurden&, sie konnten ihre Heimatstadt in der sie 
geboren und aufgezogen worden sind nicht verlassen; Sie ignorierten die 
Rauemungsbescheide wieder und wieder&.

Nach einiger Zeit hoerte man nichts mehr von Toues Seite&.

Sie gaben auf&, da sie angeblich "Niemanden zwingen wollen&."

Aber tatsaechlich gaben sie die uebrigen Einwohner einfach auf&.

Wenn du keine Verhandlung willst&, soll es so sein&. 
Leb oder Stirb&, es liegt in deiner Hand&.

Und dann zeigte Toue sein wahres Gesicht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵マスク*");
	Delete("絵マスク１/絵*");
	Delete("絵ロゴ");
	Delete("絵立絵");
	Delete("絵背景*");
	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/bg001011_1_碧島全景.jpg");
	CreateTextureEXsub("絵背景上", 205, Center, Middle, "cg/bg/bg001011_1_碧島全景.jpg");
	Fade("絵背景上", 0, 600, null, true);

	FadeDelete("絵板写", 800, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Sie sagten das sie die Infrastruktur der Insel warten wuerden und schraenkten 
die Wasser-&, Gas- und Warenzufuhr ein&. So wurden die uebrig gebliebenen 
Einwohner in das Old Resident District vertrieben&.

Das einst so schoene Midorijima war ruiniert&.&.&. Egal wie man es
umschreiben moechte&, ein Land kann solch eine Tyrannei nicht dulden&. 

Die Einwohner&, die das glaubten&, appellierten ans Festland&.

Aber da seitdem nichts geschehen ist&, ist es zwecklos auf Besserung zu hoffen&.

Seit vor etwa drei Jahren brauchte man&, wenn man ans Festland wollte&, 
die Erlaubnnis des Verwaltungsbueros&, welches Toue gehoert&.

Anders gesagt&, die Einwohner koennen die Insel nicht ohne Toues Erlaubnis verlassen&.

So eine Erlaubnis wird nie erteilt&. Niemals&.

Es ist Toues Art zu zeigen&, dass die jenigen welche die Rauemungen ignoriert haben&,
einen Fehler begangen haben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	OnBG(10,"bg104041_3_蒼葉宅ベランダ");
	FadeBG(0,true);

	FadeDelete("絵板写", 500, null, true);

//※軽い物音（蓮の足音・ベランダ）
	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1200, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Waehrend ich ins Weltall starre&, hoere ich etwas an meinen Fuessen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000010a06">
"Aoba&. Was machst du mit den Daten die du heute heruntergeladen hast?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.?

//{	Fw("fw蒼葉_通常_shock");} <-Freeze
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000020a01">
"&.&.&.Heruntergeladen?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
	DeleteFw();
	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Ich habe mich ans Geruest gelehnt&, doch Rens Worte
vergraemen mich und ich richte mich auf&.

&.&.&.Das stimmt. Ich habe es komplett vergessen&. Es war als die Balgen in den Laden 
gestuermt sind&.

Bevor ich es bemerkte erschien ein "Download abgeschlossen" Bildschirm&.
War es&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000030a01">
"Enthalten die Daten einen Virus?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000040a06">
"Ich habe nichts gefunden&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000050a01">
"Inhalt?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000060a06">
"Es ist eine Art von Spiel in der sich der Spieler bewegt und Informationen 
 sammelt in dem er einen Charakter manipuliert&, gegen Gegner kaempft&, 
 Erfahrung sammelt und sein Level steigert&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000070a01">
"Ah&, ein RPG&, huh? Muss ich etwas bezahlen?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000080a06">
"Es ist kostenlos&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000090a01">
"Huh&.&.&. also habe ich nicht wegen den Balgen etwas gekauft&. 
 Ist es eine Demo?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000100a06">
"Das ist unbekannt&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000110a01">
"Tja&, wenn es nicht seltsam ist koennte ich es ausprobieren&. 
 Einfach nur um Zeit tot zu schlagen&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000120a06">
"Soll ich es starten?"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000130a01">
"Bitte&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000140a06">
"Verstanden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(1000,true);

	Wait(1000);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, 0, Middle, "cg/bg/m/bg104031_5_蒼葉宅自室_m.jpg");

	Move("絵背景", 0, @0, @-80, null, true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 500, @0, @-40, null, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Ich nehme Ren in meinen Arm&, gehe zurueck ins Zimmer und setze mich auf mein Bett&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm002", 1000, 0, null);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル画像表示領域黒.png");
//	CoilPictSet(303,16,"dx/mvdot014_eng.ngs");

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑥画像表示２（メールダウンロードからの表示）
	CoilPictFade_Down();

	//○コイル待ち
	CoilWait();

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0140ムービー１","dx/mvdot014_eng.ngs");
	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("２","dx/mvdot014aloop_eng.ngs");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0140ムービー１");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0140ムービー１");
	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("２");


//待ち
//	CoilPictWait();
//	CoilPictCon("２","dx/mvdot014aloop_eng.ngs");
//	CoilPictFadeChan("２");
	Wait(500);



//覇：下記ムービー？

//※演出：レトロゲーム
//※演出：ファミコン風画面＆文字の表示
//※ＳＥ：ファミコン風画面＆文字の表示（ポポポポ等）

//※ゲーム内容
//　＊＊＊
//　「たすけて・・・」

//　＊＊＊
//　「だれか、たすけてください・・・」

//　＊＊＊
//　「だれか、ここから　だして・・・」

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0080]

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000150a01">
"Das ist wirklich retro&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Kio&, Nao und Mios Generation haben so etwas wahrscheinlich noch nie gesehen&.

Ich habe diese Art von alten Spielen nirgendwo&, ausser auf Videoseiten gesehen&.

Nachdem die Nachricht der Prinzessin vorbei war&,
erscheint ein Titelbildschirm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：レトロゲーム
//※演出：★レトロゲームタイトル「Silent Oath」

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0140ムービー２","dx/mvdot014a_eng.ngs");
	CoilPictCon("0140ムービー３","dx/mvdot014b.ngs");
	CoilPictCon("５","dx/mvdot014bloop.ngs");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0140ムービー２");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0140ムービー２");
	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0140ムービー３");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0140ムービー３");

//	CoilPictFadeChan("３");
//	CoilPictWait();
//	CoilPictFadeChan("４");
//	CoilPictWait();

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("５");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
&.&.&.Es ist so alt&, es ist fast schon eine erfischende Abwechslung&.

Waehrend ich anfange mich immer seltsamer zu fuehlen&, druecke ich "START"&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：レトロゲーム
//※演出：ファミコン風画面の表示
//※ＳＥ：ゲームスタート
//※ＳＥ：ゲーム効果音

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("黒","cg/ef/efコイル画像表示領域黒.png");

	CreateSE("SE01","se8bit_通常_その他");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("黒");
	Wait(2000);

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("0140ムービー４","dx/mvdot014c.ngs");

	SoundPlay("@dm8bit001",0,450,true);

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("静止画","cg/ef/efコイルmvdot014c.png");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("0140ムービー４");
	//○⑥画像描画待機ムービー用
	CoilPictWaitSkip("0140ムービー４");

	//▽⑥追加画像瞬間表示
	CoilPictFadeChan("静止画");

	Wait(500);

//※ゲーム内容
//村の横に立つ
//↓
//移動
//↓
//森（入口洞窟でOK？）
//↓
//サイドに木のある道を直進
//↓
//森を抜ける
//↓
//海辺に出る
//↓
//「ＴＯ　ＢＥ　ＣＯＮＴＩＮＵＥＤ」
//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0093]

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000160a01">
"Huh? Fortsetzung folgt? Hat das Spiel mehrere Teile?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/4000170a06">
"Sieht danach aus&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000180a01">
"Ich verstehe&. Es hat genau die laenge eines Spiels&,
 welches man spielt um Zeit tot zu schlagen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm8bit001", 0, 0, null);
	CoilAllDelete(300,-50,370);

	Wait(500);

	SetVolumeEX("@dm002", 2000, 450, null);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Ich weiss nicht ob es unterhaltsam war oder nicht&, aber falls
es ein Sequel gibt&, spiele ich es vielleicht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Nachdem ich den Spielbildschirm geschlossen habe&, gaehne ich&.

Ich war so aufs Spiel fokusiert&, dass ich gar nicht bemerkt habe
wie muede ich bin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/4000190a01">
"Ich glaube es ist Zeit sich bettfertig zu machen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Ich schliesse die Verandatuer und den Vorhang&, bevor ich ins Badezimmer gehe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	ClearFadeAll(2000, true);

	WaitKey(3000);

//※次ファイル["dm0150.nss"]

}
