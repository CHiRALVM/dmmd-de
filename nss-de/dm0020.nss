//<continuation number="320">
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


scene dm0020.nss_MAIN
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
	#ev002蒼葉登場=true;
	#ev002蒼葉登場a=true;
	#bg102011_5_平凡店内 = true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0030.nss";

}


scene dm0020.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景90", 90, -458, -364, "cg/bg/l/bg102011_5_平凡店内_l.jpg");

	CreateTextureEX("絵ＥＶ100", 100, -683, -387, "cg/ev/l/ev002蒼葉登場_l.jpg");
	Fade("絵ＥＶ100", 0, 1000, null, true);

	CreateSE("SE01","se物体_電話_鳴る平凡01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

	CreateSE("SE01","se物体_電話_取る平凡01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000010a01">
"Hallo&, Vielen Dank fuer ihren Anruf bei Junk Shop Heibon&."

{
	SoundPlay("@dm001",0,450,true);
}
//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000020e01">
"Eh&, emm&.&.&. Es gibt da etwas was ich wissen moechte&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000030a01">
"Ja?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000040e01">
"Bieten sie in ihrem Laden Einzelteile fuer Typ S II 
 Allmates an?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_パソコン_キーボード操作01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ101", 101, 0, -156, "cg/ev/l/ev002蒼葉登場_l.jpg");
	Move("絵ＥＶ101", 1000, 0, -291, Dxl3, false);
	Fade("絵ＥＶ101", 1000, 1000, Dxl1, true);
	Delete("絵ＥＶ100");

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000050a01">
"Ja &, wir haben sogar welche auf Lager&."

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000060e01">
"Ah&, stimmt das also&. Aha&. Vielen Dank&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000070a01">
"Moechten sie eine Bestellung aufgeben?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000080e01">
"Ehmm&, Nein&. Aehm&, naja&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000090a01">
"Ja?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000100e01">
"Also&, das koennte etwas ueberraschend kommen&, aber&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ102", 102, Center, Middle, "cg/ev/ev002蒼葉登場.jpg");
	Fade("絵ＥＶ102", 1000, 1000, Dxl1, true);
	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000110a01">
"Ja?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000120e01">
"Wenn Sie damit einverstanden wearen&, dann&.&.&. 
 Wenn der Laden heute schliesst&, koennte ich Sie dann 
 treffen?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000130a01">
"&.&.&.Was?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000140e01">
"Aehm&, Nein&, Emm&, wie soll ich das sagen&, wissen Sie&, 
 ihre Stimme&. Sie ist &.&.&. Sie haben eine sehr schoene 
 Stimme &.&.&. und ich dachte&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ103", 103, -948, -214, "cg/ev/l/ev002蒼葉登場_l.jpg");
	Move("絵ＥＶ103", 500, -791, -214, Dxl1, false);
	Fade("絵ＥＶ103", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000150a01">
"&.&.&.Nein&, Nein&, ueberhaupt nicht&, Ich bin fuehle mich 
 geschmeichelt&. Ach&, uebrigens&, Sir&, um auf das Thema 
 zurueck zu kommen&.&.&. Waere das in Ordnung?"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000160e01">
"Aehm&, Ja sicher&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000170a01">
"Also&, um auf die Typ S II Ersatzteile zurueckzukommen&, 
 die neuen Teile dieser Produktionsreihe werden bald 
 ankommen&."

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000180e01">
"Richtig&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000190a01">
"Also&, wir akzeptieren Reservierungen momentan nur von 
 unseren loyalsten Kunden&. Haetten sie Interesse?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000200a01">
"Ich bin mir sicher das die neuen Ersatzteile sehr gefragt
 sein werden&, aber wenn Sie jetzt reservieren&,
 bekommen sie definitiv noch welche bevor sie vergriffen 
 sind&."

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000210e01">
"Ja&, emm&, aber&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000220a01">
"Natuerlich&, weil das Reservieren besonderen Kunden
 vorbehalten ist und sie reservieren wollen&,
 waere die Reservierung kostenlos&."

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000230e01">
"K-Kostenlos?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000240a01">
"Ja&.&.&. kostenlos&."

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000250e01">
"A-Ah&, dann wieso nicht! Ich- Ich reserviere!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_パソコン_キーボード操作01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000260a01">
"Natuerlich&, Vielen Dank&. Koennten sie mir bitte ihre Daten zusenden?"

{
//※ＳＥ：ＰＣ_ピッ、ピピッみたいな個人データ受信完了
	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,500,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000270a01">
"&.&.&.Okay&, Vielen Dank! Wir haben ihre Reservierung 
 erhalten&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000280a01">
"Hoffentlich bleiben sie unserem Laden auch in Zukunft 
 treu!"

//※加工：アナログ電話
//【電話の人】
<voice name="電話の人" class="電話の人" src="voice/dm00/2000290e01">
"Ja!"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000300a01">
"Danke!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("絵ＥＶ105", 105, Center, Middle, "cg/ev/ev002蒼葉登場a.jpg");
	CreateTextureEX("絵ＥＶ104", 104, Center, Middle, "cg/ev/ev002蒼葉登場.jpg");
	Move("絵ＥＶ103", 1000, -791, -331, Dxl1, false);
	Fade("絵ＥＶ104", 1000, 1000, Dxl1, true);

	Wait(500);

	Fade("絵ＥＶ105", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ103");
	Delete("絵ＥＶ104");

	Wait(500);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,500,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000310a01">
"&.&.&.Haah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Nachdem ich aufgelegt habe&, seufzte ich laut auf.&.

Auch wenn ich bewusst so rede&, Kunden mit Hintergedanken 
nerven&.

Tja&, wenn es gut laeuft&, kann ich mir sicher sein etwas zu 
verkaufen&, also ist es in Ordnung&.

―― Deine Stimme ist so wunderschoen&, ich muss dich auf 
jeden Fall treffen&.
Unter den Kunden die hier anrufen&, gibt es zu viele Typen 
die das sagen&.

Sie wollen mich nur wegen meiner Stimme treffen&.&.&. 

Es waere nicht so schlimm wenn ich eine Frau waere&, aber 
normalerweise wuerde kein Typ einen anderen Typen so etwas
fragen&.
Am Anfang konnte ich gut damit umgehen&, 
aber so wie jeder an meiner Stelle&, war ich verwirrt als es
immer wieder passierte&. 

Aber es wurde dadurch auch einfacher Kunden dazu zu bringen
Dinge zu kaufen&.

Seitdem konnte ich&, genauso wie in dem Telefonat von gerade
eben&, mehr verkaufen&.

Seltsamerweise passiert das nie im Laden selbst&.

Manchmal trifft mich ein Kunde nach
einem Telefonat&, aber ich trickse sie aus&.

Am Ende gehen sie ohne zu wissen wem die Stimme gehoert 
hat&.

Da Niemand zu Schaden kommt&, denke ich mir einfach 
nichts und belasse es dabei&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ105", 250, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/2000320a01">
"Nnnn&.&.&.&. Der Chef sollte bald wieder da sein&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	DeleteFw();

//※次ファイル["dm0030.nss"]

}
