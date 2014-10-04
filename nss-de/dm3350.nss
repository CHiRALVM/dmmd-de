//<continuation number="40">
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


scene dm3350.nss_MAIN
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

	#bg390011_5_プラチナジェイル汎用空=true;
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3360.nss";

}


scene dm3350.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	CreateColorSP("絵色黒", 5000, "000000");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Late that night&, I slip out of my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 1000, null, true);

	Wait(500);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg302041_5_グリッター廊下_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I change into my clothes and put Ren on sleep mode&, 
keeping my footsteps as soft as possible when leaving 
the room&.

{
	Move("絵背景", 1000, @100, @0, Dxl1, false);
	Fade("絵背景", 1000, 1000, null, true);
}

I look towards Mink's room while down the corridor&.
I can't let myself be caught&.&.&.

{
	Move("絵背景", 1000, @100, @0, Dxl1, false);
	FadeDelete("絵背景", 700, null, true);
}

Where will I go&, what will I do when I get there?
I'm not thinking about either of those things&.

I just need to get out of here&.
That's all that's in my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

	Wait(500);

	OnBG(10,"bg302061_5_グリッター階段");
	FadeBG(1000,true);

	Wait(500);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(1000,true);

	Wait(500);

	CreateTextureEX("絵背景", 100, Center, -50, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Keeping control of my breathing&, I go through the living 
room and head down the stairs&.

The only sound in this entire building is that of the air 
conditioner&.

{	Move("絵背景", 500, @0, @50, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);}
I checked upstairs just in case&, but I don't think Mink is 
awake&.

&.&.&.I think I'll be fine&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景", 500, @0, @-50, Dxl1, false);
	FadeDelete("絵背景", 500, null, true);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/5000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01b");
	MusicStart("SE01",0,300,0,900,null,false);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
Anxious&, impatient&, lost&.&.&.all of these feelings pool
in my chest&. I try to shake them off when I leave through
the entryway&.

Quietly closing the door&, I slowly let out all the air I 
was holding in my lungs&.

It went well&.
Now I need to find a place to hide&.

I enter a back lane without stepping onto Main Street&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//あきゅん「コイル：ここのシーンは無いよね？」
//マップ表示、しなくていいかと。コイル操作音系も…なくてよさそうですな（千代子

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Wanting to go as far out into the outskirts as possible&, I 
walk while following the map on my Coil&.

While keeping a quick pace&, a thought comes to mind&.

Mink will search for me if I'm not there&.

And I even need to think of a way to get to Toue by myself&.

I didn't want to use it too much&.&.&. but could using Scrap 
get me there?

I need to take that USB stick out of Ren as well&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/5000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

//覇：下記枠通常使用不可ならやり直します。
	CreateMaskEX("絵演画面", 200, Center, Middle, "cg/mask/ciスラッシュ_02_01.png", false);
	CreateTextureSP("絵演枠", 1000, Center, Middle, "cg/mask/ciスラッシュ_02_01z.png");//ファイル名変更（千代子
	CreateTextureSP("絵演画面/絵一枚絵", 100, -260, -360, "cg/ev/l/evf09トリ空を飛ぶ_l.jpg");
	CreateColorEX("絵演画面/絵色黒", 1000, "000000");

	SetVertex("絵演画面/絵一枚絵", 1536, 288);

	Request("絵演画面/絵一枚絵", Smoothing);

	Zoom("絵演画面/絵一枚絵", 0, 800, 1000, null, true);
	Fade("絵演画面/絵色黒", 0, 300, null, true);
	Move("絵演画面/絵一枚絵", 6000, @-160, @-90, Dxl1, false);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵演画面/絵一枚絵", 500, 2000, 2000, Dxl3, false);
	DrawTransition("絵板写", 500, 1000, 0, 100, Dxl2, "cg/data/beam_04_00_1.png", true);
	Zoom("絵演画面/絵一枚絵", 6000, 2200, 2200, null, false);

	Wait(1400);

	DrawTransition("絵板写", 500, 0, 1000, 100, Dxl2, "cg/data/beam_04_00_0.png", true);
	Delete("絵演画面/絵*");
	Delete("絵演*");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
&.&.&.I just heard the sound of wings flapping&.

When I look up&, I see a single bird passing by&.

&.&.&.No&, it can't be&.

I go straight into denial&.

I'm just being over-sensitive&.
It was just a bird&. Just my imagination&.

I persuade myself that it was so&.

But&.&.&. it was useless&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreatePlainSP("絵板写", 5000);
//覇：素材が大幅に変わるとのことなので、仮打ち。仮で拡大
	CreateTextureSP("絵一枚絵", 101, -840, 0, "cg/ev/l/evf09トリ空を飛ぶ_l.jpg");
	CreateTextureSP("絵一枚絵弐", 100, -290, -100, "cg/ev/m/evf09トリ空を飛ぶ_m.jpg");
	Zoom("絵一枚絵", 0, 1500, 1500, null, true);
	CreateTextureEX("絵一枚背景", 105, Center, Middle, "cg/bg/bg390011_5_プラチナジェイル汎用空.jpg");

	Request("絵一枚絵", Smoothing);
	Request("絵一枚絵弐", Smoothing);
	SetVertex("絵一枚絵弐", 1536, 288);

	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵一枚絵", 3000, @-480, @-270, Dxl1, false);
	DrawDelete("絵板写", 500, 100, Dxl1, "beam_04_00_1", true);

	Wait(1000);
	Fade("絵一枚背景", 1000, 1000, null, true);
	Delete("絵一枚絵");

	Wait(1000);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵一枚絵弐", 500, 1100, 1100, Axl2, false);
	Wait(100);
	Move("絵一枚絵弐", 6000, @-50, @-26, Dxl1, false);
	FadeDelete("絵一枚背景", 500, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The sound of flapping wings comes back&.

My breathe escapes me when I see something gracefully soar through the sky&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It's a cockatoo dyed with brilliant colors&.

&.&.&.I've been found&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("絵一*");

	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_02_01_1", true);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/5000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る01L");
	MusicStart("SE11",0,700,0,1000,null,true);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
The fear drives me to run as fast as I possibly can&.

Without even looking at the map&, I only thought about 
running away as far as possible&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	Rotate("@OnBG*", 0, @0, 180, @-30, null,true);
	Zoom("@OnBG*", 0, 2500, 2500, null, true);
	FadeBG(0,true);
	DrawTransition("絵黒幕", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	Rotate("@OnBG*", 0, @0, 180, @30, null,true);
	Zoom("@OnBG*", 0, 3000, 3000, null, true);
	FadeBG(0,true);
	DrawTransition("絵黒幕", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);
	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);
	DrawTransition("絵黒幕", 200, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", true);
	Wait(300);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
I dashed through an unknown alleyway&.

{
	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
But&.&.&. the flapping was still following me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/5000040a01">
"Ha&, hah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE11","se人体_足音_走る01L");
	MusicStart("SE11",0,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_1.png", true);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_0", true);

	SetVolumeEX("SE11", 2000, 0, null);
	SetFrequency("SE11", 1600, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
&.&.&.!

The alleyway suddenly stopped&. And so did I&.

I've run out of breath&, unable to speak&, slouched over 
with my hands on my knees&.

I was fully prepared for what was coming to me next&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm3360.nss"]

}
