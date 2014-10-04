//<continuation number="130">
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


scene dm2130.nss_MAIN
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
	$GameName = "dm2130sl.nss";

}


scene dm2130.nss
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

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The next morning comes&.

This time when I wake up&, I feel pretty refreshed&.

It's probably because I slept in a real bed and had a 
proper night's sleep&.

My headache's also completely gone&. 

I get up from the bed and leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//cono「演出：BGM後ほど調整」
	SoundPlay("@dm002",0,450,true);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,500,0,1000,null,false);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(500,true);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I walk down the hallway into the living room&. I feel like 
having a bit of coffee&, so I head to the bar counter&.

I take two mugs from the shelf and put instant coffee in 
them&.

I make some for Noiz too&, planning to take it to his room&.
I'll also apologize for yesterday&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,300,0,1000,null,false);
}
Wondering how to go about it&, I continue preparing the
beverage until a sound from the hallway stops me&.

&.&.&.It's Noiz&.

For whatever reason&, I suddenly become very nervous and 
stare at the hot water poured into the cups instead of 
looking up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Noiz is coming over here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000010a01">
"&.&.&.Morning&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000020a03">
"Morning&."

{
	DeleteAllSt(200,true);
}
&.&.&.He answered me&.
I'm a little relieved&.

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
Noiz sits on the sofa and I bring over a cup of coffee to  him&.

{
	CreateSE("SE01","se物体_グラス_置く01");
	MusicStart("SE01",0,400,0,1000,null,false);
}
I place it on the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000030a01">
"I made some coffee&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000040a03">
"Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
His responses are surprisingly normal&.
&.&.&.What a relief&.

At any rate&, he doesn't seem like he's angry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000050a01">
"&.&.&.You know&, about yesterday&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Trying to break the tension&, I begin to apologize&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//cono「演出：完成SE来てから確認」
	CreateSE("SE01","se擬音_水_はねる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000060a03">
"Tch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000070a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Noiz&, who took the cup and put it to his mouth&, suddenly 
jerks back in surprise&.

He presses his mouth with his hand&.
A burn?

{
	CreateSE("SE01","se擬音_水_蛇口01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵背景100", 100, -530, -472, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 500, -632, -472, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

}
I return to the bar counter in a hurry and walk back with 
a cup full of water and a box of napkins&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000080a01">
"Sorry&, was it hot? Here&, have some water&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000090a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000100a01">
"Were you holding it even though it was hot? Are you okay?"

{
	Fw("fwノイズ_通常_angry2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000110a03">
"&.&.&.It's no big deal&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
I wipe the coffee running down Noiz's hand with a tissue&, 
and hearing his comment surprises me&.

The hand that Noiz used to hold the mug is now drenched in the spilled coffee&.

It should've been hot enough to burn him&, why's he still 
holding it so calmly&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/3000120a01">
"Your hand! Go cool down your hand! You must've burned it
 too&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/3000130a03">
"My hand? &.&.&.Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Noiz looks at his hand as if he'd only just noticed&.

His palm is already becoming red and swollen&, and it hurts to even look at it&.

If we don't cool it down soon&, then&.&.&.!

Trying to grab his arm&, I'm reminded of Noiz's rejection 
yesterday&.

Is it better to not care so much&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2130sl.nss"]

}
