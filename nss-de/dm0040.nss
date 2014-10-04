//<continuation number="70">
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


scene dm0040.nss_MAIN
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
	#ev004犬蓮起動=true;
	#ev004犬蓮起動a=true;
	#bg102031_1_平凡前通り=true;
	#MF_絵op=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0050.nss";

}


scene dm0040.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateSE("SE01","se物体_ドア平凡_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm*", 1000, 0, null);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	SoundPlay("@dm001",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ich verbeuge mich vor dem breit grinsenden Haga-san und gehe nach draussen&.

Auf der Zeitanzeige meines Coils steht 15:00&. 
Manche Leute stehen hier herum&, obwohl es eine Hinterstrasse ist&.

Es gibt mehrere Wege auf denen ich zum Kurier gehen konnte&.
Ich fragte mich welcher am schnellsten ist&.

{
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Ich nehme ein weiches Fellknaeul aus meiner Tasche&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev004犬蓮起動.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Waehrened ich das schlafende Fellknaeul halte&,
starte ich es in dem ich meine Hand auf dessen Stirn lege&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵ＥＶ99", 99, Center, Middle, "cg/ev/ev004犬蓮起動a.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/4000010a01">
"Ren&. Wach auf&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ100", 600, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Nachdem ich ihn gerufen habe&, oeffnet er mit einem Klicken seine 
dunkelblauen Augen&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/4000020a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/4000030a01">
"Ich moechte zum Kurier&, kannst du nach dem kuerzesten Weg suchen?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/4000040a06">
"Verstanden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ99", 250, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Leise beruehrt Ren mit seinen Pfoten meinen Oberarm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/4000050a06">
"Strasse 241 ist im Osten aufgrund von Polizeikontrollen geschlossen&. 
 Die Busse werden gewartet und fallen deshalb aus&. Es ist schneller einen Umweg 
 zu nehmen und den noerdlichen Endpunkt zu umgehen&."

{
	Fw("fw蒼葉_通常_normal");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/4000060a01">
"Ich verstehe&, danke&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Ich taetschle Rens Kopf&, worauf er erfreut bellt und mit seinem Schwanz wedelt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/4000070a01">
"Okay&. Gehen wir&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0031]
//　I put on the headphones hanging from my neck and push the play button&.

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetBacklog("　俺は首に掛けていたヘッドホンを装着して、プレイヤーの再生ボタンを押した。",null,null);


	$SYSTEM_low_thread_priority=true;

	SetVolumeEX("@dm*", 1000, 0, null);
	$SYSTEM_menu_lock=true;
	CreateOPMovieSPvol("絵op",25000,Center,Middle,false,false,"dx/op_eng.ngs",800);
	MovieSkipPlay("絵op","MF_絵op");

	$SYSTEM_low_thread_priority=false;




	PrintBG("上背景", 30000);
	ClearFadeAll(1000, true);
	$SYSTEM_menu_lock=false;

//※次ファイル["dm0050.nss"]

}
