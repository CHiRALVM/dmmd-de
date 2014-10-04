//<continuation number="180">
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


scene dm0790.nss_MAIN
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

	#bg201012_0_ライムパブリックフィールド=true;
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0800.nss";

}


scene dm0790.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintGO("上背景", 30000);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1500, 0, null);

	FadeDelete("上背景", 1000, null, true);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(1000,true);

	St("L",730, @-45,@3,"stノイズ_通常_normal");
	St("C",740, @8,@0,"st紅雀_通常_normal");
	St("R",730, @45,@8,"stクリア_通常マスクあり_normal");
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I enter the living room&, Koujaku&, Noiz&, and Clear are all sitting at the dinner table&.

Mink is sitting on the couch in the other room by himself&.

{
	DeleteAllSt(200,true);
}
On the table is food that Granny has lined up&, and my 
stomach starts to rumble&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm07/9000010a02">
"Finally up&, Aoba?"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm07/9000020a04">
"Master!"

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm07/9000030b16">
"Yo&, Ren&. I came to visit&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/9000040a06">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm07/9000050a02">
"How are you doing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000060a01">
"Okay&. I'm not feeling too great&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_sad");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm07/9000070a02">
"Of course you wouldn't&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Koujaku looks down and lets out a small sigh&.

The atmosphere around everyone here gives me the feeling 
that they're all tired&.

Well of course they'd be&.&.&.

Something unbelievable happened back there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000080a01">
"How's Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_think");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm07/9000090a02">
"Mizuki and the rest of the Dry Juice members are all in
 the hospital&. Seems like none of them have woken up yet&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000100a01">
"I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Back then&.&.&.

I confronted Mizuki as he was about to load Granny into 
that car&.

I don't know if what happened was a dream or reality&, but 
I realize now that both Mizuki and I fell down&.

Did something happen to us?

There's only one thing that I clearly remember&.

And that&.&.&. is my past&.

I had forgotten all about it until now&, but it suddenly 
came back to me&.

{	SetVolumeEX("@dm012", 2000, 0, null);}
The fact that I had been participating in Rhyme a long 
time ago&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：ばばばっと過去の映像が流れる
//覇：過去の蒼葉一枚しかないので、ライムまわりの汎用素材を撒いておきます。
	EfRecoIn1(10000,100);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/bg/bg201012_0_ライムパブリックフィールド.jpg");

	EfRecoIn2(100);

	Wait(100);

	EfRecoIn1(10000,100);

	CreateTextureSP("絵効果背景", 1050, Center, -300, "cg/ev/ev010卯水.jpg");

	EfRecoIn2(100);

	Wait(100);

	SoundPlay("@dm006",0,450,true);

	EfRecoIn1(10000,100);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev950蓮、武器発現.jpg");

	EfRecoIn2(100);

	Wait(100);

	EfRecoIn1(10000,100);

	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev010ライムの様子.jpg");

	EfRecoIn2(100);

	Wait(100);

	EfRecoIn1(10000,300);

	CreateTextureSP("絵効果背景", 1050, 0, 0, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭.jpg");

//	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");

	EfRecoIn2(300);

	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Thats why I somehow knew how to fight Noiz in that 
Drive-By&.

But&.&.&. why did I forget that?

Not that I vaguely knew how to fight back then&, but the 
fact that I was participating in Rhyme?

Was there a point in time when I just forgot about it all?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm006", 1000, 0, null);

	EfRecoOut1(100);

	Delete("絵効果*");
	EfRecoIn2(400);

	Wait(500);

	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/9000110b03">
"So you're awake&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000120a01">
"Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
When I look to Granny&, she softly grunts and places a 
plate on the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000130a01">
"I'll help&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/9000140b03">
"I'm almost done&. You hurry up and sit down too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000150a01">
"Okay&, I got it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm013",0,450,true);

	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
I obediently take an empty seat&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000160a01">
"Granny&, are you sure you're okay now?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm07/9000170b03">
"Worry about yourself first&. You're the one who fell flat
 on your face&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/9000180a01">
"&.&.&.&.&."
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
I listen and don't say another thing&.

I saved Granny&, but in the end I just made her even more 
worried&.

Feeling awkward&, I take my plate&.

At first I just poked it with my chopsticks&, feeling 
depressed&, but once I took a bite that all flew away&.

It's delicious&.
Suddenly my appetite grows larger&.

{
	CreateSE("SE01","se環境_動作_食事01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Wait(800);
}
Everyone else couldn't stop eating once they tasted her 
food either&, and in a flash all their plates were in the 
air&, ready for more&.

{
	SetVolumeEX("@SE*", 2000, 0, null);
}

Clear once again must've eaten at the speed of sound&, and  Mink didn't come to the table until the last minute&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0800.nss"]

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

	Wait(1000);

}
