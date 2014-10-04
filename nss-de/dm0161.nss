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


scene dm0161.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0170.nss";

}


scene dm0161.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//==============================================
//※「振り払う」を選んだ場合
//==============================================

	SetVolumeEX("@dm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Hoer auf&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 3, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/6100010e49">
"Kyah!"

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/6100020a01">
"Ah&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.Oh nein&. 
Ich habe es getan&.

Ich wehre die Hand der Frau reflexartig ab&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/6100030e49">
"Owwwww&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6100040e50">
"Hey&, was machst du da!? Das war gemein!"

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/6100050a01">
"&.&.&.Tut mir Leid&."

{
	Fw("fwmギャルB_通常_normal");
}
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6100060e50">
"Du hast deine Hand gegen eine Frau erhoben&, denkst du ein 'Tut mir Leid' 
 wird das reparieren!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	St("C",740, @0,@0,"st紅雀_通常_sad2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6100070a02">
"Hey hey hey&, warte eine Sekunde&. Ich entschuldige mich fuer ihn&. 
 Es tut mir Leid? So etwa&."

Koujaku tritt zwischen mich und die Frau and haelt die Hand der Frau&,
welche ich geschlagen habe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6100080e50">
"Aber&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6100090a02">
"Eigentlich ist der Typ noch nicht oft mit Frauen ausgegangen&."

{
	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6100100a02">
"Deshalb weiss er nicht wie er sich in der Naehe von so schoenen Damen verhalten soll&, richtig?"

Koujaku schaut mich so an als wuerde er eine Bestaetigung verlangen&.
Seine Augen sagen mir das ich mitspielen soll&.

{
	St("C",740, @0,@0,"st紅雀_通常_sad2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6100110a02">
"Koenntest du Gnade haben und mir vergeben?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/6100120e49">
"Tja&, wenn das so ist&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6100130e50">
"Das ist richtig&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Die Frau schaut mich bemitleidend an&.

Es war etwas irritierend&, aber freiheraus&, es hat mich gerettet&.

Oder so&.&.&. aber ich wurde gerade eben von Kojaku gerettet&.

Er weiss&, dass ich es hasse wenn andere Leute mein Haar beruehren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0170.nss"]

}
