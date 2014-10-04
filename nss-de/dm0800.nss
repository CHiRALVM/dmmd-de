//<continuation number="240">
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


scene dm0800.nss_MAIN
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
	if($DM_ROUTE==5){	$GameName = "dm0805.nss";
	}else {		$GameName = "dm0810.nss";
	}

}


scene dm0800.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

	Wait(1000);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The medicine I take calms me down&, and I open my mouth to 
ask Granny something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000010a01">
"&.&.&.Granny&, can I ask something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000020b03">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_sad",2550,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000030a01">
"Was Mizuki&.&.&. really the person that took you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Her gaze falls to the teacup in her hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000040b03">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000060b03">
"He called me from the back&. He said that he wanted
 something with you and that he wanted me to come too&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000070b03">
"I thought it was odd at first&, but then he suddenly gagged me and dragged me into the car&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_sad",2350,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000080a01">
"So it was him&.&.&. But why you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000090b03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Granny stays silent with a troubled look on her face but 
slowly opens her mouth to say something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000100b03">
"Aoba&. And the rest of you&, too&."

{
	Fw("fwタエ_通常_smile");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000110b03">
"First&, I haven't given my thanks yet&. Because of you all&,
 I'm safe now&. Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000120a01">
"Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000130b03">
"I'm going to tell you something very serious right now&.
 The truth is that I should've said this earlier&.&.&. but
 all I can do is say it now&."

{
	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000140b03">
"It's a better idea to just tell you now than never&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000150b03">
"So make sure you listen up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Everyone looks at Granny&, completely silent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000160b03">
"Now&, Mizuki was the one who kidnapped me&.&.&.&. but he was
 being manipulated&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000170a01">
"By Morphine&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000180b03">
"Yes&. But Morphine is a little different from what you
 think it is&. This is just my guess&, but they were
 probably under the influence of Toue Inc&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm08/0000190a02">
"Toue&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm08/0000200a03">
"The old farts that bought this island and made Platinum
 Jail&, huh&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000210a01">
"But what does Morphine have to do with Toue?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Granny watched us talk and once again lowered her eyes to  her teacup&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000220b03">
"&.&.&.I used to be one of Toue's researchers at his lab once&.
 It was twenty years ago&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/0000230a01">
"Granny&, you were a researcher&.&.&. for Toue?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/0000240b03">
"Yes&. I was one of the original ones&. I always knew that
 Toue and the establishment were growing closer and
 closer&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0805.nss"]蓮ルートのみ表示
//※次ファイル["dm0810.nss"]

}
