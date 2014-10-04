//<continuation number="200">
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


scene dm5240.nss_MAIN
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
	$GameName = "dm5240sl.nss";

}


scene dm5240.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.I stagger through the unchanged streets&, somehow making it back to Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I go up to the second floor and immediately take some 
medicine for my headaches&.

{
	CreateTextureEX("絵背景90", 90, -132, -265, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");
	Move("絵背景90", 500, @0, @30, Dxl1, false);
	Fade("絵背景90", 500, 1000, null, true);
}
Then I sit on the sofa next to Ren&, remaining silent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000010a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I've calmed down a little&, so I arrange all of my jumbled  feelings&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Firstly&, what Haga-san said about the Old Resident 
District&.

He said that Platinum Jail people came down there and 
started blasting some sort of music&.

Haga-san and the others seem to be fine because they 
plugged their ears&, though&.&.&.

So I guess that means that music is doing something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
If anything were to happen to Granny and the others&.&.&.
The thought makes me shiver&.

But I can't get back in touch with them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
What if right now&, they're&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000020a01">
"&.&.&.!"

{
	Fw("fwAM蓮_通常_normal");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000030a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,600,0,1500,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ren must've noticed&, and he puts his front paws on my lap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000040a01">
"Sorry about that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I need to quietly calm down and think&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
If I trust Haga-san's words&, everyone will be fine&.

I can't think of anything I could do even if I went right 
back to the Old Resident District&.

And I'd even lose all the meaning of coming here anyway&.

Haga-san also reminded me not to act on my own; he must've always known about my hot temper&.

The main event starts tomorrow&.

I need to somehow make my way to Toue in that time&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 10000, "BLACK");
	DrawTransition("絵黒幕", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I close my eyes and take deep breaths to try to calm 
myself down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
When I close my eyelids&, his eyes&.&.&. The image of Sei's 
eyes remains burnt into my vision&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);
	CreateTextureSPmul("回想枠", 2500, Center, Middle, "cg/ef/effi回想01.jpg");

	CreateTextureSPadd("回想絵演出", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("回想絵演出", 0, 300, null, true);

	CreateTextureSP("回想ＥＶ1900", 1900, -1024, -224, "cg/ev/l/ev520東江演説a_l.jpg");

//	SoundPlay("@dm007a",0,450,true);

	FadeDelete("絵黒幕", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
It seemed like Sei was a very important person to Toue&.
He did say that he was like a son to him&.

The moment when Sei's eyes appeared on those giant 
monitors&.&.&. Something like thunder hit me&.

It was the same thing as when I met eyes with him when he 
was slouching in that alley&.

And after that&, all of the people around me adored Sei; it was like he used magic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("回想ＥＶ1901", 1901, -1642, -98, "cg/ev/l/ev520東江演説a_l.jpg");
	Request("回想ＥＶ1901", Smoothing);
	Zoom("回想ＥＶ1901", 0, 2000, 2000, null, true);
	Fade("回想ＥＶ1901", 1000, 1000, null, true);
	Delete("回想ＥＶ1900");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
Those eyes&.&.&. were like looking into a calm sea&.

What in the world is he?

I can't quite grasp it&, but I do feel like it's something 
unexplainable&.

Just the transformation of the people in the plaza and the change in the Old Resident District was enough&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorEX("絵黒幕", 10000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);

	Delete("回想*");

	DrawDelete("絵黒幕", 1000, 100, null, "slide_05_00_0", true);

	Wait(300);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I open my eyes and start to pet Ren's back as he lies on 
my lap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000050a01">
"Ren&."

{
	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000060a06">
"What?"

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000070a01">
"We're going to the tower tomorrow&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000080a06">
"How do you plan on getting inside?"

{	FwPro("fw蒼葉_通常_angry",3650,"fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000090a01">
"We'll break through the front entrance&.&.&. No&, I guess
 that's impossible&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000100a06">
"It would be difficult&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000110a01">
"Any other methods would be&.&.&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000120a01">
"&.&.&.I guess there aren't any&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000130a06">
"&.&.&.Aoba&. Do you mean to use your power?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000140a01">
"&.&.&.You really can see right through me&, Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000150a06">
"It's dangerous to use it&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000160a01">
"But there's no other option&. We have to get through before it's too late&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000170a06">
"But what if a situation arises where you do something that can't be undone?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000180a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I understand Ren's words completely&.
My power&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 10000);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);
	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	CreateTextureSP("回想絵ＥＶ101", 101, Center, Middle, "cg/ev/ev071ミズキ苦しむ.jpg");

	FadeDelete("絵板写", 300, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 10000);

	Delete("回想*");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
It ruined Mizuki&.

And I don't know what it's doing to me&, either&.

It's not a power that can be used lightly&.
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm52/4000190a01">
"I don't want to lose anything important to me&. So I want
 to use my power to stop that from happening&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm52/4000200a06">
"And then when something happens that you didn't expect&,
 you'll make Tae-san and the others suffer?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5240sl.nss"]

}
