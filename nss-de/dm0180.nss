//<continuation number="60">
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


scene dm0180.nss_MAIN
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
	#bg101022_5_旧住民区通り裏路地02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0189_vs.nss";

}


scene dm0180.nss
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

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
In der Gasse dieser Nachbarschaft&, war die Strasse kleiner wie frueher&. 
Kein Sonnenschein kam in die enge Gasse&, deshalb war es sehr feucht&.

Es gab auch viele Restaurants; wohlriechende Gerueche
und Rauch trieben staendig durch die Luft&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/8000010a01">
"Ich fuehle mich irgendwie hungrig&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/8000020a06">
"Wenn du nichts ist&, wirst du in etwa einer Stunde
 Magenschmerzen bekommen&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/8000030a01">
"Weshalb? Stimmt etwas mit einem Magen nicht?"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm01/8000040a06">
"Das Essen von Gestern ist ein Faktor&. Der Schlafmangel ein anderer&."

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/8000050a01">
"Aah&, Yoshie-san's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Wenn ich mich richtig errinere&, war es nachdem ich etwas ausgeliefert hatte&. 
Der Kuchen mit der vielen Schlagsahne&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/8000060a01">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ここでＢＧＭゆっくりと消します」
	SetVolumeEX("@dm*", 2000, 0, null);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg101022_5_旧住民区通り裏路地02_l.jpg");
	Move("絵背景100", 1000, @-150, @0, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(500);//間を入れます＜あきゅん

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ich fuehle etwas seltsames und halte an&.

Es fuehlt sich so an&, als haette mich gerade etwas angestarrt&.&.&.

Aber ich sehe Niemanden der besonders verdaechtig aussieht&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0189_vs.nss"]

}
