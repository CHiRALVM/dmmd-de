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


scene dm3540.nss_MAIN
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

	//▼演出処理を初期化
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3550scr.nss";

}


scene dm3540.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	SetShade("絵背景", HEAVY);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, null, true);
	Wait(300);
	Fade("絵背景", 2000, 0, null, true);

	FwPro("fw蒼葉_通常_shock3",2000,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I regain consciousness&, I quickly raise my head and 
see nothing but the same white hall around me&.

But both the guard and Toue are gone&.

That vicarious memory thing&.&.&. Was that because of 
his song?

My past&.&.&.

I forgot it all&, but the me before&.&.&.
I was completely wrong&.

{	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);}

&.&.&.?
Someone is pulling on my arm&.

&.&.&.It's Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I was facing my forgotten past and lost myself&.&.&.

Someone held onto my hand&.

Was that Mink&.&.&.?

Secretly thankful&, I look his way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000020a01">
"Mink&, are you all right? That song before&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
The moment I speak&, I gain a sense of dread&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_normal2",1900,"fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000030a01">
"Mink? &.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");//あきゅん「ＳＥ：se人体_衝撃_転倒02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
His giant body jerks&.
Mink is on his knees and hands on the ground&.

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/4000040a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000050a01">
"Hey&, what's wrong!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Astonished at his current state&, I lean over to him&.

Rivers of sweat are dripping down from his cheeks all the 
way to his chin&, and the sound of his ragged breathing 
fills the room&.

{
	CreateSE("SE01","se人体_動作_抱く01");//あきゅん「ＳＥ：se人体_動作_抱く01」
	MusicStart("SE01",0,700,0,1000,null,false);}
I've never seen this Mink before&.
I lightly shake his shoulder&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000060a01">
"Hey&, Mink&, are you okay? Mink!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He doesn't respond no matter how loud I yell&.
Is my voice not reaching him&.&.&.?

His eyes are open&, but he's not looking at anything&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000070a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
We've come so far&.&.&. and now this happens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000080a01">
"What am I supposed to do if you leave me all alone
 here&.&.&. I never said you could do that!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Pushing people around&, doing awful things&.&.&.

Even though he brought me all the way here just to use me&.

But I was captivated by&.&.&. just how ruthless his will was&.

Of course Mink and I went this far together only because 
our objectives were the same&.&.&.

But I wanted to know what the coldness in Mink's eyes was  from&.

Not his goal&.&.&. but what a person could achieve with just 
his firm will&. I wanted to know&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000090a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Mink held my hand fast back there&.

So I'll return the favor&.

Right now I have only one way of saving Mink&.

&.&.&.By using Scrap&.

There's no guarantee that it'll save him&.
It might even break him apart&.

But the chance of it working isn't zero&.

I grabbed Mink's jaw and lightly raised it up&.

His pupils were like a deep&, black sea&.

I fix my gaze dead straight into his eyes and speak in a 
low and deep voice&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000100a01">
"&.&.&.Mink&, can you hear me? I'm going to go inside of you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm35/4000110a05">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000120a01">
"Look into my eyes&. Steadily&. Let me go inside of you&."

{	Fw("fw蒼葉_通常力行使_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/4000130a01">
"Let me in deeper&.&.&. Into your depths&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	SetVolumeEX("@dm*", 500, 0, null);

	SetVolumeEX("SE*", 300, 0, null);

//※ミンクの精神世界へ
	ScrapIn("転送暴露a",2000);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();

//※次ファイル["dm3550scr.nss"]

}
