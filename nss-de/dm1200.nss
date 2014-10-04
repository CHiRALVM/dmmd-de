//<continuation number="430">
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


scene dm1200.nss_MAIN
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
	#ev120幼少時の紅雀と蒼葉=true;
	#bg501011_1_過去旧住民区蒼葉宅近所の公園=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1210.nss";

}


scene dm1200.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg501011_1_過去旧住民区蒼葉宅近所の公園");
	FadeBG(0,true);

	CreateColorSPadd("絵色白", 5000, "WHITE");

	FadeDelete("上背景", 1000, null, true);

	Wait(300);

	FadeDelete("絵色白", 2000, null, true);

	SoundPlay("@dm014",1000,450,true);

	Wait(500);

//あきゅん「演出：回想」

//※過去・蒼葉宅の近所の公園

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000010c01">
"Hck&, ugh&, hck&.&.&.Mmf&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000020c01">
"Uuuungh&, uuf&.&.&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000030c01">
"Granny&.&.&. When are you coming hooome&.&.&. Ungh&.&.&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000040c01">
"You said you'd be here at five&.&.&. Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreatePlainSP("絵板写", 5000);
//
//	CreateTextureSP("絵背景", 100, -100, Middle, "cg/bg/l/bg501011_1_過去旧住民区蒼葉宅近所の公園_l.jpg");
//	Move("絵背景", 0, @0, @-100, Dxl1, true);

//※ＳＥ：ガサッと音がしてたったったと子供紅雀が走ってくる
	CreateSE("SE01","se物体_草_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	FadeDelete("絵板写", 500, null, true);

	Wait(1500);
	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1500,null,false);
	Wait(1500);
	SetVolumeEX("SE*", 500, 0, null);
	Wait(500);
//	FadeDelete("絵背景", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000050c02">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000060c01">
"&.&.&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000070c02">
"You were here? I looked all over for you&. &.&.&.Aoba&, your
 eyes are red&. Were you crying?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000080c01">
"&.&.&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000090c02">
"&.&.&.Hm?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000100c01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000110c02">
"It's okay&, just hold on&. I'll wait here with you&. Tell
 me&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000120c01">
"&.&.&.I-"

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000130c02">
"Hm?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000140c01">
"&.&.&.I was-wasn't- crying&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000150c02">
"&.&.&.Haha&, liar&. You're crying right now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000160c01">
"No I'm not!"

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000170c02">
"Okay&, okay&, you're not&. So&, did something happen?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000180c01">
"&.&.&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000190c02">
"Hm?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000200c01">
"&.&.&.Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000210c02">
"Liar&. If you don't tell me&, I'll tell Tae-san&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000220c01">
"&.&.&.&.&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000230c01">
"&.&.&.Granny didn't come home&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000240c02">
"Tae-san?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000250c01">
"She said she'd be here by five&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000260c02">
"It's&.&.&. already seven&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000270c01">
"Ungh&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000280c02">
"It's going to be okay! She must be late because she's busy at work&. She'll be here soon&, so don't cry&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000290c01">
"I'm not crying!"

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000300c02">
"Yeah&, yeah&, you weren't crying&. Play with me until Tae-san gets here&, okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000310c01">
"&.&.&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000320c02">
"Time is going to fly by&, okay?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000330c01">
"&.&.&.Okay&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000340c02">
"Here&, give me your hand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateTextureEX("絵ＥＶ大", 1200, Center, Middle, "cg/ev/l/ev120幼少時の紅雀と蒼葉_l.jpg");

	Move("絵ＥＶ大", 0, @-100, @-100, null, true);

//※手を握る
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,1000,null,false);

	Move("絵ＥＶ大", 1500, @0, @-100, Dxl1, false);
	Fade("絵ＥＶ大", 1500, 1000, null, true);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev120幼少時の紅雀と蒼葉.jpg");

	Wait(500);

	FadeDelete("絵ＥＶ大", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000350c02">
"Don't give in&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000360c01">
"&.&.&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000370c02">
"When you're lonely or sad&, don't give in&. We need to be
 strong so we can protect Mom and Tae-san&."

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000380c01">
"Yeah&.&.&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000390c02">
"Right&, let's have a contest to see who can get the highest on the swings!"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000400c01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000410c02">
"Yeah?"

//【蒼葉（子供）】
<voice name="蒼葉（子供）" class="蒼葉（子供）" src="voice/dm12/0000420c01">
"Koujaku&, don't give in&.&.&. either&."

//【紅雀（子供）】
<voice name="紅雀（子供）" class="紅雀（子供）" src="voice/dm12/0000430c02">
"Yeah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：２人でたったったと走っていく足音
	CreateSE("SE01","se人体_足音_走り去る子供01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵ＥＶ", 1000, null, true);

	Wait(1000);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);

	Wait(2000);

//※次ファイル["dm1210.nss"]

}
