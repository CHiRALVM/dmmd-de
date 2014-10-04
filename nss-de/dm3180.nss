//<continuation number="160">
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


scene dm3180.nss_MAIN
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
	$GameName = "dm3190.nss";

}


scene dm3180.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
With Mink gone&, the tension dissolves into the air&.

But instead&, a wave of regret and self-hatred takes 
its place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I pick up my bag by my feet&, and take both Ren and my 
medicine out&.

{
	CreateSE("SE01","se物体_ピルケース_ふる01");
	MusicStart("SE01",0,400,0,1500,null,false);
	Wait(400);
	SetVolumeEX("SE*", 0, 0, null);
}
//※ＳＥ：薬を取り出す
I only have a few tablets left&.
So for now&, I just take one&.

&.&.&.The headache should soften with this&.

A small sense of safety lets me exhale in relief&, and I 
start up Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000010a06">
"&.&.&.Aoba&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000020a01">
"&.&.&.Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000030a06">
"Are you all right? You look like you're in bad
 condition&."

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000040a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Just hearing Ren suddenly makes me feel miserable&, and I 
tightly hug his tiny body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000050a01">
"It really hurts&.&.&. What do I do&.&.&.?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000060a06">
"You should rest for a little&. You were in quite the
 dangerous situation back there&."

{	SoundPlay("@dm006",0,450,true);}
{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000070a01">
"Back there?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000080a06">
"Rather than from the effects of the drugs&, it was your
 consciousness which was in turmoil with your other&,
 temporary one&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000090a06">
"Because of that&, your self-control weakened and your
 power&, Scrap&, sent you in a state of half-conscioussness&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000100a01">
"Are you serious&.&.&.?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000110a06">
"If you stayed in there&, Scrap would have possibly gone
 berserk&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000120a01">
"&.&.&.Berserk?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I shiver at those words&.

What happens when Scrap goes berserk?

Even more people will go crazy?

And it might even have an influence on me as well&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044a]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000130a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演画像", 110, Center, 0, "cg/bg/bg303011_5_娯楽施設外観入り口ブラック.jpg");
	CreateTextureSPmul("絵演回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044b]
Mink&.&.&. he really did go there to "stretch out my wings"&.

I kind of doubt that&, but at the same time I don't know 
why he took me along anyway&.

No way&.&.&.

Even if that's so&, I still can't tell what his objective 
is&.

More like I can't understand anything Mink is 
thinking&.&.&.

Why did Mink go there?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演*");

	FadeDelete("絵板写", 500, null, true);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000140a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I stand up&, holding Ren&, and walk over to the sofa to rest my pained body&.

{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,450,0,800,null,false);

	CreateTextureEX("絵背景100", 100, -805, -536, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景100", 500, -805, -495, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
}
I throw myself onto the sofa and sit&.

&.&.&.I wonder what will happen now&.

I really don't want to see Mink right now&.

And besides&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
While I was doing that&.&.&. thing&, with Mink&, I was 
absolutely terrified&.

It was like facing an abyss and being told to not peek or 
else&.&.&.
An awful feeling&.

What's going to happen to me from now on?
I don't even know&.

I don't know what will happen to Mink&, either&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/8000150a06">
"&.&.&.Aoba&, you should rest for a little&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/8000160a01">
"&.&.&.You're right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @25, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
While holding Ren&, I get up from the sofa&, walk up the 
staircase&, and head back to my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

	Wait(500);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(300,true);
	BGPlainShake(1000,300,0,8,0,0,1000,Dxl1,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
I lay down on the bed&, put my headphones on&, and listen to 
music&.

So I can fall asleep without thinking about anything 
today&.

I can't say I'm tired&, though&.&.&.

I just do whatever I can&, and try to sink into the music 
with my eyes closed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	ClearFadeAll(2000, true);

	Wait(2000);

//※次ファイル["dm3190.nss"]

}
