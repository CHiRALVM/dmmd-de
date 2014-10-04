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


scene dm5662h.nss_MAIN
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
	$GameName = "dm5663h.nss";

}


scene dm5662h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm014",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -512, -573, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
While he licked his fingers&, Ren moved his hands down 
my half naked body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000810a06">
"Aoba&, I'm sorry&. I can't stop myself&."

{
	Fw("fw蓮_通常マントなし_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000820a06">
"I want&.&.&. to feel you&."

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000830a01">
"&.&.&.&.&."

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000840a06">
"I don't know how I can cope with not having been able to
 do that&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]
I've never heard&.&.&.
Such a feverish voice from Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
I get happy at Ren's complicated and honest feelings&.&.&. 
but it really was strange&.

The always calm and composed Ren being overthrown with so 
much emotion right now&.

And that fact is&.&.&. 
Unbearably lovely&.

Ren is also a part of me&. 
So it still felt strange&.

But I can't go back now&. 

Ren's feelings for me and my feelings for him&. 
I understand the both of them well&.

It's about me&, so I know&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000850a01">
"&.&.&.This is kind of weird&, isn't it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000860a06">
"What is?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
I lightly caress Ren's cheek with an uneasy face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0272]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000870a01">
"Because you're me&, and we're in my head&.&.&. but you're no
 longer me&. All of that&."

{
	Fw("fw蓮_通常マントなし_worry");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000880a06">
"&.&.&.Do you hate that?"

{
	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000890a01">
"No&, I don't&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 1000, -710, -523, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0273]
I move my hand from his cheek to his neck&, pulling it to 
my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000900a01">
"&.&.&.You can do whatever you like&. &.&.&.Whatever you want
 to do&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
A small growl comes from Ren's throat when I whisper that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蓮_通常マントなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0282]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/6000910a06">
"Aoba&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000920a01">
"Mn&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景101", 101, -823, -240, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	Move("絵背景101", 500,  -823, -183, Dxl1, false);
	Fade("絵背景101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0283]
While violently stealing my lips&, Ren grabs my underwear&. 
He positions himself to strip them off&.

He takes a small pause from our deep kiss and slides his 
fingers in to pick up some of the saliva&.

When his fingers were wet enough&, he brought his hand down to my lower half&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000930a01">
"Ung&.&.&. Ah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
I contract as he slowly pushes his finger into me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000940a01">
"Ah&, ha&.&.&. Ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0293]
His fingers push through and move my insides around&.

The pain wasn't as bad as I thought it would be&.

Maybe it's because Ren is a part of me&.&.&.

It looks like Ren has felt what I've felt since the 
beginning&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0294]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000950a01">
"Nghah&.&.&. Haa&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
And little by little&.&.&. his fingers began to feel good&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000960a01">
"Mn&.&.&. Ngh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ08");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	Move("絵背景101", 500, @0, @-50, Dxl1, false);
	FadeDelete("絵背景101", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]
When sweetness started to blend into my voice&, Ren pulled 
his fingers out&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/6000970a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5663h.nss"]

}
