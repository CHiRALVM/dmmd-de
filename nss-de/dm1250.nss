//<continuation number="110">
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


scene dm1250.nss_MAIN
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
 	RainDropDelete(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい
	RainDrop2Delete(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい
	$GameName = "dm1260.nss";

$HALevel=2;

}


scene dm1250.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When the door closes&.&.&. it finally feels as if time starts to move again&.

As if I had just been suffocating&, my shoulders shake and 
I take frantic breaths&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000020a01">
"Hah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景20", 20, 0, -500, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Fade("絵背景20", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I let out a shivering breath and stretch out on the bed&.

My head still hurts&.
I close my eyes and the pain pulses&.

My head feels like it's in a blender&.

The strain and terror lingers&, and the inside of my ear 
has gone numb&.

Koujaku&.&.&. That wasn't the real him&.

He just took it out on me and did that on impulse&.

I can still&.&.&. feel the wetness on my neck and ear&.

That was a different person&, not Koujaku&.
He came back to his senses when I screamed&.

That sensation from earlier&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：白蒼葉の幻影がちらつく
	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,30,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	TemptationAobaIn("絵色黒");

	TemptationAobaOut(200,false);

	Wait(500);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginFN(150);//―――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 300100);
	SetShade("絵板写", MEDIUM);
	Fade("絵板写", 1000, 1000, null, true);

	Delete("@text0014");
	TextBoxDelete(0);


	Fade("絵板写", 500, 0, null, true);
	FadeDelete("絵色黒", 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Was that&.&.&.
The power of Scrap?

And that's why Koujaku came to?

Granny did say that my power pulled people in&.

That I can enter their minds and make them work as I wish&.

And depending on how you use it&.&.&. you can have the power 
to destroy a person's mind&.

Did that power just save me?

&.&.&.&.&.

What if back then&, if I didn't bring Koujaku back&.&.&. What 
would've happened?

Fear and dread slither through my body&.

&.&.&.It was terrifying&.

Koujaku wasn't himself&, but&.&.&.

I was terrified of destroying our relationship&.

But what should I do now?
How should I act around Koujaku now?

Am I telling myself that even if he went through with 
that&, we'd still be the same?

Of course that wouldn't work out&.

It would've crumbled right there too&.

Koujaku and I&.&.&.
We can't go back to how we used to be anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("絵背景*", 500, @0, @50, Dxl1, true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I don't want that&.

Even after that&, I still don't hate Koujaku&.

It was just so shockingly scary&.

But what hurts the most&.&.&. is that I don't know why 
Koujaku did that&.

He still won't tell me anything&,

I'm just sitting here watching again&.&.&.

&.&.&.<k>If I know the person very well&, I can insert my will 
to his consciousness&.

Granny told me that I was able to do that as well&.

If that's true&, I could strongly wish for Koujaku to tell 
me more about him&. 

But&.&.&.

I don't want to use my power like that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	Fade("絵色黒", 0, 1000, null, true);

	Move("絵ＥＶ", 0, @0, @20, null, true);
	Zoom("絵ＥＶ", 0, 1100, 1100, null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	Fade("絵演黒隠", 0, 1000, null, true);

	Fade("絵色黒", 0, 0, null, true);
	Wait(30);
	Fade("絵色黒", 200, 1000, null, false);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029a]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


/*
	Fade("絵色黒", 0, 1000, null, true);

	Move("絵ＥＶ", 0, @0, @20, null, true);
	Zoom("絵ＥＶ", 0, 1300, 1300, null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	Fade("絵演黒隠", 0, 1000, null, true);

	Fade("絵色黒", 0, 0, null, true);
	Wait(30);
	Fade("絵色黒", 200, 1000, null, false);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029b]
　――――　Destroy him　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	Fade("絵ＥＶ", 0, 0, null, true);
	Fade("絵演黒隠", 0, 0, null, true);
	Fade("絵色黒", 200, 0, null, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029c]
Someone's voice reverberates in my still pounding head&.

It's as if it's blowing away my consciousness&.

It feels like something is dragging my feet into a 
bottomless swamp&.

I&.&.&. what should I do?

{
	SetVolumeEX("@dm*", 2000, 0, null);
	CreateSE("SE01","se動物_動作_蓮扉叩き01");
	MusicStart("SE01",0,700,0,1000,null,false);

}
I'm at a loss when I suddenly hear the sound of a door 
creaking open&.

What now?

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景*", 500, @0, @80, Dxl1, false);
	FadeDelete("絵背景*", 500, null, true);
}
I get up from the bed and walk towards the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
When I look to my feet&, I see a ball of blue fur wagging 
its tail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000040a01">
"&.&.&.Ren&."

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/5000050a06">
"Aoba&, are you okay?"

{
	Fw("fw蒼葉_通常_worry2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000060a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ19");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I crouch down and pick up Ren&.

I feel the usual sensation of his fur&, and cover my face 
with it&.

My arms still hurt from when Koujaku was holding them down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/5000070a06">
"Aoba?"

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000080a01">
"&.&.&.I'm okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I mutter that to myself&, and put Ren back down on the 
ground&.

&.&.&.I'm fine&. I'm fine&.

I recite that in my head because I feel like I'll fall 
down if I don't&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I fix my clothes back to normal&, pick up Ren&, and then 
walk down to the first floor&.

{
	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,600,0,1000,null,false);
}
I pick up my bag sitting on the sofa and place Ren inside 
it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/5000090a06">
"Are you going out?"

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/5000100a01">
"Yeah&. I&.&.&. I could use some fresh air&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/5000110a06">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I pet Ren's head and leave through the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE11","se環境_自然_雨01L");
	MusicStart("SE11",1000,200,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//	RainDrop(740,0,128);

	RainDrop(1000,0,16);
	RainDrop2(501,0,64);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Rain is still falling&.

But it seems much lighter than before&.

I breathe in some open air and feel just a bit of my 
anxiety wash away&.

Without an umbrella&, I walk around the streets&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm1260.nss"]

}
