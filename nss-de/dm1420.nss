//<continuation number="80">
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


scene dm1420.nss_MAIN
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
	#ev142幼少紅雀と刺青=true;

	#bg202031_3_暴露紅雀実家前外観=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1430.nss";

}


scene dm1420.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 18000);

	//OnBG(10,"bg503011_1_紅雀自宅紅雀自室");
	//FadeBG(0,true);

	//FadeDelete("上背景", 0 null, true);

	TextBoxDelete(0);

//※白い光がぶわっと全てを包み込む
	CreateColorEXadd("絵白幕", 18900, "FFFFFF");
	Fade("絵白幕", 0, 500, null, true);
	DrawTransition("絵白幕", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Wait(100);
	Fade("絵白幕", 1000, 1000, Axl3, true);

	Wait(300);

	PrintBG2("上背景");
	CreateColorSPadd("絵白幕", 1000, "FFFFFF");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.Suddenly&, my vision goes white&.

Even when I close my eye&, the bright light is still just 
as painful&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※白い画面のまま

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000010a02">
"By the time you got here&.&.&. it was already too late&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SEL01","se物体_映写機_回転03");
	MusicStart("SEL01",2000,500,0,600,null,true);
	CreateSE("SEL02","se物体_映写機_回転02L");
	MusicStart("SEL02",2000,500,0,500,null,true);

	CreateTextureSPmul("絵背景", 990, Center, Middle, "cg/data/circle_02_00_1.png");
	CreateMovieEXover("絵演動画効果", 980, Center, Middle, true, true, "dx/mvストロボ.ngs");
	Fade("絵演動画効果", 0, 300, null, true);
	Zoom("絵演動画効果", 0, 3200, 2400, null, true);

	CreateTextureSP("絵演背景一", 110, Center, Middle, "cg/bg/bg202021_3_暴露紅雀実家小部屋.jpg");
	CreateTextureSP("絵演背景二", 109, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間.jpg");
	CreateTextureSP("絵演背景三", 108, Center, Middle, "cg/bg/bg202031_3_暴露紅雀実家前外観.jpg");
	CreateTextureSP("絵演背景四", 107, Center, Middle, "cg/ev/ev142幼少紅雀と刺青.jpg");

	SetTone("絵演背景*", Sepia);

//※白い光が消える
	FadeDelete("絵白幕", 1000, null, true);
	Wait(300);

	FadeDelete("絵演背景一", 200, null, false);
	Shake("絵演背景一", 200, 0, 20, 0, 0, 300, null, false);
	Shake("絵演背景二", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

	FadeDelete("絵演背景二", 200, null, false);
	Shake("絵演背景二", 200, 0, 20, 0, 0, 300, null, false);
	Shake("絵演背景三", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The light fades away and images start to reflect in my 
head&.

It slowly turns into something like a silent movie&.

By a large mansion&, I see his mother is leading a young 
Koujaku by the hand&. And a man that looks like a yakuza 
boss&.

And standing next to them&.&.&. is a younger Ryuuhou&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵演背景三", 200, null, false);
	Shake("絵演背景三", 200, 0, 20, 0, 0, 300, null, false);
	Shake("絵演背景四", 200, 0, 20, 0, 0, 300, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The room with the futon and glowing candles&.
Sprwaled on the floor is Koujaku&, with Ryuuhou etching in 
his tattoo&.

Koujaku's tattoo is warped&, and he claws at the tatami mat&.
He must be trying to endure the pain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 2000, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 200, 1000, null, true);

	Wait(1000);
	Delete("絵演*");
	CreateColorSP("絵色黒下", 50, "000000");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/anime/Left/blood_C_6.png");
	SetShade("絵演背景", HEAVY);

	CreateTextureSP("絵演紅雀刀", 90, Center, Middle, "cg/ef/ef紅雀之刀_幼少.png");
	SetTone("絵演紅雀刀", Sepia);
	Move("絵演紅雀刀", 0, @0, @-144, null, true);

	CreateTextureEX("絵演血溜五", 80, Center, Middle, "cg/ef/efx03血液垂れる01e.png");
	SetVertex("絵演血溜五", 467, 478);
	CreateTextureEX("絵演血溜四", 80, Center, Middle, "cg/ef/efx03血液垂れる01d.png");
	SetVertex("絵演血溜四", 189, 462);
	CreateTextureEX("絵演血溜三", 80, Center, Middle, "cg/ef/efx03血液垂れる01c.png");
	SetVertex("絵演血溜三", 638, 450);
	CreateTextureEX("絵演血溜二", 80, Center, Middle, "cg/ef/efx03血液垂れる01b.png");
	SetVertex("絵演血溜二", 560, 520);
	CreateTextureEX("絵演血溜一", 80, Center, Middle, "cg/ef/efx03血液垂れる01a.png");
	SetVertex("絵演血溜一", 240, 486);

	CreateSE("Proc_dm1420_01ActSE01","se擬音_水_はねる01");
	MusicStartSet("Proc_dm1420_01ActSE01",600,0,800,null,false);

	Fade("絵演血溜五", 0, 400, null, true);

	Request("絵演血溜*", Smoothing);
	Move("絵演血溜*", 0, @0, @-144, null, true);

	FadeDelete("絵色黒", 1000, null, true);

	CreateProcessEX("プロセス", "Proc_dm1420_01Act");
	Request("プロセス", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
As the view goes black&, another display appears&.

A mass of people are laying on the floor&, and only one 
person&, Koujaku&, holding his blade&, stands&.

Around him&.&.&. is a sea of blood&.
Koujaku is covered with wounds and blood&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000020a02">
"That was the day the tattoo was completed&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
Again&, Koujaku's voice appears from nowhere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000030a02">
"The pain from the needles grew stronger and stronger&, and
 I couldn't take it anymore and lost conciousness&. So when
 I woke up&.&.&. all I could see was a sea of blood&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000040a02">
"The whole family was on the ground&, and I had not a clue
 what had just happened&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000050a02">
"The thing I couldn't believe&.&.&. was that my mother was
 there&. I looked at my hands&, and then my sword; it was all covered in blood&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000060a02">
"I had gone into a rage&, and hurt everyone&. Even though I
 was only some kid with a blade&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000070a02">
"Everyone there was covered in wounds&, and barely holding
 on&. My mother too&. But&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/2000080a02">
"My mother lost consciousness and never woke up&. She died&.&.
 and it was all my fault&. I killed her&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(500);

	Request("プロセス", Stop);
	Delete("プロセス");

//※次ファイル["dm1430.nss"]

}
