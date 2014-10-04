//<continuation number="80">
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


scene dm0302.nss_MAIN
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
	$GameName = "dm0310.nss";

}


scene dm0302.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm005",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「なぜ傘を？」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0200010a01">
"What are you going to do with that umbrella you pulled
 out?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0200020a04">
"Oh&, what do you mean?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0200030a01">
"Um&, that thing you're holding&, that's an umbrella&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0200040a04">
"Yes&, it is&. What about it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0200050a01">
"It's not raining now or anything&. Why did you take it
 out?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(20001,64,364,20,"fw");

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】※漫符：気がついた
<voice name="クリア" class="クリア" src="voice/dm03/0200060a04">
"Rain&.&.&. Ah! It's true that when water drops fall from the
 sky on rainy days&, if you take an umbrella with you&, you
 won't get wet!"

{	ClearComicNexDelete(0);
	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0200070a04">
"I think I'll try that next time&. Thank you very much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0200080a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0310.nss"]

}
