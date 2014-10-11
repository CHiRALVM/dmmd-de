//<continuation number="130">
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


scene dm0240.nss_MAIN
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
	#bg104051_5_蒼葉宅居間=true;
	#bg104011_5_蒼葉宅玄関消灯=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0250.nss";

}


scene dm0240.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_水_シャワー01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(2000);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateSE("SE02","se擬音_水_シャワー閉める01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(2000);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 1000, null, true);

//※演出：蒼葉、風呂（不用？）
//※ＳＥ：シャワーの水音（不用？）
//※ＳＥ：水が止まる（不用？）
//※ＳＥ：蒼葉自宅_脱衣所扉開閉（ガラガラ）

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000010a01">
"&.&.&.Woow&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Ich dusche nach dem Essen und bedecke mein halb-feuchtes Haar mit dem Handtuch
auf meinen Schultern und gehe in das Wohnzimmer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ich luge ins Wohnzimmer und sehe das Grossmutter fernsieht und Tee trinkt&. 
Koujaku ist nicht zu sehen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000020a01">
"Wo ist Koujaku?"

{	Fw("fwタエ_通常_normal");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000030b03">
"Er ist nach oben gegangen&. Er ist wahrscheinlich in deinem Zimmer&."

{
//	SoundPlay("@dm013",0,450,true);
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000040a01">
"Okay&. &.&.&.Ah&, uebrigens&, Grossmutter&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000050b03">
"Was?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000060a01">
"Immer wenn ich Kopfschmerzen bekomme&, nehme ich meine Medizin wie ueblich&,
 aber in letzter Zeit ist es nicht mehr so wirksam&."

{	Fw("fwタエ_通常_normal");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000070b03">
"&.&.&.Hmmm&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Grossmutter&, die die ganze Zeit auf den Fernseher gestarrt hat&, 
dreht sich zu mir um&.

Grossmutter hat mir gesagt das ich ihr sofort Bescheid sagen soll&,
falls meine Kopfschmerzen schlimmer werden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000080b03">
"Wirkt die Medizin gar nicht mehr?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000090a01">
"Emm&, so ist es nicht&, aber ich habe das Gefuehl&, dass sie
 nicht den gleichen Effekt hat wie frueher&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000100b03">
"Ist das so? Dann lass uns mal versuchen die Formel etwas zu aendern&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000110a01">
"Ich zaehle auf dich&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Als ich mich tief verbeuge&, schnaubt Grossmutter und starrt wieder auf den Fernseher&.

Tja dann&.&.&.
Anscheinend ist Koujaku in meinem Zimmer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(1000,true);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Ich verlasse das Wohnzimmer und gehe nach oben&.

Viele Orte an meinem Koerper pulsieren vor Schmerz&,
obwohl ich nur meinen Fuss anhebe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関.jpg");
	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl3, true);
	SetVolumeEX("SE*", 0, 0, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000120a01">
"Au&, au&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Obwohl es keine sichtbaren Einschnitte oder Bluterguesse gibt&, 
spuere ich einen dumpfen Schmerz aus der Mitte meines Koerpers&.

Ist es weil ich in Rhyme Schaden genommen habe&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000130a01">
"Obwohl der Kampf in meinem Kopf stattgefunden hat&,
 tut es immer noch ziemlich weh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Als ich mit diesem seltsamen Hasenkopf gekaempft habe&,
sagte Ren das der Schaden begrenzt sei&.

Ist das ueberhaupt moeglich?

Ich versuche den Schmerz zu ertragen&, bahne mir den Weg die Treppen hoch
und gehe in mein Zimmer&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0250.nss"]

}
