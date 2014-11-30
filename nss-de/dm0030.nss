//<continuation number="750">
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


scene dm0030.nss_MAIN
{
	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("chara0000","Haga-san","Ich vergass",true,true);
	CoilMailAdd("chara0010","Haga-san","Bzgl. der Sache nach der ich gefragt hatte",true,true);
	CoilMailAdd("chara0020","Koujaku","Dieser Sonntag",false,true);
	CoilMailAdd("chara0030","Mizuki","Wie geht es dir?",false,true);
	CoilMailAdd("chara0040","Grossmutter","Abendessen",false,true);
	CoilMailAdd("chara0050","Koujaku","Wegen Damals",false,true);

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

	#dm0030_Add1=true;

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("hime0010","Entfuehrte Prinzessin","Bitte rette mich",true,true);

	//○③メール既読化（リストが出ていないとき）
	CoilMListOnRead("hime0010");


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0040.nss";

}


scene dm0030.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	CreateTextureSP("絵背景90", 90, -458, -364, "cg/bg/l/bg102011_5_平凡店内_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
Ich strecke mich und schaue auf die Digitaluhr auf dem 
Tresen&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵背景90", 1000, 0, null, true);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSP("絵窓", 2000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓/絵画像", 1010, 0, -68, "cg/ef/eflロゴ平凡.jpg");

	DrawDelete("絵板写", 200, 100, null, "slide_05_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Dieser Laden bietet alles von kleinen Zusatzteilen bis hin 
zu komplexen Metallteilen zum Vorzugspreis an&, 
Junk Shop Heibon&.

Die Raffinesse des Namens zog mich an und ich fing an hier 
zu arbeiten&. Ich frage mich wie lange schon&.&.&.
Egal&,es ist lang her&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵窓*");
	Delete("絵窓/絵*");
	DrawDelete("絵板写", 100, 200, Dxl3, "slide_05_01_1", true);


//※コイル_メール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000010a01">
"&.&.&.Hm? Eine Nachricht&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Ich war gerade am Einschlafen als mein Coil klingelte&.

Ein Coil ist so eine Art Telefon&, aber doch viel 
praktischer&. 

Man kann damit telefonieren&, Nachrichten schreiben&,
Zahlungen taetigen&, sich ausweisen und natuerlich 
fernsehen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000020a01">
"Mal sehen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※コイル_操作

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,100);

	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	CoilNewFade();

	//待ち
	CoilWait();

//コイルメールボックス表示
//差出人「とらわれの姫」
//件名「たすけてください」
//本文非表示

	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(500,100);

	//▼③メールリスト表示１（通常表示）
	//CoilMListFade();
	//▼③メールリスト表示２（メールNEWからの遷移）
	CoilMListFade_New();

	//○③新規メール追加
	CoilMailAdd2("hime0010","Entfuehrte Prinzessin","Bitte rette mich",true);

	//待ち
	CoilWait();

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000030a01">
"Entfuehrte Prinzessin?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Ist das eine neue Art von Werbung?
Vielleicht Werbung fuer Erwachsene&.

So etwas wie "Hilf mir&, Ich bin wegen meinem Koerper 
aufgewuehlt"&, oder so&.

{	//○③メールリスト内部移動『CoilMListMove("移動先のメールナット名",秒数)』
	CoilMListMove("hime0010",500);
}
Loeschen&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//待ち
	CoilWait();

	CreatePlainSP("絵板写", 30000);

	CoilMListDelete();
	//待ち
	CoilWait();

	FadeDelete("絵板写", 250, null, true);

//※コイル_メール開封／蒼葉の指が触れて、メールが開封されてしまう。本人は気付いてない。
	CreateSE("SE02","se物体_コイル_操作音02");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 10, -3, 1, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000040a01">
"Geh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Waehrend ich mich auf meinen Coil konzentrierte&, schlug 
etwas in meine Taille&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵背景90", 500, 1000, null, true);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15.ogg");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032
Ich falle vom Stuhl und etwas schweres landet auf meinem 
Ruecken&.

Drei kichernde Stimmen&.
Die Schuldigen waren&.&.&.

{
	SoundPlay("@dm003",0,450,true);

	St("C",740, @0,@50,"buナオ_通常_normal");
	Move("@C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000050b13">
"Aoba ist aufgeschlagen!"

{
	St("L",730, @-50,@0,"buキオ_通常_normal");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000060b10">
"Aufgeschlagen wie ein Buch!"

{
	St("R",730, @50,@0,"buミオ_通常_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000070b11">
"Du bist so uncool!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ナオキオミオの紹介演出
//voice/ex/0000090c06
	Profile("悪ガキ", "ex/0000090c06");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000080a01">
"&.&.&.Wieso&.&.&.ihr&.&.&.Balgen!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Schliesslich tauchten die vier boesartigen Geschwister auf&.

Der aelteste Sohn&, Kio&, der zweitaelteste Sohn&, Nao&, 
und die Aelteste&, Mio&.

Eine Gruppe von nervigen Kindern aus der Nachbarschaft die 
nur kommen um hier herum zu toben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000090a01">
"Ich hab's euch schon so oft gesagt&, das ist kein 
 Spielplatz! Begreift ihr Kinder gar nichts?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);

	St("C",740, @0,@0,"buナオ_通常_shout");
	FadeSt("C",200,true);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000100b13">
"Aaah! Aoba schaut sich perverse E-Mails an!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	St("L",730, @0,@0,"buキオ_通常_shout");
	FadeSt("L",200,true);
	Move("@StNameL/L*", 200, @50, @0, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFFR("@StNameL/L*",200,1000,150,0,0,30,null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000110b10">
"Eh!?"

{
	DeleteFw();

	St("R",730, @0,@0,"buミオ_通常_shout");
	FadeSt("R",200,true);
	Move("@StNameR/R*", 200, @-50, @0, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);
	FadeFFR("@StNameR/R*",200,1000,150,0,0,30,null, true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000120b11">
"Kann nicht sein!"

Nao erhebt seine Stimme nachdem er ueber meine Schulter auf
den Coil geschaut hat und sofort lehnen sich auch die 
Anderen ueber mich&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I-Ich werde ersticken.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000130a01">
"Geht von mir runter&, ihr daemlichen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwナオ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000140b13">
"Perverse E-Mail! Perverse E-Mail! Aoba ist ein 
 Perversling! Perversling!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwミオ_通常_shout2");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000150b11">
"Erwachsene sind so schmutzig!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwキオ_通常_shout");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000160b10">
"Nu-uh! Es ist eine Nachricht ueber das Kaufen von boesem 
 Zeug! Weil dieser Laden so zwielichtig ist!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwナオ_通常_normal");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000170b13">
"Zwielichtiigg! Zwielichtiigg!!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwミオ_通常_shout");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000180b11">
"Dieser Laden ist echt Scheisse!"

{
	Fw("fw蒼葉_通常_rage");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000190a01">
"Ugh&.&.&.Guh&."

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwキオ_通常_shout");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000200b10">
"Okay! Verhaften wir den perversen&, schmutzigen und 
 zwielichtigen Aoba!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwミオ_通常_normal");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000210b11">
"Machen wir das!"

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,20,null, true);
	Delete("絵板写");

	Fw("fwナオ_通常_shout");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000220b13">
"Verhaften!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ11");
	MusicStart("SE02",0,700,0,1000,null,false);

//※コイル_メール開封、通信中…完了。
	CreateSE("SE03","se物体_コイル_アラート");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

	FwPro("fw蒼葉_通常_pain",5500,"fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000230a01">
"Guh&, ugh&.&.&. haut schon ab&, ihr Baaaalgen!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("絵背景*", 250, null, true);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,700,0,1300,null,false);
	CreateSE("SE03","se人体_衝撃_転倒02");
	MusicStart("SE03",0,700,0,1500,null,false);

	St("ML",730, @0,@0,"stキオ_通常_shout");
	St("C",740, @0,@0,"stナオ_通常_shout");
	St("MR",730, @0,@0,"stミオ_通常_shout");
	FadeAllSt(200,true);

	FadeFFR("@StNameML/ML*",0,1000,150,0,0,20,null, false);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,20,null, false);
	FadeFFR("@StNameMR/MR*",0,1000,150,0,0,20,null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//※同時
//【ミオ】
//<voice name="ミオ" class="ミオ" src="voice/dm00/3000240b11">
"Waaaaaaaaaaaaaaahh!!!"{WaitAddText2();}
<BR>

//※同時
//【キオ】
//<voice name="キオ" class="キオ" src="voice/dm00/3000250b10">
//「わーーーーー！！！」
//※同時
//【ナオ】
//<voice name="ナオ" class="ナオ" src="voice/dm00/3000260b13">
//「わーーーーー！！！」

</PRE>
	SetText();
	AddText(1,""Waaaaaaaaaaaaaaahh!!!"","ミオ","dm00/3000240b11",false,true,1000);
	AddText(2,""Waaaaaaaaaaaaaaahh!!!"","キオ","dm00/3000250b10",false,true,1000);
	AddText(3,""Waaaaaaaaaaaaaaahh!!!"","ナオ","dm00/3000260b13",false,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 200, @0, @80, Axl1, false);
	Move("@StNameMR/MR*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Ich schnelle mit wackligen Knien hoch und versuche sie 
abzuschuetteln&.

Sie interessiert es nicht ob ich sie kindisch nenne&.
Die Kinder wuerden nie einfach so aufgeben&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fwナオ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000270b13">
"Hey&, hey&, das Ding da auf dem Regal&, wofuer verwendet man 
 das?"

{
	Fw("fwキオ_通常_normal");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000280b10">
"Damit kann man wahrscheinlich jemanden verpruegeln!"

{
	Fw("fwミオ_通常_shout");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000290b11">
"Gruuselig! Jungen sind Wilde!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
Sie haben ihre Aufmerksamkeit bereits auf etwas Anderes 
gerichtet&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	FwPro("fw蒼葉_通常_rage",3000,"fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000300a01">
"Ihr&.&.&. Geh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 11000);

	//■⑤ダウンロード設置『CoilDownSet(X位置,Y位置)』
	CoilDownSet(382,200);

	//▼⑤ウンロード表示１（通常表示）
	CoilDownFade();
	//○⑤ウンロードスタート『CoilDownStart(秒数)』
	CoilDownStart(0);
	//○⑤ウンロード完了
	CoilDownComp();

	//待ち
	CoilWait();

	FadeDelete("絵板写", 200, null, true);

	CreatePlainSP("絵板写", 11000);
	CoilDownDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Ich war schokiert als ich auf meinen Coil schaute&.
Er zeigte einen "Download Abgeschlossen" an&.

Stimmt&, Ich hatte das Gefuehl&,dass mein Coil vorhin einen 
Ton von sich gegeben hatte&.&.&.

Vielleicht habe ich aus Versehen einen Knopf gedrueckt&, 
als mich die Balgen attackiert haben&.

Ich hoffe mal das ich nicht irgendein seltsames Programm 
heruntergeladen habe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵板写", 200, null, true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000310a01">
"Aaah&, komm schon&, das ist schrecklich&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵板写");
	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Waehrend ich verwirrt da stehe&, laeutet die Tuerglocke&.

{
	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000320b07">
"Puh&, Die Lieferaddresse war ziemlich weit entfernt&."

Der Ladenbesitzer&, Haga-san&, welcher gerade etwas 
ausgeliefert hatte&, ist zurueck&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
//羽賀紹介演出
//voice/ex/0000100c06

	Profile("羽賀", "ex/0000100c06");
{
	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000330b07">
"Tut mir leid das ich mich verspaetet habe&, Aoba-ku&.&.&."

{
	St("C",740, @0,@0,"st羽賀_通常_normal2");
	FadeSt("C",200,true);
}
Haga-san's Laecheln verschwindet als er die boesartigen 
Balgen sieht&.

Angesichts des Schadens den Sie angerichtet haben&, ist das
eine normale Reaktion&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000340b07">
"&.&.&.Oh&, ihr Kinder&, Hallo&. Ihr seid hier&."

{
	DeleteAllSt(180,true);

	St("C",740, @0,@50,"stナオ_通常_normal");
	Move("@C*", 180, @0, @-50, Dxl1, false);
	FadeSt("C",180,true);
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000350b13">
"Kio&, nimm das ruunter&."

{
	St("L",730, @-50,@0,"stキオ_通常_shock");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@L*", 200, 0, 30, 0, 0, 500, null, false);

	SetVolumeEX("SE*", 1000, 0, null);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000360b10">
"Warte eine Sekunde&. Los g&.&.&.Hiya!"

{
	St("R",730, @50,@0,"stミオ_通常_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000370b11">
"Kio ist kleiner als ich gedacht habe!"

{
	St("L",730, @0,@0,"stキオ_通常_shout");
	Shake("@L*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("L",200,true);
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000380b10">
"Was hast du gesagt?!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000390b07">
"H-Hey Kinder&, es ist gefaehrlich im Laden zu spielen&. 
 Ihr koenntet euch verletzen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Warnt Haga-san verwirrt&.
Aber die Balgen hoeren nicht zu&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwキオ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000400b10">
"Nur noch ein Zentimeter&.&.&.! Eih!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000410b07">
"K-Kinder&.&.&."

{
	Fw("fwキオ_通常_shout");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000420b10">
"Aaagh! Du bist so laut!"

{
	SetVolumeEX("@dm*", 1000, 0, null);
}
{
	Fw("fwナオ_通常_angry");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000430b13">
"Sei leise Glatzkopf!"

{
	Fw("fwキオ_通常_fear");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000440b10">
"&.&.&.Ah&."

{
	Fw("fwミオ_通常_fear");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000450b11">
"Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000460a01">
"Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
&.&.&.Oh Junge&, er hat es gesagt&.

Die Luft um Haga-san kommt zum Stillstand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000470b07">
"&.&.&.Kinder&. Entschuldigt das ich frage&, aber&.&.&."

{
	CreateTextureEXmul("絵効果201", 201, 0, -530, "cg/data/slide_02_01_0.png");
	Move("絵効果201", 3000, 0, 0, Dxl3, false);
	Fade("絵効果201", 3000, 1000, null, false);
	CreateTextureEX("絵背景151", 151, 0, 0, "cg/ef/efbg怒りの業火.jpg");
	CreateTextureEX("絵背景150", 150, 0, 0, "cg/ef/efbg怒りの業火.jpg");
	Fade("絵背景151", 3000, 1000, null, false);
	Fade("絵背景150", 3000, 1000, null, false);

	CreateSE("SE炎","se環境_自然_炎01L");
	MusicStart("SE炎",3000,500,0,1000,null,true);

	Shake("絵背景151", 500000, 1, 0, 0, 0, 500, null, false);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000480b07">
"Was war das gerade&.&.&.?"

{
	SetVolumeEX("SE炎", 3000, 700, null);
	Move("絵背景151", 5000, 0, -290, Dxl3, false);
	Move("絵背景150", 5000, 0, -290, Dxl3, false);

	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000490b07">
"Kommt schon&, sagt es nocheinmal&. 
 Die erste Silbe war &.&.&. Gla?"

{
	Fw("fwナオ_通常_fear");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000500b13">
"Gla&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000510b07">
"Gla?"

{
	Fw("fwナオ_通常_fear");
}
//【ナオ】
<voice name="ナオ" class="ナオ" src="voice/dm00/3000520b13">
"Gla&.&.&. Gla&.&.&. Gla-Glat&, das ist schlecht&, mein Hals tut 
 weh&, also ich gehe nach Hause!"

{
	Fw("fwキオ_通常_fear");
}
//【キオ】
<voice name="キオ" class="キオ" src="voice/dm00/3000530b10">
"Ja&, lasst uns gehen!"

{
	Fw("fwミオ_通常_fear");
}
//【ミオ】
<voice name="ミオ" class="ミオ" src="voice/dm00/3000540b11">
"Gehen wir!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Die boesartigen Balgen rennen aus dem Laden&.

{
	Move("絵背景151", 3000, 0, -450, Dxl1, false);
	Move("絵背景150", 3000, 0, -450, Dxl1, false);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000550b07">
"&.&.&.Gla&.&.&.? Was kam nach Gla&.&.&.&.Was ist mit dem Gla&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000560a01">
"Ah stimmt&, Boss! Ja&, ja&, hoeren sie sich das an!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Rede ich schnell auf Haga-san ein&.

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000570a01">
"Es gab mehr Bestellungen fuer die S-Serie der A-Teile."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000580b07">
"&.&.&.Teile?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000590a01">
"Ja! Wow&, genau wie wir angenommen haben! 
 Genau wie Sie gesagt haben! Ein Zuwachs 
 von 50% im letzten Monat!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE炎", 3000, 400, null);

	Move("絵背景151", 3000, 0, -350, Dxl1, false);
	Move("絵背景150", 3000, 0, -350, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0164]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000600b07">
"Ist das&.&.&.so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000610a01">
"Ja&, so ist es! Die Verkaeufe steigen! Um das Doppelte!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Delete("絵効果*");
	Delete("絵背景*");
	FadeDelete("絵板写", 1000, null, true);

	St("C",740, @0,@0,"st羽賀_通常_normal2");
	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
	FadeStPro("C", 3200, 180);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000620b07">
"Verkauefe&.&.&.steigen!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_キラキラ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm002",0,450,true);

	St("C",740, @0,@0,"st羽賀_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000630b07">
"So&, so&, schoen das zu hoeren&."

{
	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000640b07">
"Wenn sie sich so gut verkaufen&, sollten wir den Vorrat 
 etwas erhoehen&."

{
	SetVolumeEX("SE*", 1000, 0, null);
	DeleteAllSt(200,true);
}
Nachdem Haga-san die guten Neuigkeiten gehoert hat&, 
beruhigt er sich wieder&.

Was fuer eine Erleichterung&.&.&.Das war gefaehrlich&.

Haga-san wird abscheulich sobald ihm der Geduldsfaden 
reisst&.

Nachdem er sich beruhigt hat&, rueckt er seine Brille 
zurecht&, hebt seine Augenbrauen, und lacht&.


{
	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000650b07">
"Ach&, wirklich&.&.&.Sie sind schon nervige Kinder, oder?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000660a01">
"J-Ja&. Oder?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000670b07">
"Wenn sie nicht so boshaft waeren&, waeren sie ganz 
 niedlich&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000680a01">
"Das ist sicher!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Es ueberrascht mich immer wieder&, wenn ich sehe wie er zu 
einer vollkommen anderen Person wird&.

Es versteht sich von selbst das solche Leute schnell so 
werden koennen&.&.&.

{
	Fw("fw羽賀_通常_normal2");
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000690b07">
"Oh ja&, Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_紙_袋漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
Haga-san laueft zum Tresen und hebt den Papierbeutel am 
Boden auf&.

{
	St("C",740, @0,@0,"st羽賀_通常_worry");
	FadeSt("C",200,true);
}
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000700b07">
"Es tut mir Leid aber&, koenntest du das zum Kurier bringen?
 Du kannst danach auch gehen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000710a01">
"Eh&, ist das in Ordnung?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000720b07">
"Ja&. Tatsaechlich&, kommt ploetzlich ein Kunde&, also kam
 mir der Einfall, den Laden heute frueher zu schliessen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000730a01">
"Wenn das so ist&, mach ich das&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
Ich hebe meine Tasche auf und nehme Haga-san den 
Papierbeutel ab&.

Ich schaue kurz auf die Quittung und stelle fest das das 
Liefeungsziel etwas weiter entfernt ist&.

Dieses Paket geht an den Kurier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/3000740a01">
"Ich gehe dann&. Und danke fuer Heute&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st羽賀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【羽賀】
<voice name="羽賀" class="羽賀" src="voice/dm00/3000750b07">
"Ja&, gute Arbeit&. Sei vorsichtig&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0040.nss"]

}
