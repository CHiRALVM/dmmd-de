//<continuation number="310">
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


scene dm0210.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	$GameName = "dm0220.nss";

}


scene dm0210.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//	OnBG(10,"bg102031_1_平凡前通り");
//	FadeBG(0,true);

//	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
//	CreateColorSPsub("絵色黒", 5000, "WHITE");
//	CreateColorSP("絵窓/絵色黒帯", 4000, "BLACK");
//	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
//	DrawTransition("絵窓/絵色黒帯", 0, 0, 300, 100, null, "cg/data/slide_05_00_0.png", true);
//	Fade("絵色黒", 0, 800, null, true);
	CreateColorSPsub("絵色黒", 5000, "WHITE");
	Wait(1000);
	FadeDelete("上背景", 0, null, true);

//※演出：白蒼葉の台詞、ぽつっと表示
//あきゅん「ＱＵ：中央文字に変更しました」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm02/1000010b01">
"&.&.&.Destruction and death&."

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(500);

//※演出：場面転換

	Fade("絵色黒", 200, 1000, Dxl1, true);

//	Delete("絵窓/絵*");
//	Delete("絵窓*");
//	Delete("絵背景");

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);
	Zoom("@OnBG*",0,1005,1005,null,false);
	Request("@OnBG*",Smoothing);
	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵黒幕", 3000, "000000");
	DrawTransition("絵窓/絵黒幕", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);

	Wait(1000);

	Fade("絵色黒", 2000, 500, null, true);

	Wait(500);

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000020a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　&.&.&.Ugh&. 
My head hurts&.&.&.

What&.&.&.
What happened&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000030a01">
"&.&.&.Ah&, ow ow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
It seems&.&.&. I'd somehow fallen on the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,900,null,false);
	Fade("絵色黒", 1500, 300, null, false);
	Move("絵背景", 1500, @0, @100, Dxl1, false);
	DrawTransition("絵窓/絵黒幕", 1500, 500, 0, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("絵窓/絵*");
	Delete("絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I endure the pain in my whole body&, gather my strength in 
both arms&, and prop myself up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 400, @-50, @0, Dxl1, true);
	Wait(100);
	Move("絵背景", 100, @50, @0, Dxl1, true);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 500, 0, 15, 0, 0, 500, Dxl1, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I stagger and almost fall again&, but I manage to somehow 
stay standing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000040a01">
"It hurts&.&.&. but&.&.&. how did it turn out&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I press my forehead with one hand and try to arrange my 
confused memories&.

It must have&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	Fade("絵色黒", 0, 0, null, true);

	CreateTextureEX("絵演背景", 100, Center, InBottom, "cg/bg/bg201021_0_ライムノイズ01.jpg");
	Fade("絵演背景", 0, 1000, null, true);
	St("C",740, @0,@0,"stウサギ頭_通常_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I was suddenly dragged into Rhyme during a delivery&, and 
some weird rabbit head&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵演*");
	DeleteSt("C", 0,true);
	CreateTextureSP("絵背景霞", 105, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
	CreateTextureSP("絵背景", 110, Center, InBottom, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
//	CreateTextureSP("絵下背景", 100, Center, -190, "cg/bg/m/bg102031_1_平凡前通り_m.jpg");
	SetShade("絵背景霞", MEDIUM);

	Fade("絵色黒", 0, 300, null, true);

	Move("絵背景", 0, @0, @100, Dxl1, true);
	Move("絵背景霞", 0, @0, @100, Dxl1, true);


	EfRecoIn2(400);

	Wait(500);


	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背*", 3000, @0, -160, AxlDxl, false);
	FadeDelete("絵色黒", 1000, null, false);
	Fade("絵背景", 3000, 0, Axl3, false);
	Wait(3500);
	Fade("絵背景", 500, 1000, null, true);
	Delete("絵背景霞");
	Wait(500);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000060a01">
"&.&.&.I'm in front of the shop?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	SoundPlay("@dm006",0,450,true);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I've seen it every day so I can't be wrong&.

I&.&.&. am standing in front of Heibon&.

But why? 
I should have gone out for a delivery&.&.&.

When I look around&, I see a lump of blue fur lying on the 
ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000070a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵画像", 1000, Center, Middle, "cg/ev/ev004犬蓮起動.jpg");
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
	Fade("絵画像", 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I run up to him immediately and embrace him&. 
There's no reaction&.

I push Ren's head lightly and try calling him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000080a01">
"Ren&, hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(1000);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵画像弐", 1005, Center, Middle, "cg/ev/ev004犬蓮起動a.jpg");
	Fade("絵画像弐", 300, 1000, Dxl1, true);

	Delete("絵画像");

	Wait(500);

//	Fw("fwAM蓮_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000090a06">
"&.&.&.Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
After a short pause&, Ren opens his eyes&.

I feel relieved from the bottom of my heart after seeing 
him safe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000100a01">
"Are you okay?"

//{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000110a06">
"There are no large problems in particular&."

//{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000120a01">
"Really? You're not broken anywhere?"

//{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000130a06">
"Some of the data is damaged&."

//{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000140a01">
"Isn't that enough of a problem?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Ren should also have received damage in Rhyme from that 
rabbit headed guy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se人体_動作_衣擦れ01");
//	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵画像弐", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000150a01">
"I'll examine you once we get home&, okay?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000160a06">
"To be on the safe side&, please do&."

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000170a01">
"Yeah&. It even feels like some of the data in my brain's
 damaged&.&.&."

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000180a01">
"I remember fighting with that rabbit head&, but how did it
 turn out?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000190a06">
"My data from then on is also damaged&."

{FwPro("fw蒼葉_通常_worry3",2000,"fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000200a01">
"I see&.&.&. Wait a minute&, I'll try to remember&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, AxlDxl, "cg/data/slide_05_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I endure the headache&, close my eyes&, and search my 
memory&.

But the more I try to remember&, the more it feels like the memories go farther away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawDelete("絵色黒", 500, 100, Dxl1, "slide_05_00_0", true);

//	Wait(500);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000210a01">
"&.&.&.It's useless&. I can't remember anything&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000220a06">
"There's nothing we can do about it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000230a01">
"Really? Why?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000240a06">
"If the average man's storage capacity is assumed to be
 one-hundred&, Aoba's capacity would be&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_fake",3050,"fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000250a01">
"Are we really having this conversation right now?
 &.&.&.Ah&.&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000260a06">
"Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5001);
	//CreatePlainSP("絵板写弐", 5000);
	CreateTextureSP("絵板写弐",5000,0,0,"cg/bg/bg102031_1_平凡前通り.jpg");
	Zoom("絵板写弐",0,1005,1005,null,false);
	Request("絵板写弐",Smoothing);
	DrawEffect("絵板写弐", 0, "Ripple", 100, 100, null);
//	DrawEffect("絵下背景", 0, "Ripple", 100, 100, null);
	FadeDelete("絵板写", 1000, null, true);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000270a01">
"Hu&.&.&. huh? I'm&, getting kinda dizzy&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000280a01">
"&.&.&.Ren&, you&.&.&. since when did you have eight legs&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：蒼葉、どさっと倒れる

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorEX("絵窓/絵色黒", 5000, "000000");
//	CreatePlainSP("絵板写弐", 100);

//	Move("絵下背景", 300, @0, @-70, Axl3, false);
//	Wait(100);

//※ＳＥ：地面に倒れる
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵窓/絵色黒", 0, 1000, null, false);
	DrawTransition("絵窓/絵色黒", 300, 0, 700, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
//	Delete("絵板写");
	Shake("絵下背景", 200, 0, 10, 0, 0, 500, Dxl1, true);


//	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000290a06">
"Aoba!"

//{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/1000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
What is this&.&.&.?

Everything in front of me is spinning&.&.&.

Where's the ground&.&.&.? What&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：蓮_足音_走り去る（蓮、ててててっと遠ざかっていく）

//	Fw("fwAM蓮_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm02/1000310a06">
"Wait here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Ren runs off somewhere&.

I watch him as he leaves&. It looks like there are three of him&, and I unconsciously laugh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 1000, 700, 1000, 100, Dxl1, "cg/data/slide_02_00_0.png", true);
	Delete("絵下背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Haha&, that's strange&.&.&.

Ren has three heads&.&.&.

&.&.&.My consciousness broke off there&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//※次ファイル["dm0220.nss"]

}
