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


scene dm3550scr.nss_MAIN
{
$TEXTBOX_TYPE="暴露";

//★ファイルを跨ぐナット生成
	SparksDrop(0);

	CreateColorEXover("@EFWIN/絵演色赤", 4990, "FF6600");
	Request("@EFWIN/絵演色赤", Lock);
	DrawTransition("@EFWIN/絵演色赤", 1, 0, 750, 200, null, "cg/data/slide_02_00_1.png", true);

//	LastfireOGMIX("@EFWIN/絵演色赤","@EFWIN/プロセス");
//	Request("@EFWIN/プロセス", Lock);
	$LastfireNutName01="@EFWIN/絵演色赤";
	CreateProcessEX("@EFWIN/プロセス","LastfireOGMIXAct");
	Request("@EFWIN/プロセス", Lock);

	CreateSE("@EFWIN/SE11","se環境_戦闘_過去ミンク01L");
	Request("@EFWIN/SE11", Lock);


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
	#bg204011_3_暴露ミンク故郷草原炎上=true;

	//▼ミンク暴露火の粉シーン中だと言うフラグ
	$ミンク暴露なう=true;

	//▼ミンク暴露火の粉初期強度
	$ミンクのトラウマ=3;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3560scr.nss";

}


scene dm3550scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg204011_3_暴露ミンク故郷草原炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//あきゅん「↓：間違いルートに行くと火の粉が晴れていきます、とか」
//◆演出：火の粉
//あきゅん「演出：火の粉、ファイルまたぎを加味して組み込み。」
//ファイルまたぎ用のEFウィンドウあります@EFWIN（千代子
//使い終わっても@EFWINは消さないでください

/*
	$SYSTEM_effect_drop_image = "cg/ef/efc火の粉001_s.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 7;
	$SYSTEM_effect_drop_swing = 128;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火", 4100, Center, Middle, 768, 565, "Drop");

	SetAlias("絵効果火","絵効果火");
	Zoom("絵効果火", 0, 2000, 2000, null, true);
	Zoom("絵効果火蒼", 0, 2000, 2000, null, true);
	Fade("絵効果火*", 0, 1000, null, true);
*/

//★上のほうで定義します
//	SparksDrop(0);

//	CreateColorSPover("@EFWIN/絵演色赤", 4990, "FF6600");
//	Request("@EFWIN/絵演色赤", Lock);
//	DrawTransition("@EFWIN/絵演色赤", 1, 0, 750, 200, null, "cg/data/slide_02_00_1.png", true);
//	LastfireOGMIX("@EFWIN/絵演色赤","@EFWIN/プロセス");
//	Request("@EFWIN/プロセス", Lock);

	Request("@EFWIN/プロセス", Start);


	$ミンクのトラウマ=3;
	MinkSparksDropStrengthFade();

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//※同時
//【一族の男】
<voice name="一族の男" class="一族の男" src="voice/dm35/5000010e12">
"Ahhhhhhhhhhhh!!!"

//※同時
//【一族の女】
<voice name="一族の女" class="一族の女" src="voice/dm35/5000020e13">
"Ahhhhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//あきゅん「演出：上記の音声でハッとして目覚めた感じに」
	CreateVOICE("一族の男","dm35/5000010e12");
	CreateVOICE("一族の女","dm35/5000020e13");
	MusicStart("一族の男",0,700,0,1000,null,false);
	MusicStart("一族の女",0,700,0,1000,null,false);

	$SETime = RemainTime("一族の女")-300;
	WaitKey($SETime);

	DrawDelete("絵色黒", 200, 100, null, "slide_02_00_0", true);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/5000030a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//★上のほうで定義します
//	CreateSE("@EFWIN/SE11","se環境_戦闘_過去ミンク01L");
//	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",5000,500,0,800,null,true);

	$ミンク暴露なう=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Screams pierce my eardrums&, unconsciously causing me to 
flinch&.

Screams&, roars&, explosions&, crying voices&, gunshots&.

Surrounded by the sound of chaos&, I can only continue to 
stand frozen in place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The area is thick with trees with a deep red fire dancing 
around it&, leaving a trail of smoke&.

Above me is a starless night sky&, but around me it's as 
bright as day&.

Under the dark sky&, crowds of shadows run about in a 
frenzy&.

People escaping&, and other people chasing after them&.

The ones running away are most likely Mink's people&, and 
the pursuers Toue Inc&.'s people&.

These are no doubt Mink's memories of the past&.

What weighs down his heart&, the wound that still bleeds&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_心臓_鼓動01");
	MusicStart("SE02",0,1200,0,1000,null,false);

	CreatePlainEX("絵板写", 100);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	FadeFFR("絵板写", 0,500, 200, 0, 0, 30,null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/5000040a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Suddenly my heart jumps as my entire body burns up&.

&.&.&.It's hot&.

It's hot&.&.&.!
The flames are scorching&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/5000050a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I can see my limbs burning&.
But they're not&.

&.&.&.The exact same with Rhyme&.
My brain is taking the damage and I'm only hallucinating&.

But this&.&.&.
This feels as painful as in real life&.

I take in a heated breath&, breathing turning into 
suffocating as my lungs feel as if they're burning&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/5000060a01">
"Kah&.&.&. Ha&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
This isn't reality&. It's the same thing as watching 
something that's been recorded&.

I know that&, but&.&.&.
The pain&, the strained tears&, they make me want to vomit&.

As if to lay a final blow&, the dying screams of people 
tear at my eardrums&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm35/5000070a01">
"Guh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
But&.&.&. I have to keep going&.

I need to find Mink&.&.&.

I hold my arms close to me to try to protect myself from 
the flames and slowly advance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SEL02","se物体_草_漁る01");
	MusicStart("SEL02",0,700,0,500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
This isn't reality&.
This is fake&.

This all happened in the past&.

With nothing in mind other than that&, I look for Mink 
within the screams and deaths&.

&.&.&.Not here&.
He's not anywhere&.

Where is Mink&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL02", 300, 0, null);

//※次ファイル["dm3560scr.nss"]

}
