//<continuation number="1660">
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


scene dm5660h.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	$GameName = "dm5661h.nss";

}


scene dm5660h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000010a01">
"-! Ren?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000020a06">
"&.&.&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000030a01">
"What is it&, what's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000040a06">
"I don't know&. I just got the sudden urge to do this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000050a01">
"Haha&, what the heck?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);

	Move("絵背景200", 1000, -512, -573, Dxl1, false);
	Fade("絵背景200", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Grinning&, I leaned my head onto Ren's shoulder&.

His body heat seeped through&.&.&.
And then I felt a hint of loneliness&.

It's warm&, but it feels lonely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000060a01">
"&.&.&.Even though you're a different person than me&, you can
 only take your human form in this world&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000070a06">
"Yeah&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000080a01">
"&.&.&.That's a little lonely&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000090a06">
"&.&.&.&.&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000100a06">
"I'll still be there as an Allmate&. It's always been like
 that&. Nothing has really changed&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000110a01">
"I'm happy about that too&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000130a01">
"&.&.&.But it's not that I don't like the Allmate version
 of you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000140a01">
"But it's kind of lonely that we can't do something like
 this in real life&.&.&.&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000150a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1200,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Move("絵背景200", 500, -512, -473, Dxl1, false);
	FadeDelete("絵背景*", 500, null, true);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000160a01">
"It's fine&, I'm sorry&, I said something weird&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
While trying to backtrack&, I try to separate from Ren&.
What I just said was really weird&.

I knew that perfectly&, because I was the one who accepted 
Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000170a01">
"Well&, it's time to go&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu蓮_通常マントなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000180a06">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1500,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 6, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000190a01">
"&.&.&.! Ren&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
When I tried to move away&, Ren pulled me back&.

His warm breaths entered my ear as he held me in an almost painful embrace&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu蓮_通常マントなし_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000200a06">
"&.&.&.Don't&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000210a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000220a06">
"The truth is&, I want to be with you like this for a little longer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000230a01">
"&.&.&.Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm014",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000240a06">
"I know I shouldn't be saying this&, but&.&.&."

{
	St("C",740, @0,@0,"fu蓮_通常マントなし_normal2");
	FadeSt("C",200,true);
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000250a06">
"I want&.&.&. to touch you more&. Those are my honest feelings
 right now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
When I heard that I was both surprised&.&.&. and happy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I never thought I'd hear those words from Ren&.&.&.

He's truly irreplaceable to me&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
}
I hug him back and press my face into his chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5661h.nss"]

}