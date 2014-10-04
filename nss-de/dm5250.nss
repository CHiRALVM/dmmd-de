//<continuation number="120">
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


scene dm5250.nss_MAIN
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
	$GameName = "dm5260.nss";

}


scene dm5250.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	CreateTextureSP("絵背景90", 90, -132, -235, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Feeling both lonely and sorry&, I pet Ren's tiny back&.

I know well that Ren is worried about me&. 
He's always been giving me advice&, all this time we've 
been together&.

Since my parents were almost never in my life&, Ren's been 
almost like family to me&.

Back when I first met Ren&, I&.&.&.

&.&.&.&.&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
Uh&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000010a01">
"Ren&, when did we meet for the first time&, again&.&.&.?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/5000020a06">
"Do you mean when you purchased me&, Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000030a01">
"Yeah&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/5000040a06">
"I recall registering your face about ten years ago&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000050a01">
"I see&, so it was that long ago&, huh&. I feel like we've
 been together longer&, though&."

{	Fw("fw蒼葉_通常_smile2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000060a01">
"But we've been together for a long time as is&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/5000070a06">
"That's true&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000080a01">
"When I first held you&, I thought you were this massive
 lump of fluff&. I feel like you're even bigger than you
 were then&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/5000090a06">
"Isn't it you who has grown?"

{	FwPro("fw蒼葉_通常_normal",8500,"fw蒼葉_通常_cheese");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000100a01">
"True&. But you're still fluffy&. Besides&, we're like
 siblings&. But now I'm the older brother while you're
 the younger one&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/5000110a06">
"I can't agree to that&."

{	Fw("fw蒼葉_通常_cheese2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/5000120a01">
"Thought you'd say that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Smiling&, I keep stroking Ren's fur&.

It feels good to pet him&, to be close to someone precious 
to me&.

Possibly because I'd finally come to a decision&, my once-
forgotten feelings of tiredness slowly began to creep back&.

All of the tension that built up had certainly taken a 
toll on my body&.

But before that happens&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイル_操作音
//しょうかん　に　しっぱい　した

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);
	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I sink into the sofa and open my Coil up&.

I send a message to Granny&, Koujaku&, and everyone else&.

I know it won't go through&.
But it's almost like sending out a prayer&.

And&.&.&.

I'm wishing for them to all be safe&.

I chanted that over and over in my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//「ＰＪ記念イベント２」へ
//※次ファイル["dm5260.nss"]

}
